
cmake_minimum_required(VERSION 3.25)
project(sv_uvm NONE)

include(${CMAKE_CURRENT_LIST_DIR}/deps/deps.cmake)

add_ip(accellera::sv_uvm::core::${UVM_VERSION}
    DESCRIPTION "Accellera SystemVerilog UVM (Universal Verification Methodology) library"
    )

ip_sources(${IP} SYSTEMVERILOG
    ${sv_uvm_SOURCE_DIR}/src/uvm_pkg.sv
    ${sv_uvm_SOURCE_DIR}/src/uvm.sv
    )

ip_include_directories(${IP} SYSTEMVERILOG
    ${sv_uvm_SOURCE_DIR}/src/
    )
