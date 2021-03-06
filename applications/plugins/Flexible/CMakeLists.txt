include(${SOFA_CMAKE_DIR}/preProject.cmake)

set(HEADER_FILES

    initFlexible.h 
    BaseJacobian.h 
    helper.h 
    types/DeformationGradientTypes.h 
    types/StrainTypes.h 
    types/AffineTypes.h 
    types/AffineComponents.h 
    types/QuadraticTypes.h 
    types/QuadraticComponents.h 
    types/PolynomialBasis.h 
    types/ComponentSpecializations.h.inl
    types/ComponentSpecializations.cpp.inl
    types/ComponentSpecializationsDefines.h
    types/ComponentSpecializationsUndef.h
    types/DeformableFrameMass.h
    types/RigidConstraint.h
    quadrature/BaseGaussPointSampler.h
    quadrature/TopologyGaussPointSampler.h 
    quadrature/GaussPointContainer.h
    shapeFunction/BaseShapeFunction.h
    shapeFunction/ShepardShapeFunction.h 
    shapeFunction/HatShapeFunction.h 
    shapeFunction/BarycentricShapeFunction.h 
    deformationMapping/BaseDeformationMapping.h 
    deformationMapping/BaseDeformationMapping.inl 
    deformationMapping/LinearMapping.h 
    deformationMapping/LinearJacobianBlock.h 
    deformationMapping/LinearJacobianBlock_point.inl 
    deformationMapping/LinearJacobianBlock_affine.inl 
    deformationMapping/LinearJacobianBlock_rigid.inl 
    deformationMapping/LinearJacobianBlock_quadratic.inl 
    deformationMapping/MLSMapping.h 
    deformationMapping/MLSJacobianBlock.h 
    deformationMapping/MLSJacobianBlock_point.inl 
    deformationMapping/MLSJacobianBlock_affine.inl 
    deformationMapping/MLSJacobianBlock_rigid.inl 
    deformationMapping/MLSJacobianBlock_quadratic.inl 
    deformationMapping/TriangleDeformationMapping.h 
    deformationMapping/TriangleDeformationMapping.inl 
    deformationMapping/TriangleStrainAverageMapping.h 
    deformationMapping/TriangleStrainAverageMapping.inl 
    deformationMapping/VolumeMapping.h
    strainMapping/BaseStrainMapping.h
    strainMapping/GreenStrainMapping.h 
    strainMapping/GreenStrainJacobianBlock.h 
    strainMapping/CorotationalStrainMapping.h 
    strainMapping/CorotationalStrainJacobianBlock.h 
    strainMapping/CorotationalStrainJacobianBlock.inl 
    strainMapping/PrincipalStretchesMapping.h 
    strainMapping/PrincipalStretchesJacobianBlock.h 
    strainMapping/InvariantMapping.h 
    strainMapping/InvariantJacobianBlock.h 
    strainMapping/InvariantJacobianBlock.inl 
    strainMapping/PlasticStrainMapping.h 
    strainMapping/PlasticStrainJacobianBlock.h 
    strainMapping/RelativeStrainMapping.h 
    strainMapping/RelativeStrainJacobianBlock.h 
    material/BaseMaterial.h 
    material/BaseMaterialForceField.h 
    material/HookeForceField.h 
    material/HookeMaterialBlock.h 
    material/HookeMaterialBlock.inl 
    material/StabilizedHookeForceField.h 
    material/StabilizedHookeMaterialBlock.h 
    material/NeoHookeanForceField.h 
    material/NeoHookeanMaterialBlock.h 
    material/StabilizedNeoHookeanForceField.h 
    material/StabilizedNeoHookeanMaterialBlock.h 
    material/MooneyRivlinForceField.h 
    material/MooneyRivlinMaterialBlock.h 
    material/OgdenForceField.h 
    material/OgdenMaterialBlock.h 
    material/VolumePreservationForceField.h 
    material/VolumePreservationMaterialBlock.h 
    material/VolumePreservationMaterialBlock.inl 
    #forceField/FlexibleTetrahedronFEMForceField.h

	)

set(SOURCE_FILES

    initFlexible.cpp 
    types/DeformationGradientTypes.cpp 
    types/StrainTypes.cpp 
    types/AffineComponents.cpp 
    types/QuadraticComponents.cpp 
    types/RigidConstraint.cpp
    quadrature/BaseGaussPointSampler.cpp
    quadrature/TopologyGaussPointSampler.cpp 
    quadrature/GaussPointContainer.cpp
    shapeFunction/BaseShapeFunction.cpp
    shapeFunction/ShepardShapeFunction.cpp 
    shapeFunction/HatShapeFunction.cpp 
    shapeFunction/BarycentricShapeFunction.cpp 
    deformationMapping/LinearMapping_point.cpp 
    deformationMapping/LinearMapping_affine.cpp 
    deformationMapping/LinearMapping_rigid.cpp 
    deformationMapping/LinearMapping_quadratic.cpp 
    deformationMapping/MLSMapping_point.cpp 
    deformationMapping/MLSMapping_affine.cpp 
    deformationMapping/MLSMapping_rigid.cpp 
    deformationMapping/MLSMapping_quadratic.cpp 
    deformationMapping/TriangleDeformationMapping.cpp 
    deformationMapping/TriangleStrainAverageMapping.cpp 
    deformationMapping/VolumeMapping.cpp
    strainMapping/GreenStrainMapping.cpp
    strainMapping/CorotationalStrainMapping.cpp 
    strainMapping/PrincipalStretchesMapping.cpp 
    strainMapping/InvariantMapping.cpp 
    strainMapping/PlasticStrainMapping.cpp 
    strainMapping/RelativeStrainMapping.cpp 
    material/HookeForceField.cpp 
    material/StabilizedHookeForceField.cpp 
    material/NeoHookeanForceField.cpp 
    material/StabilizedNeoHookeanForceField.cpp 
    material/MooneyRivlinForceField.cpp 
    material/OgdenForceField.cpp 
    material/VolumePreservationForceField.cpp 
    #forceField/FlexibleTetrahedronFEMForceField.cpp

	)

if(SOFA-PLUGIN_IMAGE)
    
   	list(APPEND HEADER_FILES "quadrature/ImageGaussPointSampler.h")
   	list(APPEND HEADER_FILES "shapeFunction/BaseImageShapeFunction.h")
   	list(APPEND HEADER_FILES "shapeFunction/VoronoiShapeFunction.h")
   	list(APPEND HEADER_FILES "shapeFunction/DiffusionShapeFunction.h")
   	list(APPEND HEADER_FILES "shapeFunction/ShapeFunctionDiscretizer.h")
   	list(APPEND HEADER_FILES "deformationMapping/ImageDeformation.h")
   	list(APPEND HEADER_FILES "mass/ImageDensityMass.h")
   	list(APPEND HEADER_FILES "mass/ImageDensityMass.inl")
    
   	list(APPEND SOURCE_FILES "quadrature/ImageGaussPointSampler.cpp")
   	list(APPEND SOURCE_FILES "shapeFunction/VoronoiShapeFunction.cpp")
   	list(APPEND SOURCE_FILES "shapeFunction/DiffusionShapeFunction.cpp")
   	list(APPEND SOURCE_FILES "shapeFunction/ShapeFunctionDiscretizer.cpp")
   	list(APPEND SOURCE_FILES "deformationMapping/ImageDeformation.cpp")
   	list(APPEND SOURCE_FILES "mass/ImageDensityMass.cpp")
    
	include_directories("${SOFA_EXTLIBS_DIR}")
	include_directories("${SOFA_APPLICATIONS_PLUGINS_DIR}")


if(APPLE)
#    find_library(X11_LIBRARIES NAMES X11)
    find_package(X11)
    if(NOT X11_FOUND)
        message(FATAL_ERROR "Failed to find X11 which is required to build image plugin")
    endif(NOT X11_FOUND)
    AddLinkerDependencies(${X11_X11_LIB})
    include_directories(${X11_X11_INCLUDE_PATH})
endif()

endif()

add_library(${PROJECT_NAME} SHARED ${HEADER_FILES} ${SOURCE_FILES})

AddCompilerDefinitions("SOFA_BUILD_Flexible")
AddLinkerDependencies(SofaEigen2Solver SofaBaseVisual)

if(SOFA-PLUGIN_IMAGE)
    AddCompilerDefinitions("SOFA_HAVE_IMAGE" )

    if(SOFA-PLUGIN_OPENCV)
	
		include_directories("${SOFA_APPLICATIONS_PLUGINS_DIR}/opencv")
	
        AddLinkerDependencies("ml")
        AddLinkerDependencies("cvaux")
        AddLinkerDependencies("highgui")
        AddLinkerDependencies("cv")
        AddLinkerDependencies("cxcore")
		
    endif()
endif()

if(WIN32)
	include_directories("${SOFA_EXTLIBS_DIR}/SuiteSparse/cholmod/Include")

	AddCompilerDefinitions("EIGEN_DONT_ALIGN")
else()
	include_directories("/usr/include/suitesparse/")
endif()
if(UNIX)
    link_directories("/usr/lib/x86_64-linux-gnu/")
    AddLinkerDependencies("pthread")
endif()


include(${SOFA_CMAKE_DIR}/postProject.cmake)
