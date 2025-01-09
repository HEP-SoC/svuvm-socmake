include(${CMAKE_CURRENT_LIST_DIR}/CPM.cmake)

if(NOT SOCMAKE_VERSION)
    CPMAddPackage(
        NAME SoCMake  
        GIT_TAG develop
        GIT_REPOSITORY "https://github.com/HEP-SoC/SoCMake.git"
        )
endif()

set(UVM_VERSIONS
    2020-3.1
    2020-3.0
    2020-2.0
    2020-1.1
    2020-1.0
    2017-1.1
    2017-1.0
    2017-0.9
    1.2
    1.1
    1.1d
    1.1c
    1.1b
    1.1a
    1.0
    )

option_enum(UVM_VERSION "SV-UVM version to fetch" "${UVM_VERSIONS}" "2020-3.1")

if(UVM_VERSION STREQUAL "2020-3.1")
    set(URL "https://www.accellera.org/images/downloads/standards/uvm/UVM-1800.2-2020.3.1.tar.gz")
elseif(UVM_VERSION STREQUAL "2020-3.0")
    set(URL "https://www.accellera.org/images/downloads/standards/uvm/UVM-1800.2-2020.3.0.tar.gz")
elseif(UVM_VERSION STREQUAL "2020-2.0")
    set(URL "https://www.accellera.org/images/downloads/standards/uvm/UVM-18002-2020-20tar.gz")
elseif(UVM_VERSION STREQUAL "2020-1.1")
    set(URL "https://www.accellera.org/images/downloads/standards/uvm/UVM-18002-2020-11tar.gz")
elseif(UVM_VERSION STREQUAL "2020-1.0")
    set(URL "https://www.accellera.org/images/downloads/standards/uvm/UVM-18002-2020-10tar.gz")
elseif(UVM_VERSION STREQUAL "2017-1.1")
    set(URL "https://www.accellera.org/images/downloads/standards/uvm/UVM-18002-2017-11tar.gz")
elseif(UVM_VERSION STREQUAL "2017-1.0")
    set(URL "https://www.accellera.org/images/downloads/standards/uvm/Accellera-1800.2-2017-1.0.tar.gz")
elseif(UVM_VERSION STREQUAL "2017-0.9")
    set(URL "https://www.accellera.org/images/downloads/standards/uvm/UVM-1800.2-2017-0.9.tar.gz")
elseif(UVM_VERSION STREQUAL "1.2")
    set(URL "https://www.accellera.org/images/downloads/standards/uvm/uvm-1.2.tar.gz")
elseif(UVM_VERSION STREQUAL "1.1d")
    set(URL "https://www.accellera.org/images/downloads/standards/uvm/uvm-1.1d.tar.gz")
elseif(UVM_VERSION STREQUAL "1.1c")
    set(URL "https://www.accellera.org/images/downloads/standards/uvm/uvm-1.1c.tar.gz")
elseif(UVM_VERSION STREQUAL "1.1b")
    set(URL "https://www.accellera.org/images/downloads/standards/uvm/uvm-1.1b.tar.gz")
elseif(UVM_VERSION STREQUAL "1.1a")
    set(URL "https://www.accellera.org/images/downloads/standards/uvm/uvm-1.1a.tar.gz")
elseif(UVM_VERSION STREQUAL "1.0")
    set(URL "https://www.accellera.org/images/downloads/standards/uvm/uvm-1.0p1.tar.gz")
endif()

CPMAddPackage(NAME sv_uvm
    URL "${URL}"
    )
