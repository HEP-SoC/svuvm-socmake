
cmake_minimum_required(VERSION 3.25)
project(svuvm NONE)

include(${CMAKE_CURRENT_LIST_DIR}/deps/deps.cmake)

option_boolean(UVM_DPI "Include UVM DPI shared object library target" OFF ADVANCED)

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

if(UVM_DPI)
    enable_language(CXX)
    add_library(accellera__sv_uvm__dpi__${UVM_VERSION} SHARED
        ${sv_uvm_SOURCE_DIR}/src/dpi/uvm_dpi.cc
        )
    add_library(accellera::sv_uvm::dpi::${UVM_VERSION} ALIAS accellera__sv_uvm__dpi__${UVM_VERSION})
    add_library(accellera::sv_uvm::dpi ALIAS accellera__sv_uvm__dpi__${UVM_VERSION})

    target_include_directories(accellera__sv_uvm__dpi__${UVM_VERSION} PUBLIC
        ${sv_uvm_SOURCE_DIR}/src/dpi
        )

    ip_link(${IP}
        accellera__sv_uvm__dpi__${UVM_VERSION}
        )
endif()
