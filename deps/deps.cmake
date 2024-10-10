set(CPM_DOWNLOAD_VERSION 0.40.2)
include(${CMAKE_CURRENT_LIST_DIR}/CPM.cmake)

CPMAddPackage(
    NAME SoCMake  
    GIT_TAG modelsim
    GIT_REPOSITORY "https://github.com/HEP-SoC/SoCMake.git"
    )
# include("${CMAKE_CURRENT_LIST_DIR}/../../../SoCMake/SoCMakeConfig.cmake")

# CPMAddPackage(NAME sv_uvm
#     GIT_REPOSITORY "https://github.com/accellera-official/uvm-core.git"
#     GIT_TAG ${UVM_VERSION}
#     )

CPMAddPackage(NAME sv_uvm
    URL "https://www.accellera.org/images/downloads/standards/uvm/uvm-1.2.tar.gz"
    )

