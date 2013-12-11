# Target is a plugin: SofaCUDA

load(sofa/pre)
defineAsPlugin(SofaCUDA)

TARGET = SofaCUDA

DEFINES += SOFA_BUILD_GPU_CUDA

DEFINES += CUDPP_STATIC_LIB

README_FILE = SofaCUDA.txt

win32 {
	CONFIG(debug, debug|release) {
		QMAKE_LFLAGS += /NODEFAULTLIB:libcmtd
	}
	QMAKE_LFLAGS += /NODEFAULTLIB:libcmt
	QMAKE_CXXFLAGS += /bigobj
}

HEADERS += sofa/gpu/cuda/mycuda.h \
           sofa/gpu/cuda/gpucuda.h \
           sofa/gpu/cuda/CudaCommon.h \
           sofa/gpu/cuda/CudaTypes.h \
           sofa/gpu/cuda/CudaBaseVector.h \
           sofa/gpu/cuda/CudaMatrix.h \
           sofa/gpu/cuda/CudaMath.h \
           sofa/gpu/cuda/CudaMath.inl \
           sofa/gpu/cuda/CudaMathRigid.h \
           sofa/gpu/cuda/CudaMathRigid.inl \
       	   sofa/gpu/cuda/CudaScan.h \
           sofa/gpu/cuda/CudaSort.h \
           sofa/gpu/cuda/CudaMechanicalObject.h \
           sofa/gpu/cuda/CudaMechanicalObject.inl \
           sofa/gpu/cuda/CudaUniformMass.h \
           sofa/gpu/cuda/CudaUniformMass.inl \
           sofa/gpu/cuda/CudaDiagonalMass.h \
           sofa/gpu/cuda/CudaDiagonalMass.inl \
           sofa/gpu/cuda/CudaFixedConstraint.h \
           sofa/gpu/cuda/CudaFixedConstraint.inl \
           sofa/gpu/cuda/CudaLinearMovementConstraint.h \
           sofa/gpu/cuda/CudaLinearMovementConstraint.inl \
           sofa/gpu/cuda/CudaLinearForceField.h \
           sofa/gpu/cuda/CudaLinearForceField.inl \
           sofa/gpu/cuda/CudaSpringForceField.h \
           sofa/gpu/cuda/CudaSpringForceField.inl \
           sofa/gpu/cuda/CudaTetrahedronFEMForceField.h \
           sofa/gpu/cuda/CudaTetrahedronFEMForceField.inl \
           sofa/gpu/cuda/CudaTetrahedronTLEDForceField.h \
           sofa/gpu/cuda/CudaTetrahedronTLEDForceField.inl \
           sofa/gpu/cuda/CudaHexahedronTLEDForceField.h \
           sofa/gpu/cuda/CudaHexahedronTLEDForceField.inl \
           sofa/gpu/cuda/CudaPlaneForceField.h \
           sofa/gpu/cuda/CudaPlaneForceField.inl \
           sofa/gpu/cuda/CudaSphereForceField.h \
           sofa/gpu/cuda/CudaSphereForceField.inl \
           sofa/gpu/cuda/CudaEllipsoidForceField.h \
           sofa/gpu/cuda/CudaEllipsoidForceField.inl \
           sofa/gpu/cuda/CudaTriangularFEMForceFieldOptim.h \
           sofa/gpu/cuda/CudaTriangularFEMForceFieldOptim.inl \
           sofa/gpu/cuda/CudaIdentityMapping.h \
           sofa/gpu/cuda/CudaIdentityMapping.inl \
           sofa/gpu/cuda/CudaBarycentricMapping.h \
           sofa/gpu/cuda/CudaBarycentricMapping.inl \
           sofa/gpu/cuda/CudaBarycentricMappingRigid.h \
           sofa/gpu/cuda/CudaRigidMapping.h \
           sofa/gpu/cuda/CudaRigidMapping.inl \
           sofa/gpu/cuda/CudaSubsetMapping.h \
           sofa/gpu/cuda/CudaSubsetMapping.inl \
           sofa/gpu/cuda/CudaDistanceGridCollisionModel.h \
           sofa/gpu/cuda/CudaContactMapper.h \
           sofa/gpu/cuda/CudaCollisionDetection.h \
           sofa/gpu/cuda/CudaPointModel.h \
           sofa/gpu/cuda/CudaSphereModel.h \
           sofa/gpu/cuda/CudaTriangleModel.h \
           sofa/gpu/cuda/CudaLineModel.h \
           sofa/gpu/cuda/CudaPenalityContactForceField.h \
           sofa/gpu/cuda/CudaPenalityContactForceField.inl \
           sofa/gpu/cuda/CudaVisualModel.h \
           sofa/gpu/cuda/CudaVisualModel.inl \
           sofa/gpu/cuda/CudaTetrahedralVisualModel.h \
           sofa/gpu/cuda/CudaTetrahedralVisualModel.inl \
           sofa/gpu/cuda/CudaParticleSource.h \
           sofa/gpu/cuda/CudaParticleSource.inl \
           sofa/gpu/cuda/CudaMemoryManager.h  \
           sofa/gpu/cuda/CudaMeshMatrixMass.h \
           sofa/gpu/cuda/CudaMeshMatrixMass.inl

SOURCES += main.cpp \
           sofa/gpu/cuda/mycuda.cpp \
           sofa/gpu/cuda/CudaBaseVector.cpp \
           sofa/gpu/cuda/CudaBoxROI.cpp  \
           sofa/gpu/cuda/CudaSphereROI.cpp  \
           sofa/gpu/cuda/CudaBeamLinearMapping.cpp \
           sofa/gpu/cuda/CudaRestShapeSpringsForceField.cpp  \
           sofa/gpu/cuda/CudaIndexValueMapper.cpp \
           sofa/gpu/cuda/CudaMechanicalObject.cpp \
           sofa/gpu/cuda/CudaUniformMass.cpp \
           sofa/gpu/cuda/CudaDiagonalMass.cpp \
           sofa/gpu/cuda/CudaExtraMonitor.cpp \
           sofa/gpu/cuda/CudaFixedConstraint.cpp \
           sofa/gpu/cuda/CudaFixedTranslationConstraint.cpp \
           sofa/gpu/cuda/CudaLinearMovementConstraint.cpp \
           sofa/gpu/cuda/CudaLinearVelocityConstraint.cpp \
           sofa/gpu/cuda/CudaLinearForceField.cpp \
           sofa/gpu/cuda/CudaSpringForceField.cpp \
           sofa/gpu/cuda/CudaTetrahedronFEMForceField.cpp \ 
           sofa/gpu/cuda/CudaTetrahedronTLEDForceField.cpp \
           sofa/gpu/cuda/CudaHexahedronTLEDForceField.cpp \
           sofa/gpu/cuda/CudaPlaneForceField.cpp \
           sofa/gpu/cuda/CudaSphereForceField.cpp \
           sofa/gpu/cuda/CudaEllipsoidForceField.cpp \
           sofa/gpu/cuda/CudaTriangularFEMForceFieldOptim.cpp \
           sofa/gpu/cuda/CudaIdentityMapping.cpp \
           sofa/gpu/cuda/CudaBarycentricMapping.cpp \
           sofa/gpu/cuda/CudaBarycentricMapping-f.cpp \
           sofa/gpu/cuda/CudaBarycentricMapping-3f.cpp \
           sofa/gpu/cuda/CudaBarycentricMapping-3f1.cpp \
           sofa/gpu/cuda/CudaBarycentricMapping-3f1-3f.cpp \
           sofa/gpu/cuda/CudaBarycentricMapping-3f1-f.cpp \
           sofa/gpu/cuda/CudaBarycentricMapping-3f1-d.cpp \
           sofa/gpu/cuda/CudaBarycentricMappingRigid.cpp \
           sofa/gpu/cuda/CudaRigidMapping.cpp \
           sofa/gpu/cuda/CudaSubsetMapping.cpp \
           sofa/gpu/cuda/CudaCollision.cpp \
           sofa/gpu/cuda/CudaCollisionDistanceGrid.cpp \
           sofa/gpu/cuda/CudaDistanceGridCollisionModel.cpp \
           sofa/gpu/cuda/CudaCollisionDetection.cpp \
           sofa/gpu/cuda/CudaSphereModel.cpp \
           sofa/gpu/cuda/CudaPointModel.cpp \
           sofa/gpu/cuda/CudaTriangleModel.cpp \
           sofa/gpu/cuda/CudaLineModel.cpp \
           sofa/gpu/cuda/CudaPenalityContactForceField.cpp \
           sofa/gpu/cuda/CudaVisualModel.cpp \
           sofa/gpu/cuda/CudaTetrahedralVisualModel.cpp \
           sofa/gpu/cuda/CudaSetTopology.cpp \
           sofa/gpu/cuda/CudaParticleSource.cpp \
           sofa/gpu/cuda/CudaMeshMatrixMass.cpp

CUDA_SOURCES += sofa/gpu/cuda/mycuda.cu \
           sofa/gpu/cuda/CudaBaseVector.cu \
           sofa/gpu/cuda/CudaScan.cu \
           sofa/gpu/cuda/CudaSort.cu \
           sofa/gpu/cuda/CudaMechanicalObject.cu \
           sofa/gpu/cuda/CudaUniformMass.cu \
           sofa/gpu/cuda/CudaDiagonalMass.cu \
           sofa/gpu/cuda/CudaFixedConstraint.cu \
           sofa/gpu/cuda/CudaLinearMovementConstraint.cu \
           sofa/gpu/cuda/CudaLinearForceField.cu \
           sofa/gpu/cuda/CudaSpringForceField.cu \
           sofa/gpu/cuda/CudaTetrahedronFEMForceField.cu \
           sofa/gpu/cuda/CudaTetrahedronTLEDForceField.cu \
           sofa/gpu/cuda/CudaHexahedronTLEDForceField.cu \
           sofa/gpu/cuda/CudaPlaneForceField.cu \
           sofa/gpu/cuda/CudaSphereForceField.cu \
           sofa/gpu/cuda/CudaEllipsoidForceField.cu \
           sofa/gpu/cuda/CudaTriangularFEMForceFieldOptim.cu \
           sofa/gpu/cuda/CudaBarycentricMapping.cu \
           sofa/gpu/cuda/CudaRigidMapping.cu \
           sofa/gpu/cuda/CudaSubsetMapping.cu \
           sofa/gpu/cuda/CudaCollisionDetection.cu \
           sofa/gpu/cuda/CudaContactMapper.cu \
           sofa/gpu/cuda/CudaPenalityContactForceField.cu \
           sofa/gpu/cuda/CudaVisualModel.cu \
           sofa/gpu/cuda/CudaParticleSource.cu \
           sofa/gpu/cuda/CudaMeshMatrixMass.cu


HEADERS += \
                sofa/gpu/cuda/CudaSpatialGridContainer.h \
                sofa/gpu/cuda/CudaSpatialGridContainer.inl \
                sofa/gpu/cuda/CudaSPHFluidForceField.h \
                sofa/gpu/cuda/CudaSPHFluidForceField.inl
SOURCES += \
                sofa/gpu/cuda/CudaSpatialGridContainer.cpp \
                sofa/gpu/cuda/CudaSPHFluidForceField.cpp
CUDA_SOURCES += \
                sofa/gpu/cuda/CudaSpatialGridContainer.cu \
                sofa/gpu/cuda/CudaSPHFluidForceField.cu

HEADERS += \
                sofa/gpu/cuda/CudaParticlesRepulsionForceField.h \
                sofa/gpu/cuda/CudaParticlesRepulsionForceField.inl
SOURCES +=      sofa/gpu/cuda/CudaParticlesRepulsionForceField.cpp
CUDA_SOURCES += sofa/gpu/cuda/CudaParticlesRepulsionForceField.cu

load(sofa/post)