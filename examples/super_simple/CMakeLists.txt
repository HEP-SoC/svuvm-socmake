cmake_minimum_required(VERSION 3.25)
project(test_uvm NONE)

include("../../CMakeLists.txt")

add_ip(tb)

ip_sources(${IP} SYSTEMVERILOG
    ${CMAKE_CURRENT_LIST_DIR}/tb.sv
    )

ip_include_directories(${IP} SYSTEMVERILOG
    ${CMAKE_CURRENT_LIST_DIR}
    )

ip_link(${IP} 
    accellera::sv_uvm::core::2020.3.1
    )

ip_compile_definitions(${IP} SYSTEMVERILOG
    UVM_NO_DPI
    )

# verilator(${IP})
modelsim(${IP} HIER_TARGETS)

help()

