cmake_minimum_required(VERSION 2.8.9)

set(DYNAMIC_LIB MyEngineStatic)
set(STATIC_LIB MyEngineDynamic)
add_executable(mygamestatic mygame.cpp)
target_link_libraries(mygamestatic ${DYNAMIC_LIB})
add_executable(mygamedynamic mygame.cpp)
target_link_libraries(mygamedynamic ${STATIC_LIB})
