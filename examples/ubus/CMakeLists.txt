cmake_minimum_required(VERSION 3.25)
project(ubus_uvm NONE)

set(UVM_VERSION 1.2)
add_subdirectory("../.." uvm)

add_subdirectory(env)

set(IP ubus_tb_top)
ip_link(ubus_agent
    accellera::sv_uvm::core::${UVM_VERSION}
    )

ip_link(${IP}
    accellera::sv_uvm::core::${UVM_VERSION}
    )

ip_compile_definitions(${IP} SYSTEMVERILOG
    UVM_NO_DPI
    )

set_property(GLOBAL PROPERTY CTEST_TARGETS_ADDED 1) # Remove additional targets
include(CTest)
enable_testing()

set(UVM_TESTS "test_read_modify_write;test_r8_w8_r4_w4;test_2m_4s")
set(SIMULATORS "vivado_sim;modelsim;xcelium;vcs")

foreach(sim ${SIMULATORS})
    foreach(test_name ${UVM_TESTS})
        cmake_language(CALL ${sim} ${IP} TOP_MODULE ubus_tb_top
            RUN_ARGS 
                +UVM_TESTNAME=${test_name}
            RUN_TARGET_NAME run_${test_name}_${sim}
            )

        add_test(NAME run_${test_name}_${sim}
            COMMAND make run_${test_name}_${sim}
            )
    endforeach()
endforeach()

help()
