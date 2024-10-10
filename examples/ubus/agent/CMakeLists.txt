
add_ip(ubus_agent)

ip_sources(${IP} SYSTEMVERILOG
    ${CMAKE_CURRENT_LIST_DIR}/ubus_pkg.sv
    ${CMAKE_CURRENT_LIST_DIR}/ubus_if.sv
    # ${CMAKE_CURRENT_LIST_DIR}/ubus_transfer.sv
    #
    # ${CMAKE_CURRENT_LIST_DIR}/ubus_bus_monitor.sv
    #
    # ${CMAKE_CURRENT_LIST_DIR}/ubus_master_driver.sv
    # ${CMAKE_CURRENT_LIST_DIR}/ubus_master_monitor.sv
    # ${CMAKE_CURRENT_LIST_DIR}/ubus_master_agent.sv
    # ${CMAKE_CURRENT_LIST_DIR}/ubus_master_seq_lib.sv
    # ${CMAKE_CURRENT_LIST_DIR}/ubus_master_sequencer.sv
    #
    # ${CMAKE_CURRENT_LIST_DIR}/ubus_slave_driver.sv
    # ${CMAKE_CURRENT_LIST_DIR}/ubus_slave_monitor.sv
    # ${CMAKE_CURRENT_LIST_DIR}/ubus_slave_agent.sv
    # ${CMAKE_CURRENT_LIST_DIR}/ubus_slave_seq_lib.sv
    # ${CMAKE_CURRENT_LIST_DIR}/ubus_slave_sequencer.sv

    # ${CMAKE_CURRENT_LIST_DIR}/ubus_env.sv
    )

ip_include_directories(${IP} SYSTEMVERILOG
    ${CMAKE_CURRENT_LIST_DIR}
    )
