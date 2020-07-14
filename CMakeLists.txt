cmake_minimum_required(VERSION 3.0)
project(TestCI VERSION 0.0.1)
set(CMAKE_CXX_STANDARD 17)

configure_file(cmake/version.h.in ${PROJECT_SOURCE_DIR}/version.h)

add_executable(TestCI src/main.cpp)
target_include_directories(TestCI PUBLIC ${PROJECT_SOURCE_DIR}/)

set(CPACK_GENERATOR DEB)
set(CPACK_PACKAGE_VERSION_MAJOR ${PROJECT_VERSION_MAJOR})
set(CPACK_PACKAGE_VERSION_PATCH ${PROJECT_VERSION_PATCH})
include(CPack)