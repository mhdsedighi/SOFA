/******************************************************************************
*       SOFA, Simulation Open-Framework Architecture, version 1.0 RC 1        *
*                (c) 2006-2011 MGH, INRIA, USTL, UJF, CNRS                    *
*                                                                             *
* This library is free software; you can redistribute it and/or modify it     *
* under the terms of the GNU Lesser General Public License as published by    *
* the Free Software Foundation; either version 2.1 of the License, or (at     *
* your option) any later version.                                             *
*                                                                             *
* This library is distributed in the hope that it will be useful, but WITHOUT *
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or       *
* FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License *
* for more details.                                                           *
*                                                                             *
* You should have received a copy of the GNU Lesser General Public License    *
* along with this library; if not, write to the Free Software Foundation,     *
* Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301 USA.          *
*******************************************************************************
*                               SOFA :: Modules                               *
*                                                                             *
* Authors: The SOFA Team and external contributors (see Authors.txt)          *
*                                                                             *
* Contact information: contact@sofa-framework.org                             *
******************************************************************************/
#ifndef SOFA_COMPONENT_COLLISION_NEWPROXIMITYINTERSECTION_H
#define SOFA_COMPONENT_COLLISION_NEWPROXIMITYINTERSECTION_H

#include <sofa/component/collision/BaseProximityIntersection.h>
#include <sofa/helper/FnDispatcher.h>
#include <sofa/component/collision/CapsuleModel.h>
#include <sofa/component/collision/SphereModel.h>
#include <sofa/component/collision/CubeModel.h>
#include <sofa/component/collision/CapsuleIntTool.h>
#include <sofa/component/collision/OBBModel.h>
#include <sofa/component/collision/OBBIntTool.h>

namespace sofa
{

namespace component
{

namespace collision
{

class SOFA_BASE_COLLISION_API NewProximityIntersection : public BaseProximityIntersection
{
public:
    SOFA_CLASS(NewProximityIntersection,BaseProximityIntersection);

    Data<bool> useLineLine;
protected:
    NewProximityIntersection();
public:

    typedef core::collision::IntersectorFactory<NewProximityIntersection> IntersectorFactory;

    virtual void init();

    bool testIntersection(Cube& ,Cube&);
    template <class DataTypes1,class DataTypes2> bool testIntersection(TSphere<DataTypes1>&, TSphere<DataTypes2>&);
    bool testIntersection(Capsule&,Capsule&);
    template <class DataTypes>  bool testIntersection(Capsule&,TSphere<DataTypes>&);
    bool testIntersection(OBB&, OBB&);
    template <class DataTypes> bool testIntersection(TSphere<DataTypes>&, OBB&);
    bool testIntersection(Capsule&, OBB&);

    int computeIntersection(Cube&, Cube&, OutputVector*);
    template <class DataTypes1,class DataTypes2> int computeIntersection(TSphere<DataTypes1>&, TSphere<DataTypes2>&, OutputVector*);
    int computeIntersection(Capsule&, Capsule&,OutputVector* contacts);
    template <class DataTypes> int computeIntersection(Capsule&, TSphere<DataTypes>&,OutputVector* contacts);
    int computeIntersection(OBB&, OBB&,OutputVector* contacts);
    template <class DataTypes> int computeIntersection(TSphere<DataTypes>&,OBB&,OutputVector * contacts);
    int computeIntersection(Capsule&,OBB&,OutputVector * contacts);

    static inline int doIntersectionPointPoint(SReal dist2, const Vector3& p, const Vector3& q, OutputVector* contacts, int id);

};

} // namespace collision

} // namespace component

namespace core
{
namespace collision
{
#if defined(SOFA_EXTERN_TEMPLATE) && !defined(SOFA_BUILD_BASE_COLLISION)
extern template class SOFA_BASE_COLLISION_API IntersectorFactory<component::collision::NewProximityIntersection>;
#endif
}
}

} // namespace sofa

#endif
