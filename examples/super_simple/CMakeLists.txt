cmake_minimum_required(VERSION 3.25)
project(super_simple_uvm NONE)

set(UVM_VERSION 2020-3.1)
add_subdirectory("../.." uvm)

option_enum(SIMULATOR "Which simulator to use" "vivado_sim;questa;modelsim;xcelium;vcs;all" "modelsim")
if(SIMULATOR STREQUAL "all")
    set(ALL_SIMS TRUE)
endif()

add_ip(tb)

ip_sources(${IP} SYSTEMVERILOG
    ${CMAKE_CURRENT_LIST_DIR}/tb.sv
    )

ip_include_directories(${IP} SYSTEMVERILOG
    ${CMAKE_CURRENT_LIST_DIR}
    )

ip_link(${IP} 
    accellera::sv_uvm::core::${UVM_VERSION}
    )

ip_compile_definitions(${IP} SYSTEMVERILOG
    UVM_NO_DPI
    )

if(SIMULATOR STREQUAL "questa" OR SIMULATOR STREQUAL "modelsim" OR ALL_SIMS)
    modelsim(${IP})
endif()
if(SIMULATOR STREQUAL "vivado_sim" OR ALL_SIMS)
    vivado_sim(${IP})
endif()
if(SIMULATOR STREQUAL "xcelium" OR ALL_SIMS)
    xcelium(${IP})
endif()
if(SIMULATOR STREQUAL "vcs" OR ALL_SIMS)
    vcs(${IP})
endif()

help()
