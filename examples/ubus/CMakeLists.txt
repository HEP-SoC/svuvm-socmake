cmake_minimum_required(VERSION 3.25)
project(ubus_uvm NONE)

include("../../CMakeLists.txt")

add_subdirectory(env)

set(IP ubus_tb_top)
ip_link(ubus_agent
    accellera::sv_uvm::core::2020.3.1
    )

ip_link(${IP}
    accellera::sv_uvm::core::2020.3.1
    )

ip_compile_definitions(${IP} SYSTEMVERILOG
    UVM_NO_DPI
    )

# verilator(${IP})
modelsim(${IP})

help()


