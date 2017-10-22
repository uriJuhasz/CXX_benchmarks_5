set (HEADER_LIST
    "${HEADER_LIST}"
    "${CMAKE_CURRENT_SOURCE_DIR}/Benchmarks.h"
    "${CMAKE_CURRENT_SOURCE_DIR}/TimeMeasurement.h"
    PARENT_SCOPE
    )

set (SRC_LIST
    "${SRC_LIST}"
    "${CMAKE_CURRENT_SOURCE_DIR}/Benchmark1.cpp"
    "${CMAKE_CURRENT_SOURCE_DIR}/Benchmark2.cpp"
    "${CMAKE_CURRENT_SOURCE_DIR}/TimeMeasurement.cpp"
    PARENT_SCOPE
    )
