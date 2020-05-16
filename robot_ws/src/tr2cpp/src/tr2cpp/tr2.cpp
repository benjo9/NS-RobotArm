#include "ros/ros.h"
#include <stdexcept>
#include <tr2cpp/tr2.h>
#include <tr2cpp/joint.h>

namespace tr2cpp
{
	TR2::TR2()
	{
		joints[0].name = "Rev1";
		joints[1].name = "Rev2";
		joints[2].name = "Rev3";
		joints[3].name = "Rev4";
		joints[4].name = "Rev5";
		joints[5].name = "Rev6";

		int numJoints = sizeof(joints) / sizeof(joints[0]);
		for (int i = 0; i < numJoints; i++)
		{
			joints[i]._msgs = &_msgs;
		}

		waitForState();
		step();
	}

	TR2::~TR2()
	{

	}

	void TR2::waitForState()
	{
		std::string state = "";
		while (state == "")
		{
			_msgs.step();
			state = _msgs.getState();
		}
	}

	Joint TR2::getJoint(std::string jointName)
	{
		int numJoints = sizeof(joints) / sizeof(joints[0]);
		for (int i = 0; i < numJoints; i++)
		{
			if (joints[i].name == jointName)
			{
				return joints[i];
			}
		}

		throw std::runtime_error("Could not find joint with name " + jointName);
	}

	void TR2::step()
	{
		_msgs.step();

		std::string state = _msgs.getState();
		int numJoints = sizeof(joints) / sizeof(joints[0]);

		for (int i = 0; i < numJoints; i++)
		{
			unsigned p1 = state.find(joints[i].name) + 3;
			unsigned p2 = p1 + state.substr(p1, state.length() - p1).find(";");
			std::string s = state.substr(p1, p2-p1);

			// if joint name is in state ( state.find() returns -1 )
			if (p1 > 2) {
				if (s != "" && s != "ns")
				{
					try
					{
						joints[i].pos = std::stod(s);
					}
					catch (int e)
					{

					}
				}
			}
		}
		
	}

	void TR2::setJoint(Joint joint)
	{
		bool foundJoint = false;

		int numJoints = sizeof(joints) / sizeof(joints[0]);
		for (int i = 0; i < numJoints; i++)
		{
			if (joints[i].name == joint.name)
			{
				foundJoint = true;
				joints[i] = joint;
			}
		}

		if (foundJoint == false)
		{
			throw std::runtime_error("Could not find joint with name " + joint.name);
		}
	}
}
