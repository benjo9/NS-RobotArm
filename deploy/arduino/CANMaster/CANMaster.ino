/*
 * CAN Bus Interface for ROS
 * Noa Sendlhofer, 23.02.2020
 *
 */

#include <ros.h>
#include <std_msgs/Empty.h>
#include <mcp_can.h>
#include <SPI.h>
#include <std_msgs/Int32.h>

//CAN --------------------

MCP_CAN CAN0(10);

unsigned char data[8] = {0, 0, 0, 0, 0, 0, 0, 0};

//-------------------------

//ROS ---------------------

ros::NodeHandle  nh;

void Axis2Position( const std_msgs::Int32& msg){
  sendCANmsg_int(0x002, 0x00C, 0, 8, msg.data);
}

void Axis2Velocity( const std_msgs::Int32& msg){
  sendCANmsg_float(0x002, 0x00F, 0, 8, msg.data);
}

ros::Subscriber<std_msgs::Int32> A2P("Axis2Position", &Axis2Position );
ros::Subscriber<std_msgs::Int32> A2V("Axis2Velocity", &Axis2Velocity );

//-------------------------

void setup()
{
  //CAN -------------------

  CAN0.begin(CAN_1000KBPS) == CAN_OK;

  //-----------------------

  //ROS -------------------

  nh.initNode();
  nh.subscribe(A2P);
  nh.subscribe(A2V);

  //-----------------------
}

void loop()
{
  nh.spinOnce();
  delay(1);
}

//CAN ---------------------

void sendCANmsg_int(int ID, int CMD, int EXT, int DLC, uint32_t DATA)
{
  data[0] = (DATA & 0xFF);
  data[1] = ((DATA >> 8) & 0xFF);
  data[2] = ((DATA >> 16) & 0xFF);
  data[3] = ((DATA >> 24) & 0xFF);
  CAN0.sendMsgBuf( (ID << 5) + CMD, EXT, DLC, data);
}

void sendCANmsg_float(int ID, int CMD, int EXT, int DLC, float DATA)
{

  byte *b = (byte *)&DATA;

  data[0] = b[0];
  data[1] = b[1];
  data[2] = b[2];
  data[3] = b[3];
  /*
  byteArray[0] = (int)((longInt >> 24) & 0xFF) ;
  byteArray[1] = (int)((longInt >> 16) & 0xFF) ;
  byteArray[2] = (int)((longInt >> 8) & 0XFF);
  byteArray[3] = (int)((longInt & 0XFF));
  */
  CAN0.sendMsgBuf( (ID << 5) + CMD, EXT, DLC, data);
}

//-----------------------
