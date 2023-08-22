cmake_minimum_required(VERSION 3.20)
project(actions_playground LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)


set(YAKL_HOME ${CMAKE_CURRENT_SOURCE_DIR}/YAKL)
set(YAKL_BIN  ${CMAKE_CURRENT_BINARY_DIR}/yakl)
add_subdirectory(${YAKL_HOME} ${YAKL_BIN})
include_directories(${YAKL_BIN})

add_executable(main.x src/main.cpp)
yakl_process_target(main.x)
target_link_libraries(main.x ${MY_LINK_FLAGS})

enable_testing()
add_subdirectory(test)
