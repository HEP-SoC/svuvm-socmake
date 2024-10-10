
cmake_minimum_required(VERSION 3.25)
project(sv_uvm NONE)
set(UVM_VERSION 2020.3.1)

include(${CMAKE_CURRENT_LIST_DIR}/deps/deps.cmake)

add_ip(accellera::sv_uvm::core::${UVM_VERSION})


ip_sources(${IP} SYSTEMVERILOG
    ${sv_uvm_SOURCE_DIR}/src/uvm_pkg.sv
    ${sv_uvm_SOURCE_DIR}/src/uvm.sv
    )

ip_include_directories(${IP} SYSTEMVERILOG
    ${sv_uvm_SOURCE_DIR}/src/
    ${sv_uvm_SOURCE_DIR}/src/base
    ${sv_uvm_SOURCE_DIR}/src/comps
    ${sv_uvm_SOURCE_DIR}/src/dap
    ${sv_uvm_SOURCE_DIR}/src/dpi
    ${sv_uvm_SOURCE_DIR}/src/macros
    ${sv_uvm_SOURCE_DIR}/src/reg
    ${sv_uvm_SOURCE_DIR}/src/seq
    ${sv_uvm_SOURCE_DIR}/src/tlm1
    ${sv_uvm_SOURCE_DIR}/src/tlm2
    )
