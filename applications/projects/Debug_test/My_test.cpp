/******************************************************************************
*       SOFA, Simulation Open-Framework Architecture, version 1.0 RC 1        *
*                (c) 2006-2011 INRIA, USTL, UJF, CNRS, MGH                    *
*                                                                             *
* This program is free software; you can redistribute it and/or modify it     *
* under the terms of the GNU General Public License as published by the Free  *
* Software Foundation; either version 2 of the License, or (at your option)   *
* any later version.                                                          *
*                                                                             *
* This program is distributed in the hope that it will be useful, but WITHOUT *
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or       *
* FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for    *
* more details.                                                               *
*                                                                             *
* You should have received a copy of the GNU General Public License along     *
* with this program; if not, write to the Free Software Foundation, Inc., 51  *
* Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.                   *
*******************************************************************************
*                            SOFA :: Applications                             *
*                                                                             *
* Authors: The SOFA Team and external contributors (see Authors.txt)          *
*                                                                             *
* Contact information: contact@sofa-framework.org                             *
******************************************************************************/


#include <gtest/gtest.h>
#include "../Standard_test/Sofa_test.h"
#include <sofa/component/init.h>
#include "../../tutorials/objectCreator/ObjectCreator.h"
#include <sofa/simulation/graph/DAGSimulation.h>

#include <sofa/component/odesolver/EulerImplicitSolver.h>
#include <sofa/component/linearsolver/CGLinearSolver.h>
#include <sofa/simulation/common/MechanicalVisitor.h>
#include <sofa/simulation/common/GetVectorVisitor.h>

using std::cout;
using std::cerr;
using std::endl;


namespace sofa
{
using namespace simulation;
using namespace modeling;
using namespace component;
typedef component::linearsolver::CGLinearSolver<component::linearsolver::GraphScatteredMatrix, component::linearsolver::GraphScatteredVector> CGLinearSolver;



struct My_test : public Sofa_test<>
{
    Node::SPtr root;

    My_test()
    {
        setSimulation(new graph::DAGSimulation());
        sofa::component::init();
        root = modeling::newRoot();

        massSpringString(
                    root,
                    0,0,0,
                    1,0,0,
                    2,
                    2.0
                    );
        modeling::addNew<odesolver::EulerImplicitSolver>(root,"odesolver" );
        modeling::addNew<CGLinearSolver>(root,"linearsolver");

        sofa::simulation::getSimulation()->init(root.get());
        sofa::simulation::getSimulation()->animate(root.get(),1.0);


    }
};

TEST_F( My_test, my_test )
{
}

}// namespace sofa




///// This is a starting point for a test fixture. Copy-paste it and uncomment it to create yours.
//namespace sofa
//{

//struct My_test : public Sofa_test<>
//{
//};

//TEST_F( My_test, my_test )
//{
//}

//}// namespace sofa





