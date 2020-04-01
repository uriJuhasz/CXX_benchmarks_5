project(CXX_benchmarks_5)
cmake_minimum_required(VERSION 2.8)
aux_source_directory(. SRC_LIST)

set(CMAKE_CXX_STANDARD 17)

if (LINUX)
	set (CMAKE_CXX_FLAGS
		"${CMAKE_CXX_FLAGS} -Wpedantic -Wall -Wextra -std=c++17"
		)
endif()

if (MSVC)

endif()

set (SRC_LIST
    "${SRC_LIST}"
    "main.cpp"
    )

add_subdirectory(benchmarks)
add_executable(${PROJECT_NAME} ${SRC_LIST})
