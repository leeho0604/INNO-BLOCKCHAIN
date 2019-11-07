file(GLOB HEADERS "include/eosio/priv_chain_plugin/*.hpp" )
add_library( priv_chain_plugin
             priv_chain_plugin.cpp
             ${HEADERS} )

target_link_libraries( priv_chain_plugin eosio_chain appbase )
target_include_directories( priv_chain_plugin PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/include" "${CMAKE_CURRENT_SOURCE_DIR}/../chain_interface/include" "${CMAKE_CURRENT_SOURCE_DIR}/../../libraries/appbase/include")
