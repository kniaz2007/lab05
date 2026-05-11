add_library(banking STATIC Account.cpp Transaction.cpp)
target_include_directories(banking PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
install(TARGETS banking ARCHIVE DESTINATION lib)
install(FILES Account.h Transaction.h DESTINATION include)
