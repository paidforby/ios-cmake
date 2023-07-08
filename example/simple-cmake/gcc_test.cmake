include(ExternalProject)

ExternalProject_add(gcc_test
    URL https://github.com/gramineproject/examples/archive/refs/tags/v1.4.tar.gz
    URL_MD5 b8b598cc04c4bcb6c5c61217a347b2b8
    PATCH_COMMAND ""
    CONFIGURE_COMMAND ""
    BUILD_COMMAND 
      cd ${CMAKE_CURRENT_BINARY_DIR}/gcc_test/src/gcc_test/gcc/test_files
      && gcc -o helloworld helloworld.c
      && ./helloworld
    BUILD_IN_SOURCE 1
    INSTALL_COMMAND ""
    PREFIX gcc_test
)
