cmake_minimum_required(VERSION 3.10)
project(lab04)

option(BUILD_EXAMPLES "Build examples" OFF)
option(BUILD_TESTS "Build tests" OFF)

add_subdirectory(formatter_lib)
add_subdirectory(formatter_ex_lib)
add_subdirectory(solver_lib)
add_subdirectory(hello_world_application)
add_subdirectory(solver_application)

if(BUILD_TESTS)
  enable_testing()
  add_subdirectory(third-party/gtest)

  # Отключаем -Werror для Google Test
  target_compile_options(gtest PRIVATE -Wno-error)
  target_compile_options(gtest_main PRIVATE -Wno-error)
  target_compile_options(gmock PRIVATE -Wno-error)
  target_compile_options(gmock_main PRIVATE -Wno-error)

  file(GLOB TEST_SOURCES tests/*.cpp)
  add_executable(check ${TEST_SOURCES})
  target_link_libraries(check 
      formatter 
      formatter_ex 
      solver_lib 
      gtest_main
  )
  target_include_directories(check PRIVATE 
      formatter_lib 
      formatter_ex_lib 
      solver_lib
  )
  add_test(NAME check COMMAND check)
endif()
