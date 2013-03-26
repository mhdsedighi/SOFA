cmake_minimum_required(VERSION 2.8)

project("SofaMiscSolver")

include(${SOFA_CMAKE_DIR}/pre.cmake)

set(HEADER_FILES

    initMiscSolver.h 
    odesolver/DampVelocitySolver.h 
    odesolver/NewmarkImplicitSolver.h

    )
    
set(SOURCE_FILES

    initMiscSolver.cpp 
    odesolver/DampVelocitySolver.cpp 
    odesolver/NewmarkImplicitSolver.cpp 
    
    )
    
add_library(${PROJECT_NAME} SHARED ${HEADER_FILES} ${SOURCE_FILES})

set(COMPILER_DEFINES "SOFA_BUILD_MISC_SOLVER")
set(LINKER_DEPENDENCIES SofaSimulationTree)

include(${SOFA_CMAKE_DIR}/post.cmake)
