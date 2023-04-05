if(UNIX AND NOT(ANDROID) AND NOT(EMSCRIPTEN) AND NOT (PLATFORM_NX_ARM) AND NOT (APPLE))

#Find libs
find_package(SDL2 REQUIRED)
find_package(OpenGL REQUIRED)
include_directories(${OPENAL_INCLUDE_DIR})
#We want to link GLEW statically
set(GLEW_USE_STATIC_LIBS ON)
find_package(GLEW REQUIRED)

#Setup project include directories
include_directories(${GLEW_INCLUDE_DIR})
include_directories(${SDL2_INCLUDE_DIR})

set(PSX_LIB libValkyrie.a)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wno-narrowing")
set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -Wno-narrowing")
set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} -Wno-narrowing")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-narrowing")
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -Wno-narrowing")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -Wno-narrowing")

endif()
