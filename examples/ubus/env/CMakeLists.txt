add_ip(ubus_tb_top)

ip_sources(${IP} SYSTEMVERILOG
    # ${CMAKE_CURRENT_LIST_DIR}/test_lib.sv
    # ${CMAKE_CURRENT_LIST_DIR}/ubus_example_master_seq_lib.sv
    # ${CMAKE_CURRENT_LIST_DIR}/ubus_example_scoreboard.sv
    # ${CMAKE_CURRENT_LIST_DIR}/ubus_example_tb.sv
    ${CMAKE_CURRENT_LIST_DIR}/ubus_tb_top.sv
    )

ip_include_directories(${IP} SYSTEMVERILOG
    .
)

add_subdirectory("../dut/" dut)
add_subdirectory("../agent/" agent)

ip_link(ubus_tb_top ubus_agent dut)
