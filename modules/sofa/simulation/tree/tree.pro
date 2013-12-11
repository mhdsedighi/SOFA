# File generated by kdevelop's qmake manager. 
# ------------------------------------------- 
# Subdir relative project main directory: ./modules/sofa/simulation/tree
# Target is a library:  sofatree$$LIBSUFFIX
load(sofa/pre)

TEMPLATE = lib
TARGET = sofatree

HEADERS += tree.h \
           ExportDotVisitor.h \
           GNode.h \
           GNodeVisitor.h \
		   GNodeMultiMappingElement.h \
           TreeSimulation.h \

SOURCES += ExportDotVisitor.cpp \
           GNode.cpp \   
           GNodeVisitor.cpp \
           GNodeMultiMappingElement.cpp \
		   TreeSimulation.cpp \
		   

contains(DEFINES,SOFA_SMP){
HEADERS += \
			SMPSimulation.h

SOURCES += \
			SMPSimulation.cpp
}

DEFINES += SOFA_BUILD_SIMULATION_TREE

# Make sure there are no cross-dependencies
INCLUDEPATH -= $$ROOT_SRC_DIR/applications
DEPENDPATH -= $$ROOT_SRC_DIR/applications

load(sofa/post)