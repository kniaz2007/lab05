# CMake generated Testfile for 
# Source directory: /home/egorkaplanov/egorkaplanov/workspace/projects/lab05
# Build directory: /home/egorkaplanov/egorkaplanov/workspace/projects/lab05/_build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(check "/home/egorkaplanov/egorkaplanov/workspace/projects/lab05/_build/check")
set_tests_properties(check PROPERTIES  _BACKTRACE_TRIPLES "/home/egorkaplanov/egorkaplanov/workspace/projects/lab05/CMakeLists.txt;36;add_test;/home/egorkaplanov/egorkaplanov/workspace/projects/lab05/CMakeLists.txt;0;")
subdirs("formatter_lib")
subdirs("formatter_ex_lib")
subdirs("solver_lib")
subdirs("hello_world_application")
subdirs("solver_application")
subdirs("third-party/gtest")
