cmake_minimum_required(VERSION 2.8.9)
set(CMAKE_BUILD_TYPE Release)

add_executable(helloworld helloworld.cpp)

set(CMAKE_CXX_FLAGS "-pthread")
add_executable(usespthread usespthread.cpp)


set(SOURCES myengine/myengine.cpp)
#file(GLOB SOURCES "myengine/myengine.cpp")
add_library(MyEngineDynamic SHARED ${SOURCES})
install(TARGETS MyEngineDynamic DESTINATION /usr/local/lib)

add_library(MyEngineStatic STATIC ${SOURCES})
install(TARGETS MyEngineStatic DESTINATION /usr/local/lib)
install(FILES myengine/myengine.hpp DESTINATION "/usr/local/include")


