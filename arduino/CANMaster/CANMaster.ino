/*
 * CAN Bus Interface for rosserial
 * Noothless, 23/02/2020
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

void gripper_command( const std_msgs::Int32& msg){
  char data = msg;
  CAN0.sendMsgBuf(0xF1, 0, 1, data
}

ros::Subscriber<std_msgs::Int32> gripper_command("/nsra/gripper_command", &gripper_command );

//-------------------------

void setup()
{
  Serial.begin(115200);
  //CAN -------------------

  CAN0.begin(CAN_500KBPS) == CAN_OK;

  //-----------------------

  //ROS -------------------

  nh.initNode();
  nh.subscribe(gripper_command);

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
