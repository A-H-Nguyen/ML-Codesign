package require json
namespace eval hw_emu_common_util {
  
  #this proc searches key in adict array and returns the value. If key doesnt exist, returns default value
  proc dict_get_default {adict key default} {
    if { [dict exists $adict $key] } {
      return [dict get $adict $key]
    }
    return $default
  }
  #end of dict_get_default

  proc gen_vimage_inputs { config_info kernelDebug } {
    set scDebugLevel [dict get $config_info sc_debug_level]
    set is_versal [dict get $config_info is_versal]
    set is_embedded_platform [dict get $config_info is_embedded_platform] 
    
    if { !$is_embedded_platform} {
      if { $is_versal eq "true" } {
        # only for versal DC (VCK5000) , this flow is used.
        set launch_emulator_file "launch_hw_emu.sh"
        set out  [open $launch_emulator_file w]
        puts $out "#!/bin/bash -f"
        puts $out "export XTLM_LOG_STATE=$scDebugLevel"
        puts $out "touch launch_emu.log"
        puts $out "  echo \" emulation_data is passed from the XRT. Making use of those args in launching the emulation\" >> launch_emu.log"
        puts $out "  echo \" launching Co-simulation of Qemu and XSIM using launch_emulator: Args are $*\" >> launch_emu.log"
        puts $out "  launch_emulator -device-family versal -pl-sim-dir . $* | tee hw_emulator.log"
        close $out    
      } else {
        # for non-versal dc flows like u200, u250
        set launch_emulator_file "launch_hw_emu.sh"
        set out  [open $launch_emulator_file w]
        puts $out "#!/bin/bash -f"
        puts $out "export XTLM_LOG_STATE=$scDebugLevel"
        puts $out "echo \" running simulate.sh $*\""
        puts $out "./simulate.sh $* >output.txt 2>&1"
        close $out
      }
    } else {
      #for embedded platforms launch_hw_emulator.sh is created by v++ -p 
    }
    
    # Created a txt file when user opted for -g and require to get the WDB file and we are using this file at runtime 
    # in HW_EMU driver and set appropriate ENV variables
    set plKernelDbg [dict get $config_info plKernelDbg]
    if { [string compare -nocase $kernelDebug "true"] == 0 && [string compare -nocase $plKernelDbg "wdb"] == 0 } {
      set waveform_debug_file "waveform_debug_enable.txt"
      set out  [open $waveform_debug_file w]
      puts $out "Waveform debug enabled"
      close $out
    }
  }
 
  #following proc caches addressing before deleting the bd_objects. update_addressing proc uses same -this information to addressing again.
  proc get_addressing { } {
    set addrSegs [dict create]
    set kernel_segs [get_bd_addr_segs -of_objects [get_bd_addr_spaces /S_AXI]]
    foreach kernel_seg $kernel_segs { 
      set slave_seg [get_bd_addr_segs -of_objects $kernel_seg]
      if { ![dict exists $addrSegs $slave_seg] } {
        dict set addrSegs $slave_seg [list [get_property offset $kernel_seg] [get_property range $kernel_seg]]
      }
    }
    return $addrSegs
  } 
  #end of get_addressing

  #following proc re-creates addressing from saved addrSegs.
  proc update_addressing {addrSegs controlInterface intfOffset} {
    set index1 0
    foreach slave_seg [dict keys $addrSegs] {
      lassign [dict get $addrSegs $slave_seg] offset range
      set finaloffset [format 0x%x [expr {$offset + $intfOffset}]]
      puts "create_bd_addr_seg -range $range -offset $finaloffset [get_bd_addr_spaces $controlInterface] $slave_seg SEG_OCL_REGION_0_reg$index1"
      create_bd_addr_seg -range $range -offset $finaloffset [get_bd_addr_spaces $controlInterface] $slave_seg SEG_OCL_REGION_0_reg$index1
      incr index1
    } 
  }
  #end of update_addressing

  #this proc creates new simulation script by replacing xsimk binary call directly.
  proc writeNewSimulateScript { replaceXSimCall bdName } {
    set oldFilename "simulate.sh"
    set newFileName "simulate_sysemulation.sh"
    set in  [open $oldFilename r]
    set out [open $newFileName w]
    while {[gets $in line] != -1} {
      if { $replaceXSimCall } {
        regsub -all "xsim.*simulate.log" $line "./xsim.dir/${bdName}_wrapper_behav/axsim" line
      }
      puts $out $line
    }
    file attributes  simulate_sysemulation.sh -permissions rwxrwxrwx
    file rename -force  simulate_sysemulation.sh simulate.sh
    close $in
    close $out
  }
  #end of writeNewSimulateScript
  
  # This proc creates new simulate_wrapper tcl file for questa simulator
  proc writeQuestaWrapperTcl { isNewXsa is_new_flow bdName simRuntime vsim_more_options } {
  
    #set oldFilename "${bdName}_wrapper_simulate.do"
    set oldFilename ""
    if {$isNewXsa && $is_new_flow} {
      set oldFilename "${bdName}_simulate.do"
    } else {
      set oldFilename "${bdName}_wrapper_simulate.do"
    }
    set in [open $oldFilename w]
    
    if {$simRuntime eq "all"} {
      set runtime "-all"
    } else {
      set runtime $simRuntime
    }

    set statsAllStr "-stats=all"

    if {[string first $statsAllStr $vsim_more_options ] == -1} {
      set statsAllStr ""
    }

    puts $in "set xv_lib_path \"$::env(XILINX_VIVADO)/lib/lnx64.o/Default:$::env(XILINX_VIVADO)/lib/lnx64.o\""
    puts $in "vsim $statsAllStr -lib xil_defaultlib ${bdName}_wrapper_opt"
    puts $in "set NumericStdNoWarnings 1"
    puts $in "set StdArithNoWarnings 1"
    
    puts $in "if { \[info exists ::env(USER_PRE_SIM_SCRIPT) \] } {"
    puts $in "  if {\[catch {source \$::env(USER_PRE_SIM_SCRIPT)} msg\]} {puts \$msg} "
    puts $in "}"

    puts $in "do {${bdName}_wrapper_wave.do}"

    puts $in "view wave"
    puts $in "view structure"
    puts $in "view signals"

    puts $in "do {${bdName}_wrapper.udo}"

    puts $in "if { \[info exists ::env(VITIS_LAUNCH_WAVEFORM_GUI) \] } {"
    puts $in "  run 1ns"
    puts $in "} else {"
    puts $in "  run $runtime"
    puts $in "}"

    puts $in "if { \[info exists ::env(USER_POST_SIM_SCRIPT) \] } {"
    puts $in "  if {\[catch {source \$::env(USER_POST_SIM_SCRIPT)} msg\]} {puts \$msg} "
    puts $in "} "

    puts $in "if { \[info exists ::env(VITIS_LAUNCH_WAVEFORM_BATCH) \] } {"
    puts $in "  quit -force"
    puts $in "}"
    close $in
  }
  # End of proc writeQuestaWrapperTcl
  
  # This proc creates new simulate_wrapper tcl file for VCS simulator
  proc writeVCSWrapperTcl {isNewXsa is_new_flow bdName simRuntime } {
   
    #set oldFilename "${bdName}_wrapper_simulate.do"
    set oldFilename ""
    if {$isNewXsa && $is_new_flow} {
      set oldFilename "${bdName}_simulate.do"
    } else {
      set oldFilename "${bdName}_wrapper_simulate.do"
    }
    set in [open $oldFilename w]
    
    if {$simRuntime eq "all"} {
      set runtime ""
    } else {
      set runtime $simRuntime
    }

    puts $in "if { \[info exists ::env(USER_PRE_SIM_SCRIPT) \] } {"
    puts $in "  if {\[catch {source \$::env(USER_PRE_SIM_SCRIPT)} msg\]} {puts \$msg}"
    puts $in "}"
    
    puts $in "add_wave /${bdName}_wrapper/*"

    puts $in "if { \[info exists ::env(VITIS_LAUNCH_WAVEFORM_GUI) \] } {"
    puts $in "  run 1ns"
    puts $in "} else {"
    puts $in "  run $runtime"
    puts $in "}"

    puts $in "if { \[info exists ::env(USER_POST_SIM_SCRIPT) \] } {"
    puts $in "  if {\[catch {source \$::env(USER_POST_SIM_SCRIPT)} msg\]} {puts \$msg}"
    puts $in "}"

    puts $in "if { \[info exists ::env(VITIS_LAUNCH_WAVEFORM_BATCH) \] } {"
    puts $in "  quit"
    puts $in "}"
    close $in
  }
  # End of proc writeVCSWrapperTcl
  
  
  # This proc creates new simulate_wrapper tcl file for xcelium simulator
  proc writeXceliumWrapperTcl {isNewXsa is_new_flow bdName simRuntime } {
  
    set oldFilename ""
    if {$isNewXsa && $is_new_flow} {
      set oldFilename "${bdName}_simulate.do"
    } else {
      set oldFilename "${bdName}_wrapper_simulate.do"
    }
    #set oldFilename "${bdName}_wrapper_simulate.do"
    set in [open $oldFilename w]
    
    if {$simRuntime eq "all"} {
      set runtime ""
    } else {
      set runtime $simRuntime
    }
    
    puts $in "set pack_assert_off {numeric_std std_logic_arith}"

    puts $in "if { \[info exists ::env(USER_PRE_SIM_SCRIPT) \] } {"
    puts $in "  if {\[catch {source \$::env(USER_PRE_SIM_SCRIPT)} msg\]} {puts \$msg}"
    puts $in "}"

    puts $in "database -open waves -into waves.shm -default"
    puts $in "catch {probe -create -shm -all -variables -depth 1} msg"

    puts $in "if { \[info exists ::env(VITIS_LAUNCH_WAVEFORM_GUI) \] } {"
    puts $in "  run 1ns"
    puts $in "} else {"
    puts $in "  run $runtime"
    puts $in "}"

    puts $in "if { \[info exists ::env(USER_POST_SIM_SCRIPT) \] } {"
    puts $in "  if {\[catch {source \$::env(USER_POST_SIM_SCRIPT)} msg\]} {puts \$msg}"
    puts $in "}"

    puts $in "if { \[info exists ::env(VITIS_LAUNCH_WAVEFORM_BATCH) \] } {"
    puts $in "  exit"
    puts $in "}"
    close $in
  }
  # End of proc writeXceliumWrapperTcl
  
  # Creates the tcl files which sources the pre and post sim scripts
  proc write_pre_post_sim_tool_scripts { vitis_region_path } {

    set preFileName "pre_sim_tool_scripts.tcl"
    set preFileStream [open $preFileName w]

    puts $preFileStream "if { \[file exists preprocess_profile.tcl\] } {"
    puts $preFileStream "  if { \[catch {source -notrace preprocess_profile.tcl} msg\] } {"
    puts $preFileStream "    puts \$msg "
    puts $preFileStream "  }"
    puts $preFileStream "}"
 
    puts $preFileStream "if { \[info exists ::env(XILINX_SC_HW_EMU)\] } {"
    puts $preFileStream "  source \$::env(XILINX_VITIS)/data/system_compiler/examples/sc_hw_emu_pre_xsim.tcl"
    puts $preFileStream "}"
    close $preFileStream
    
    set postFileName "post_sim_tool_scripts.tcl"
    set postFileStream [open $postFileName w]

    puts $postFileStream "if { \[file exists profile.tcl\] } {"
    puts $postFileStream "  if { \[catch {source -notrace profile.tcl } msg\] } {"
    puts $postFileStream "    puts \$msg"
    puts $postFileStream "  }"
    puts $postFileStream "}"

    puts $postFileStream "if { \[info exists ::env(XILINX_SC_HW_EMU)\] } {"
    puts $postFileStream "  source \$::env(XILINX_VITIS)/data/system_compiler/examples/sc_hw_emu_post_xsim.tcl"
    puts $postFileStream "}"
    close $postFileStream

    set filename "vitis_params.tcl"
    set in [open $filename w]
    if {$vitis_region_path != ""} {
      puts $in "set VITIS_DYNAMIC_REGION_HW_EMU_PATH $vitis_region_path"
    }
    close $in
  }

  # This proc creates new openclDesign.tcl file.
  proc writeNewOpenClScript {isNewXsa is_new_flow debugLevel bdName simRuntime kernelDebug plKernelDbg isDisableProfileSrc} {
    set oldFilename ""
    if {$isNewXsa && $is_new_flow} {
      set oldFilename "${bdName}.tcl"
    } else {
      set oldFilename "${bdName}_wrapper.tcl"
    }
    
    set in  [open $oldFilename w]
    if { [string compare -nocase $plKernelDbg "wdb"] == 0 } {
      puts $in "if { \[info exists ::env(USER_PRE_SIM_SCRIPT) \] } {"
      puts $in "  if {\[catch {source \$::env(USER_PRE_SIM_SCRIPT)} msg\]} {puts \$msg}"
      puts $in "}"
    }
    
    if { [string compare -nocase $kernelDebug "true"] == 0 } {
      puts $in "if { \[info exists ::env(VITIS_WAVEFORM) \] } {"
      puts $in "  if {\[file exists \$::env(VITIS_WAVEFORM)\] == 1} {"
      puts $in "    open_wave_config \$::env(VITIS_WAVEFORM)"
      puts $in "  }"
      puts $in "}"
    }
    
    if { !$isDisableProfileSrc } {
      puts $in "if { \[file exists preprocess_profile.tcl\] } {"
      puts $in "  if {\[catch {source -notrace preprocess_profile.tcl} msg\]} {puts \$msg}"
      puts $in "}"
    }
    
    puts $in "puts \"We are running Simulator for infinite time. Added some default signals in the waveform. You can pause simulation and add signals and then resume the simulaion again.\""
    puts $in "puts \"\""
    puts $in "puts \"Stopping at breakpoint in simulator also stops the host code execution\""
    puts $in "puts \"\""
    puts $in "if { \[info exists ::env(VITIS_LAUNCH_WAVEFORM_GUI) \] } {"
    puts $in "  run 1ns"
    puts $in "} else {"
    puts $in "  run $simRuntime"
    puts $in "}"
    
    if { [string compare -nocase $debugLevel "BATCH"] == 0 } {
      if { [string compare -nocase $plKernelDbg "wdb"] == 0 } {
        puts $in "  if { \[info exists ::env(USER_POST_SIM_SCRIPT) \] } {"
        puts $in "    if {\[catch {source \$::env(USER_POST_SIM_SCRIPT)} msg\]} {puts \$msg}"
        puts $in "  }"
      }
      puts $in "  quit"
    }

    if { !$isDisableProfileSrc } {
      puts $in "if { \[file exists profile.tcl\] } {"
      puts $in "  if {\[catch {source -notrace profile.tcl } msg\]} {puts \$msg}"
      puts $in "}"
    }

    puts $in "if { \[info exists ::env(VITIS_LAUNCH_WAVEFORM_BATCH) \] } {"
    if { [string compare -nocase $plKernelDbg "wdb"] == 0 } {
      puts $in "  if { \[info exists ::env(USER_POST_SIM_SCRIPT) \] } {"
      puts $in "    if {\[catch {source \$::env(USER_POST_SIM_SCRIPT)} msg\]} {puts \$msg}"
      puts $in "  }"
    }
    puts $in "  quit"
    puts $in "}"

    close $in
  }
  
  proc generate_simulation_scripts {} {
    set systemTime [clock seconds]
    puts "INFO: [clock format $systemTime -format %H:%M:%S] \[HW_EMU_COMMON_UTIL\] launch_simulation -scripts_only started" 
    launch_simulation -scripts_only
    set systemTime [clock seconds]
    puts "INFO: [clock format $systemTime -format %H:%M:%S] \[HW_EMU_COMMON_UTIL\] launch_simulation -scripts_only ended" 
  }
  
  proc compile_scripts { msgCheck } {
    set systemTime [clock seconds]
    puts "INFO: [clock format $systemTime -format %H:%M:%S] \[HW_EMU_COMMON_UTIL\] compile.sh started"
    if { $msgCheck eq ""} {
      exec ./compile.sh 
    } else {
      if {[catch {rdi::run_program compile.sh} error_log]} {
        puts "Error: compilation step failed"
      }
      #if {[catch {exec ./compile.sh} msg]} {}
    }
    set systemTime [clock seconds]
    puts "INFO: [clock format $systemTime -format %H:%M:%S] \[HW_EMU_COMMON_UTIL\] compile.sh ended"
  }
  
  proc elaborate_scripts { msgCheck } {
    set systemTime [clock seconds] 
    puts "INFO: [clock format $systemTime -format %H:%M:%S] \[HW_EMU_COMMON_UTIL\] elaborate.sh started"
    if { $msgCheck eq ""} {
      exec ./elaborate.sh
    } else {
      if {[catch {rdi::run_program elaborate.sh} error_log]} {
        puts "Error: elaboration step failed"
      }
      #if {[catch {exec ./elaborate.sh} msg]} {}
    }    
    set systemTime [clock seconds]
    puts "INFO: [clock format $systemTime -format %H:%M:%S] \[HW_EMU_COMMON_UTIL\] elaborate.sh ended"
  }
  
  proc writeNewAIEScript {vpl_output_dir} {
    after 3000
    set cur_pwd [pwd]
    set default_json_str "<default_json>"
    # set default_json_replace_str "[file join $::env(XILINX_VITIS) cardano data devices 4x4.json]"
    set default_json_replace_str "4x4.json"
    cd [file join $vpl_output_dir aie_defaults]
    set oldFilename "aie.sim.config.txt"
    set newFileName "aie_sim_config_new.txt"
  
    set in  [open $oldFilename r]
    set out [open $newFileName w]
    while {[gets $in line] != -1} {
      if { [string first $default_json_str $line] != -1 } {
        regsub -all $default_json_str $line $default_json_replace_str line
      }
      puts $out $line 
    }
    file attributes  aie_sim_config_new.txt -permissions rwxrwxrwx
    file rename -force  aie_sim_config_new.txt aie_sim_config.txt
    close $in
    close $out
    cd $cur_pwd
  }
  
  proc cd_to_scripts_path {project_name activeFileset origSimulator plKernelDbg} {
    if {[string compare -nocase $origSimulator "xsim"] != 0} {
     #for 3rd party simualtors
       if { [file exists $project_name/$project_name.sim/$activeFileset/behav_waveform] } {
         cd $project_name/$project_name.sim/$activeFileset/behav_waveform/$origSimulator
       } elseif { [file exists $project_name/$project_name.sim/$activeFileset/behav] } {
         cd $project_name/$project_name.sim/$activeFileset/behav/$origSimulator
       } 
     } else {
        if {[string compare -nocase $plKernelDbg "wdb"] == 0 } {
          if { [file exists $project_name/$project_name.sim/$activeFileset/behav_waveform] } {
            cd $project_name/$project_name.sim/$activeFileset/behav_waveform/xsim
          }
        } elseif {[string compare -nocase $plKernelDbg "gdb"] == 0 } {
           if { [file exists $project_name/$project_name.sim/$activeFileset/behav_gdb] } {
             cd $project_name/$project_name.sim/$activeFileset/behav_gdb/xsim
           }
        }
     }
     set cur_pwd [pwd]
     puts "pwd $cur_pwd"
  }
  
  proc aie_env_settings { vpl_output_dir} {
    set aie_sim_config_txt $vpl_output_dir/aie_sim_config.txt
    if {[file exists $aie_sim_config_txt]} {
      set ::env(AIESIM_CONFIG) $aie_sim_config_txt
      puts "INFO:  \[HW_EMU_COMMON_UTIL\] AIESIM_CONFIG path is $aie_sim_config_txt"
    } else {
      #file copy -force [file join $::env(XILINX_VITIS) data emulation aie_defaults] $vpl_output_dir
      if {[catch {exec cp -rf [file join $::env(XILINX_VITIS) data emulation aie_defaults] $vpl_output_dir} msg]} {puts $msg} 
      writeNewAIEScript $vpl_output_dir
      set ::env(AIESIM_CONFIG) [file join $vpl_output_dir aie_defaults aie_sim_config.txt]
      puts "INFO: \[HW_EMU_COMMON_UTIL\] Using default AIESIM_CONFIG copied to $::env(AIESIM_CONFIG)."
    }  
  }
  
  proc compile_scripts_step { config_info } {
  
    set plKernelDbg            [dict get $config_info plKernelDbg]
    #set activeFileset [dict get $config_info activeFileset]
    #set project_name [dict get $config_info project_name]
    set simulator              [dict get $config_info simulator] 
    set vpl_output_dir         [dict get $config_info vpl_output_dir]
    set is_versal              [dict get $config_info is_versal] 
    set origSimulator [string tolower $simulator] 
     
     if { [dict exists $config_info emu_proj_name] } {
      set project_name [dict get $config_info emu_proj_name] 
    } else {
      set project_name [dict get $config_info synth_proj_name] 
    }
    set activeFileset [current_fileset -simset] 
    
    set cur_pwd [pwd]
    puts "pwd1 $cur_pwd"
    
    #cd $project_name/$project_name.sim/$activeFileset/behav/xsim
    cd_to_scripts_path  $project_name $activeFileset $origSimulator $plKernelDbg
    
    set cur_pwd [pwd]
    puts "pwd2 $cur_pwd"

    # CR-1103667 AIE ENV settings for riviera at compile stage itself
    if {$is_versal eq "true" && [string compare -nocase $origSimulator "riviera"] == 0 } {
     aie_env_settings $vpl_output_dir
    }
    
    if {[string compare -nocase $origSimulator "vcs"] == 0
      || [string compare -nocase $origSimulator "riviera"] == 0 } {
       set isMsgCheck 1      
       compile_scripts $isMsgCheck
     } else {
       compile_scripts ""
     }
     
    cd ../../../../../

    # CR-1103667 Unset AIE ENV settings for riviera at compile stage itself
    if {$is_versal eq "true" && [string compare -nocase $origSimulator "riviera"] == 0 } {
      unset ::env(AIESIM_CONFIG)
    }
  }

  proc elaborate_scripts_step {config_info} {
    set simulator     [dict get $config_info simulator]  
    set origSimulator [string tolower $simulator] 

    set plKernelDbg            [dict get $config_info plKernelDbg]
    set simulator              [dict get $config_info simulator] 
    set vpl_output_dir         [dict get $config_info vpl_output_dir]
    set is_versal              [dict get $config_info is_versal] 
    set origSimulator          [string tolower $simulator] 
    
    if { [dict exists $config_info emu_proj_name] } {
      set project_name [dict get $config_info emu_proj_name] 
    } else {
      set project_name [dict get $config_info synth_proj_name] 
    }
    set activeFileset [current_fileset -simset] 
    cd_to_scripts_path  $project_name $activeFileset $origSimulator $plKernelDbg
    
    if {$is_versal eq "true" } {
      aie_env_settings $vpl_output_dir
    }
    
    if {[string compare -nocase $origSimulator "vcs"] == 0 || [string compare -nocase $origSimulator "riviera"] == 0 } {
      set isMsgCheck 1      
      elaborate_scripts $isMsgCheck
    } else {
      elaborate_scripts ""
    }

    cd ../../../../../

    if {$is_versal eq "true"} {
      unset ::env(AIESIM_CONFIG)
    }
  }  

  #this proc is called from HPIKernelCompilerSystemFpga.cxx. This proc executes following operations
  #1 set the parameters 
  #2 generate simulation scripts
  #3 create new simulation scripts from original by modifying ExecStep 
  #4 execure compile and elaborate.
  # proc generate_simulation_scripts_and_compile {  debugLevel simulator clibs topBd kernelDebug } 
  proc generate_simulation_scripts_only { config_info hw_platform_info } {
    
    set debugLevel             [dict get $config_info debug_level] 
    set scDebugLevel           [dict get $config_info sc_debug_level] 
    set simulator              [dict get $config_info simulator] 
    set clibs                  [dict get $config_info clibs] 
    set topBdName              [dict get $config_info top_bd_name] 
    set kernelDebug            [dict get $config_info kernel_debug] 
    set topBd                  [dict get $config_info top_bd] 
    set drBd                   [dict get $config_info dr_bd]
    set simRuntime             [dict get $config_info simulation_runtime] 
    set aieShimSolPath         [dict get $config_info aie_shim_sol_path] 
    set jsonDeviceFilePath     [dict get $config_info json_device_file_path]
    set plKernelDbg            [dict get $config_info plKernelDbg]
    set isDisableProfileSrc    [dict get $config_info is_disable_profile_src]
    set vpl_output_dir         [dict get $config_info vpl_output_dir]
    set is_versal              [dict get $config_info is_versal] 
    set top_module_name        [dict get $config_info top_module_name]
    set vitis_region_path      [dict get $hw_platform_info source_view_dr_inst_path]
    set kernel_tlm_model_instances [dict get $config_info kernel_tlm_model_instances]  
    set post_sim_settings_file [dict get $config_info post_sim_settings]
    set reduce_compile_time [dict get $config_info  reduce_compile_time]  
    set isNewXsa [dict get $config_info isNewXSa]
    set is_new_flow [dict get $config_info is_new_flow]
    
    # note this tcl proc is used by both non-unified platform and unified platform
    # for unified platform, the vivado project has been renamed to "prj" to be consistent with hw flow
    # emu_project_name entry is only available for unified platform
    # set project_name [dict get $config_info synth_proj_name] 
   if { [dict exists $config_info emu_proj_name] } {
        set project_name [dict get $config_info emu_proj_name] 
    } else {
        set project_name [dict get $config_info synth_proj_name] 
    }
    
    if {$isNewXsa && $is_new_flow} {
      
      set activeFileset [current_fileset -simset]
      
      #set_property top $top_module_name [get_filesets $activeFileset]
      set top_module_name [get_property top $activeFileset ] 
      
      
    } else {

      if { [string compare -nocase $reduce_compile_time "true"] == 1} {
        set activeFileset [current_fileset -simset]
      } else {
        set bdDesign ""
        if { $topBdName ne "" } {
          set bdDesign [get_bd_designs $topBdName] 
        } else {
          set topBdName [string map {"_wrapper" ""} ${top_module_name} ]
          #set bdDesign [lindex [get_bd_designs] end] 
          set bdDesign [get_bd_designs $topBdName] 
        }

        if {$bdDesign eq ""} {
          puts "ERROR: there is no open BD design"
        }
    
        #reset_target {simulation} [get_files [get_property FILE_NAME $bdDesign]]
        #
        #CR-1016564. Work-around to reset-project
        #reset_project
        set_property generate_synth_checkpoint false [get_files  [get_property FILE_NAME $bdDesign]]
        #generate_target {simulation} [get_files  [get_property FILE_NAME $bdDesign]]
        set_property -name {xsim.simulate.runtime} -value $simRuntime -objects [current_fileset -simset]
        set topBdName [get_property NAME $bdDesign]
        set activeFileset [current_fileset -simset] 
        set topModule [get_property top $activeFileset ]

       if {$topModule eq ""} {
         puts "--- DEBUG: changing the top model to ${topBdName}_wrapper"
         set_property top ${topBdName}_wrapper [get_filesets $activeFileset]
       } else {
         puts "--- DEBUG: top is already set to $topModule"
       }
    
       if { $topBd != $drBd && $topBd ne "" } {
         open_bd_design -auto_upgrade [get_files $drBd]
       }       
 
       if {$is_versal eq "true"} {
         set topBdName ${topBdName}_wrapper_sim
         set_property top ${topBdName}_wrapper [get_filesets sim_1]
         set_property top_lib xil_defaultlib [get_filesets sim_1]
         update_compile_order -fileset sim_1
         update_compile_order
        }

        #Restore the top BD
        if { $topBd != $drBd && $topBd ne "" } {
          open_bd_design -auto_upgrade [get_files $topBd]
        }
      }
    }
    
    set replaceXSimCall false
    set debugMode false
    
    set origSimulator [string tolower $simulator]   
    set filename "vivado_config_hw_emu.tcl"
    set in [open $filename w]    
    puts $in "set_property hw_emu.en_vitis_codehooks_for_sim true \[current_project\]"    
    
    if {[string compare -nocase $simulator "xsim"] == 0} {

      puts $in "set_property target_simulator xsim \[current_project\]"
      puts $in "set_property -name {xsim.simulate.runtime} -value $simRuntime -objects \[current_fileset -simset\]"
  
      # Keep the user specified debug modes as is
      if { [string compare -nocase $debugLevel "BATCH"] == 0 } {
        set debugMode true
        puts $in "set_property -name {XSIM.ELABORATE.DEBUG_LEVEL} -value {typical} -objects \[current_fileset -simset\]"
    
        set cur_val [get_property xsim.simulate.xsim.more_options [current_fileset -simset]]
        if {$cur_val != ""} {
          puts $in "set_property -name {xsim.simulate.xsim.more_options} -value \" $cur_val -nolog --onfinish quit \$*\" -objects \[current_fileset -simset\]"
        } else {
          puts $in "set_property -name {xsim.simulate.xsim.more_options} -value \" -nolog --onfinish quit \$*\" -objects \[current_fileset -simset\]"
        }
      } elseif { [string compare -nocase $debugLevel "GUI"] == 0 } {
        set debugMode true
        puts $in "set_property -name {XSIM.ELABORATE.DEBUG_LEVEL} -value {typical} -objects \[current_fileset -simset\]"
        set cur_val [get_property xsim.simulate.xsim.more_options [current_fileset -simset]]
        if {$cur_val != ""} {
          puts $in "set_property -name {xsim.simulate.xsim.more_options} -value \" $cur_val  -gui \$*\" -objects \[current_fileset -simset\]"
        } else {
          puts $in "set_property -name {xsim.simulate.xsim.more_options} -value \" -gui \$*\" -objects \[current_fileset -simset\]"
        }
      } else {
        
      # set protobufInclude "$::env(XILINX_VIVADO)/data/simmodels/xsim/2020.2/lnx64/6.2.0/ext/protobuf/include"
      # set protobufLibrary "$::env(XILINX_VIVADO)/data/simmodels/xsim/2020.2/lnx64/6.2.0/ext/protobuf/"
        set apInclude "$::env(XILINX_HLS)/include"
        
        set apOption " --gcc_compile_options \"-I$apInclude\""  
        set tlm_instances_list [split ${kernel_tlm_model_instances} ","]
        
        if { [lsearch $tlm_instances_list "none"] != -1 } {
          set apOption ""
        }
        #puts "apOtion $apOption"
        set cur_val [get_property XSIM.COMPILE.XSC.MORE_OPTIONS [current_fileset -simset]]
        # set gcc_compile_options "$apOption --gcc_compile_options \\\"-I$protobufInclude\\\""
        set gcc_compile_options "$apOption"
        # puts "cur_val is '$cur_val'"
        # puts "gcc_compile_options is '$gcc_compile_options'"
        if {$cur_val != ""} {
          # in the incremental mode, we don't want to duplicate the options
          if {[string first $gcc_compile_options $cur_val] == -1} {
            if {[string first \" $cur_val] != -1} {
              set cur_val [string map {\" \\\"} $cur_val]
            }
            # set_property -name {XSIM.COMPILE.XSC.MORE_OPTIONS} -value " $cur_val $apOption --gcc_compile_options \"-I$protobufInclude\"" -objects [current_fileset -simset]
            # puts $in "set_property -name {XSIM.COMPILE.XSC.MORE_OPTIONS} -value \" $cur_val $gcc_compile_options \" -objects \[current_fileset -simset\]"
            puts $in "set_property -name {XSIM.COMPILE.XSC.MORE_OPTIONS} -value {$cur_val $gcc_compile_options} -objects \[current_fileset -simset\]"
          }
        } else {
          # set_property -name {XSIM.COMPILE.XSC.MORE_OPTIONS}  -value " $apOption --gcc_compile_options \"-I$protobufInclude\" " -objects [current_fileset -simset]
          # puts $in "set_property -name {XSIM.COMPILE.XSC.MORE_OPTIONS}  -value \" $gcc_compile_options \" -objects \[current_fileset -simset\]"
          if {$gcc_compile_options != ""} {
            puts $in "set_property -name {XSIM.COMPILE.XSC.MORE_OPTIONS}  -value {$gcc_compile_options} -objects \[current_fileset -simset\]"
          }
        }

        set current_val [get_property XSIM.ELABORATE.XSC.MORE_OPTIONS [current_fileset -simset]]
        # set gcc_link_options "--gcc_link_options \\\"-L$protobufLibrary -lprotobuf\\\""
        set gcc_link_options ""
        # puts "current_val is '$current_val'"
        # puts "gcc_link_options is '$gcc_link_options'"
        if {$current_val != ""} {
          # in the incremental mode, we don't want to duplicate the options
          if {[string first $gcc_link_options $current_val] == -1} {
            if {[string first \" $current_val] != -1} {
              set current_val [string map {\" \\\"} $current_val]
            }
            # set_property -name {XSIM.ELABORATE.XSC.MORE_OPTIONS} -value " $current_val --gcc_link_options \"-L$protobufLibrary -lprotobuf\" " -objects [current_fileset -simset]
            # puts $in "set_property -name {XSIM.ELABORATE.XSC.MORE_OPTIONS} -value \" $current_val $gcc_link_options \" -objects \[current_fileset -simset\]"
            puts $in "set_property -name {XSIM.ELABORATE.XSC.MORE_OPTIONS} -value {$current_val $gcc_link_options} -objects \[current_fileset -simset\]"
          }
        } else {
          # set_property -name {XSIM.ELABORATE.XSC.MORE_OPTIONS}  -value " --gcc_link_options \"-L$protobufLibrary -lprotobuf\" " -objects [current_fileset -simset]
          # puts $in "set_property -name {XSIM.ELABORATE.XSC.MORE_OPTIONS}  -value \" $gcc_link_options \" -objects \[current_fileset -simset\]"
            if {$gcc_link_options != ""} {
              puts $in "set_property -name {XSIM.ELABORATE.XSC.MORE_OPTIONS}  -value {$gcc_link_options} -objects \[current_fileset -simset\]"
            }
        }

        set current_value [get_property XSIM.ELABORATE.XELAB.MORE_OPTIONS [current_fileset -simset]]
        set debug_sc_val ""
        if { [string compare -nocase $kernelDebug "false"] == 0 || [string compare -nocase $plKernelDbg "wdb"] == 0  } {
          if { [string compare -nocase $scDebugLevel "WAVEFORM"] == 0 || [string compare -nocase $scDebugLevel "WAVEFORM_AND_LOG"] == 0 } {
            if {[string first "debug sc" $current_value] == -1 } {
                 set debug_sc_val "--debug sc"
            }
          }
        }
        
        set ign_ass ""
        if {[string first "ignore_assertions" $current_value] == -1 } {
          set ign_ass " -ignore_assertions " 
        }
        
       #set xelab_more_options " --include $protobufInclude "
        set xelab_more_options ""
        if {$current_value != ""} {
          if {[string first $xelab_more_options $current_value] == -1} {
            if {[string first \" $current_value] != -1} {
              
              set current_value [string map {\" \\\"} $current_value]
              
            }
            # set_property -name {XSIM.ELABORATE.XELAB.MORE_OPTIONS} -value " $current_value --include $protobufInclude -ignore_assertions " -objects [current_fileset -simset]
            puts $in "set_property -name {XSIM.ELABORATE.XELAB.MORE_OPTIONS} -value {$current_value $xelab_more_options $ign_ass $debug_sc_val} -objects \[current_fileset -simset\]"
          }
          # if current_value already contains xelab_more_option, we dont' want to set the property again
        } else {
          # set_property -name {XSIM.ELABORATE.XELAB.MORE_OPTIONS} -value " --include $protobufInclude -ignore_assertions " -objects [current_fileset -simset]
          puts $in "set_property -name {XSIM.ELABORATE.XELAB.MORE_OPTIONS} -value {$xelab_more_options $ign_ass $debug_sc_val} -objects \[current_fileset -simset\]"
        }

        # Handle the default flow and the interactive debug flow 
        if { [string compare -nocase $kernelDebug "false"] == 0 } {
          #puts "kernelDebug false, xsim debuglevel off , behav_Waveform only generated, NO waveform supported"
          puts $in "set_property -name {XSIM.ELABORATE.DEBUG_LEVEL} -value {off} -objects \[current_fileset -simset\]"
          
          set cur_val [get_property XSIM.SIMULATE.XSIM.MORE_OPTIONS [current_fileset -simset]]
          if {$cur_val != ""} {
            if {[string first "$*" $cur_val] == -1} {
              puts $in "set_property -name {XSIM.SIMULATE.XSIM.MORE_OPTIONS} -value \" $cur_val  \$*\" -objects \[current_fileset -simset\]"
            }
          } else {
            puts $in "set_property -name {XSIM.SIMULATE.XSIM.MORE_OPTIONS} -value \" \$*\" -objects \[current_fileset -simset\]"
          }
          
          puts $in "set_property -name {hw_emu.debug_mode} -value {$plKernelDbg} -objects \[current_fileset -simset\]"
          puts $in "set_property -name {hw_emu.is_waveform_mode} -value {$kernelDebug} -objects \[current_fileset -simset\]"
           
          close $in
          
          if {[catch {source vivado_config_hw_emu.tcl } msg]} {puts $msg}
          if { [file exists post_sim_settings_file] } {
            if {[catch {source $post_sim_settings_file } msg]} {puts $msg}
          }

          generate_simulation_scripts 
          file rename -force $project_name/$project_name.sim/$activeFileset/behav/ $project_name/$project_name.sim/$activeFileset/behav_waveform
          cd $project_name/$project_name.sim/$activeFileset/behav_waveform/xsim
          gen_vimage_inputs $config_info $kernelDebug

          write_pre_post_sim_tool_scripts $vitis_region_path
          #if {$isNewXsa && $is_new_flow} {
          #  writeNewOpenClScript $isNewXsa $is_new_flow $debugLevel $top_module_name $simRuntime $kernelDebug $plKernelDbg $isDisableProfileSrc
          #} else {
          #  writeNewOpenClScript $isNewXsa $is_new_flow $debugLevel $topBdName $simRuntime $kernelDebug $plKernelDbg $isDisableProfileSrc
          #}

          cd ../../../../../
          #file rename -force $project_name/$project_name.sim/$activeFileset/behav/ $project_name/$project_name.sim/$activeFileset/behav_waveform
        } else {
          #if kernelDebug is set true :
          #  if plKenelGdb = wdb, generate behav_waveform, 
          #  if plKernelGdb = gdb, generate behav_gdb 
          if {[string compare -nocase $plKernelDbg "wdb"] == 0 } {
            #puts "kernelDebug true, xsim debuglevel typical, behav_waveform only generated, waveform supported"
            set cur_val [get_property xsim.simulate.xsim.more_options [current_fileset -simset]]
            if {$cur_val != ""} {
              if {[string first "$*" $cur_val] == -1} {
                puts $in "set_property -name {xsim.simulate.xsim.more_options} -value \" $cur_val  \$*\" -objects \[current_fileset -simset\]"
              }
            } else {
              puts $in "set_property -name {xsim.simulate.xsim.more_options} -value \" \$*\" -objects \[current_fileset -simset\]"
            }
            
            puts $in "set_property -name {hw_emu.debug_mode} -value {$plKernelDbg} -objects \[current_fileset -simset\]"
            puts $in "set_property -name {hw_emu.is_waveform_mode} -value {$kernelDebug} -objects \[current_fileset -simset\]"
            
            close $in
            
            if {[catch {source vivado_config_hw_emu.tcl } msg]} {puts $msg}
            if { [file exists post_sim_settings_file] } {
              if {[catch {source $post_sim_settings_file } msg]} {puts $msg}
            }

            generate_simulation_scripts
            file rename -force $project_name/$project_name.sim/$activeFileset/behav/ $project_name/$project_name.sim/$activeFileset/behav_waveform
            cd $project_name/$project_name.sim/$activeFileset/behav_waveform/xsim
            gen_vimage_inputs $config_info $kernelDebug

            write_pre_post_sim_tool_scripts $vitis_region_path
            #if {$isNewXsa && $is_new_flow} {
            #  writeNewOpenClScript $isNewXsa $is_new_flow $debugLevel $top_module_name $simRuntime $kernelDebug $plKernelDbg $isDisableProfileSrc
            #} else {
            #  writeNewOpenClScript $isNewXsa $is_new_flow $debugLevel $topBdName $simRuntime $kernelDebug $plKernelDbg $isDisableProfileSrc
            #}

            cd ../../../../../
            #file rename -force $project_name/$project_name.sim/$activeFileset/behav/ $project_name/$project_name.sim/$activeFileset/behav_waveform
          } elseif {[string compare -nocase $plKernelDbg "gdb"] == 0 } {
            #puts "kernalDebug true, xsim debuglevel typical, behav_gdb only created"
              
            set replaceXSimCall true
            puts $in "set_property xelab.standalone true \[current_fileset -simset\]"
            close $in
            
            if {[catch {source vivado_config_hw_emu.tcl } msg]} {puts $msg}
            if { [file exists post_sim_settings_file] } {
              if {[catch {source $post_sim_settings_file } msg]} {puts $msg}
            }

            generate_simulation_scripts

            if { ![file exists $project_name/$project_name.sim/$activeFileset/behav_gdb] } {
              # -force doesn't work for directory overwrite
              file rename -force $project_name/$project_name.sim/$activeFileset/behav/ $project_name/$project_name.sim/$activeFileset/behav_gdb
            }
            cd $project_name/$project_name.sim/$activeFileset/behav_gdb/$origSimulator
            write_pre_post_sim_tool_scripts $vitis_region_path
            #$debug_mode is alway set to false, need to understand when we hit this scenario
            
            #if { $debugMode } {
            #  if {$isNewXsa && $is_new_flow} {
            #    writeNewOpenClScript $isNewXsa $is_new_flow $debugLevel $top_module_name $simRuntime $kernelDebug $plKernelDbg $isDisableProfileSrc
            #  } else {
            #    writeNewOpenClScript $isNewXsa $is_new_flow $debugLevel $topBdName $simRuntime $kernelDebug $plKernelDbg $isDisableProfileSrc
            #  }               
            #}
            
            gen_vimage_inputs $config_info $kernelDebug            
            cd ../../../../../
          }
        }
      }
    } else {
      
      set systemTime [clock seconds]
      puts "INFO: [clock format $systemTime -format %H:%M:%S] \[HW_EMU_COMMON_UTIL\] launch_simulation -scripts_only started " 
      
      puts $in "set_property -name {hw_emu.debug_mode} -value {$plKernelDbg} -objects \[current_fileset -simset\]"
      puts $in "set_property -name {hw_emu.is_waveform_mode} -value {$kernelDebug} -objects \[current_fileset -simset\]"
      
      if {[string compare -nocase $origSimulator "xcelium"] == 0 } {

        puts $in "set_property target_simulator Xcelium \[current_project\]"
        puts $in "set_property -name {xcelium.simulate.runtime} -value $simRuntime -objects \[current_fileset -simset\]"
 
        if { [string compare -nocase $kernelDebug "true"] == 0 } {
          puts $in "set_property -name {xcelium.elaborate.link.sysc} -value \[list \\\$sys_path/../../../../tbsc/lib/64bit/libscv.so \\\$sys_path/../../../../tbsc/lib/64bit/libtbsc.so \\\$sys_path/../../../../cdsgcc/gcc/6.3/install/lib64/libbfd-2.27.so\] -objects \[current_fileset -simset\]"
          puts $in "set_property -name {xcelium.compile.xmsc.more_options} -value \{-scv -noedg -DXSC_ENABLE_TLM_WAVEFORM\} -objects \[current_fileset -simset\]"
        }

        set simInstallBinPath [get_property simulator.xcelium_install_dir [current_project]]
        set clibsPath [get_property compxlib.xcelium_compiled_library_dir [current_project]]
        
        close $in
        
        if {[catch {source vivado_config_hw_emu.tcl } msg]} {puts $msg}
        if { [file exists post_sim_settings_file] } {
          if {[catch {source $post_sim_settings_file } msg]} {puts $msg}
        }
        
        launch_simulation -scripts_only -install_path $simInstallBinPath -lib_map_path $clibsPath
        cd $project_name/$project_name.sim/$activeFileset/behav/xcelium
        
        #if {$isNewXsa && $is_new_flow} {
        #  writeXceliumWrapperTcl $isNewXsa $is_new_flow $top_module_name $simRuntime
        #} else {
        #  writeXceliumWrapperTcl $isNewXsa $is_new_flow $topBdName $simRuntime
        #}
        
      } elseif {[string compare -nocase $origSimulator "questa"] == 0 } {
      
        set_param ips.enableSystemCForQuesta 1
        puts $in "set_property target_simulator Questa \[current_project\]"
        puts $in "set_property -name {questa.simulate.runtime} -value $simRuntime -objects \[current_fileset -simset\]"
        if { [string compare -nocase $kernelDebug "true"] == 0 } {

          puts $in "set_property -name {questa.compile.sccom.more_options} -value \" -g -scv -DXSC_ENABLE_TLM_WAVEFORM \" -objects \[current_fileset -simset\]"
          puts $in "set_property -name {questa.elaborate.sccom.more_options} -value \" -scv \" -objects \[current_fileset -simset\]"
        }

        set vopt_more_options "-noscelab"
        set cur_val [get_property questa.elaborate.vopt.more_options [current_fileset -simset]]
        if {$cur_val != ""} {
          if {[string first $vopt_more_options $cur_val] == -1} {
            puts $in "set_property -name {questa.elaborate.vopt.more_options} -value \" $cur_val -noscelab \" -objects \[current_fileset -simset\]"
          }
        } else {
          puts $in "set_property -name {questa.elaborate.vopt.more_options} -value \" -noscelab \" -objects \[current_fileset -simset\]"
        }
        puts $in "set_property -name {questa.simulate.vsim.more_options} -value \" -scasyncupdate -suppress vsim-4025 -suppress vsim-6543 \"  -objects \[current_fileset -simset\]"  
        close $in
        
        if {[catch {source vivado_config_hw_emu.tcl } msg]} {puts $msg} 
        if { [file exists post_sim_settings_file] } {
          if {[catch {source $post_sim_settings_file} msg]} {puts $msg}
        }
        
        set vsim_more_options [get_property questa.simulate.vsim.more_options [current_fileset -simset]]
        launch_simulation -scripts_only
        
        cd $project_name/$project_name.sim/$activeFileset/behav/questa
        #if {$isNewXsa && $is_new_flow} {
        #  writeQuestaWrapperTcl $isNewXsa $is_new_flow $top_module_name $simRuntime $vsim_more_options
        #} else {
        #  writeQuestaWrapperTcl $isNewXsa $is_new_flow $topBdName $simRuntime $vsim_more_options
        #}

      } elseif {[string compare -nocase $origSimulator "riviera"] == 0 } {
        puts $in "set_property target_simulator Riviera \[current_project\]"
        puts $in "set_property -name {riviera.simulate.runtime} -value $simRuntime -objects \[current_fileset -simset\]"
        set simInstallBinPath [get_property simulator.riviera_install_dir [current_project]]
        set clibsPath [get_property compxlib.riviera_compiled_library_dir [current_project]]
        
        close $in
        
        if {[catch {source vivado_config_hw_emu.tcl} msg]} {puts $msg}
        if { [file exists post_sim_settings_file] } {
          if {[catch {source $post_sim_settings_file} msg]} {puts $msg}
        }
        
        launch_simulation -scripts_only -install_path $simInstallBinPath -lib_map_path $clibsPath
        cd $project_name/$project_name.sim/$activeFileset/behav/$origSimulator
        
      } elseif {[string compare -nocase $origSimulator "vcs"] == 0 } {
        puts $in "set_property target_simulator VCS \[current_project\]"
        puts $in "set_property -name {vcs.simulate.runtime} -value $simRuntime -objects \[current_fileset -simset\]"
        set simInstallBinPath [get_property simulator.vcs_install_dir [current_project]]
        set clibsPath [get_property compxlib.vcs_compiled_library_dir [current_project]]
        
        puts $in "set_property -name {hw_emu.debug_mode} -value {$plKernelDbg} -objects \[current_fileset -simset\]"
        puts $in "set_property -name {hw_emu.is_waveform_mode} -value {$kernelDebug} -objects \[current_fileset -simset\]"
        
        close $in
        
        if {[catch {source vivado_config_hw_emu.tcl }  msg]} {puts $msg}
        if { [file exists post_sim_settings_file] } {
          if {[catch {source $post_sim_settings_file } msg]} {puts $msg}
        }
        launch_simulation -scripts_only -install_path $simInstallBinPath -lib_map_path $clibsPath
        cd $project_name/$project_name.sim/$activeFileset/behav/$origSimulator
        
        #if {$isNewXsa && $is_new_flow} {
        #  writeVCSWrapperTcl $isNewXsa $is_new_flow $top_module_name $simRuntime
        #} else {
        #  writeVCSWrapperTcl $isNewXsa $is_new_flow $topBdName $simRuntime
        #}
        
      } elseif {[string compare -nocase $origSimulator "modelsim"] == 0 } {
        puts $in "set_property target_simulator ModelSim \[current_project\]"
        puts $in "set_property -name {modelsim.simulate.runtime} -value $simRuntime -objects \[current_fileset -simset\]"
        set simInstallBinPath [get_property simulator.modelsim_install_dir [current_project]]
        set clibsPath [get_property compxlib.modelsim_compiled_library_dir [current_project]]
        
        close $in
        
        if {[catch {source vivado_config_hw_emu.tcl } msg]} {puts $msg}
        if { [file exists post_sim_settings_file] } {
          if {[catch {source $post_sim_settings_file } msg]} {puts $msg}
        }
        launch_simulation -scripts_only -install_path $simInstallBinPath -lib_map_path $clibsPath
        cd $project_name/$project_name.sim/$activeFileset/behav/$origSimulator        
      }
      
      set systemTime [clock seconds]
      puts "INFO: [clock format $systemTime -format %H:%M:%S] \[HW_EMU_COMMON_UTIL\] launch_simulation -scripts_only ended " 
      
      cd ../../../../../
      file rename -force $project_name/$project_name.sim/$activeFileset/behav/ $project_name/$project_name.sim/$activeFileset/behav_waveform
    }
  }
  #end of generate_simulation_scripts_and_compile

  # vimage emulation support for unified platform ZCU102
  # proc generate_simulation_scripts_and_compile_unip { emulation_mode } 
  proc generate_simulation_scripts_and_compile_unip { config_info } {
    set emulation_mode  [dict get $config_info emulation_mode] 
    set project_name    [dict get $config_info emu_proj_name] 
    set simulator       [dict get $config_info simulator] 
    set clibs           [dict get $config_info clibs] 
    #set simRuntime      [dict get $config_info simulation_runtime] 
    
    global tcl_platform

    puts "--- DEBUG: generate_simluation_scripts_and_compile_unip"
    set_param ips.enableSVCosim 1
    set_param project.allowSharedLibraryType 1
    set_param project.copyShLibsToCurrRunDir 1

    set top_bd_design [lindex [get_bd_designs] end]
    generate_target {simulation} [get_files [get_property FILE_NAME $top_bd_design]]
    set bdName [get_property NAME $top_bd_design]]
    set activeFileset [current_fileset -simset] 
    set topModule [get_property top $activeFileset ]
    if {$topModule eq ""} {
      puts "--- DEBUG: changing the top model to ${bdName}_wrapper"
      set_property top ${bdName}_wrapper [get_filesets $activeFileset]
    } else {
      puts "--- DEBUG: top is already set to $topModule"
    }
    if { [string equal -nocase $tcl_platform(platform) "windows"] } {
      set_property {xsim.elaborate.debug_level} %1 [current_fileset -simset]
    } else {
      set_property {xsim.elaborate.debug_level} \$1 [current_fileset -simset]
    }
    set cur_val [get_property xsim.simulate.xsim.more_options [current_fileset -simset]]
    if { [string equal -nocase $tcl_platform(platform) "windows"] } {
      set_property {xsim.simulate.xsim.more_options} "$cur_val %*" [current_fileset -simset]
    } else {
      set_property {xsim.simulate.xsim.more_options} "$cur_val \$*" [current_fileset -simset]
    }
    reset_target {simulation} [get_files [get_property FILE_NAME $top_bd_design]]
   
    set simulatorSelected "xsim"
    if { [string compare -nocase $simulator "questa"] == 0 } {
      set simulatorSelected "questa"
      set_property target_simulator Questa [current_project]
      if { $clibs ne "" } {
        set_property compxlib.questa_compiled_library_dir $clibs [current_project]
      }
      set_property -name {questa.simulate.runtime} -value {all} -objects [current_fileset -simset]
      set_property -name {QUESTA.SIMULATE.LOG_ALL_SIGNALS} -value {false} -objects [current_fileset -simset]
    }

    generate_simulation_scripts
    
    cd $project_name/$project_name.sim/$activeFileset/behav/$simulatorSelected
    if { [string equal -nocase $tcl_platform(platform) "windows"] } {
      puts "--- DEBUG: running compile_bat" 
      exec ./compile.bat
      puts "--- DEBUG: running elaborate_bat $emulation_mode"
      exec ./elaborate.bat $emulation_mode
    } else {
      puts "--- DEBUG: running compile_sh"
      exec ./compile.sh
      puts "--- DEBUG: running elaborate_sh $emulation_mode"
      exec ./elaborate.sh $emulation_mode
    }
    cd ../../../../../
    #file copy -force $project_name/$project_name.sim/$activeFileset/behav $output_dir
  }
  #END of generate_simulation_scripts_and_compile_unip 

  proc jsonFileToDict { fileName } {
    set paramDict [dict create]
    set fp [open $fileName r]
    set file_data [read $fp]

    set paramDict [ json::json2dict $file_data]
    return $paramDict
  }
}

