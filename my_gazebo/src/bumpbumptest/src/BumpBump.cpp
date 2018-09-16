#include "ros/ros.h"
#include "std_msgs/String.h"
#include "geometry_msgs/Twist.h"
#include "kobuki_msgs/BumperEvent.h"

#include <std_msgs/Empty.h>
#include <sstream>

/**
 * This tutorial demonstrates simple sending of messages over the ROS system.
 */
int count=0;
bool hit=0;
geometry_msgs::Twist twist;	//宣告控制robot的變數型態

void BumperCallback(const kobuki_msgs::BumperEventConstPtr msg)
{
	ROS_INFO("---------------");
	if(msg->state == kobuki_msgs::BumperEvent::PRESSED){	//如果撞到
	count++;
  	ROS_INFO("Bump times: %d",count);
	twist.linear.x = -0.5; twist.linear.y = 0; twist.linear.z = 0;	//後退並轉向
    	twist.angular.x = 0; twist.angular.y = 0; twist.angular.z = 1.5;
	hit=1;	
	}
	if(msg->state == kobuki_msgs::BumperEvent::RELEASED){	//如果不在撞到	
  	ROS_INFO("Get over it~~~");
	twist.linear.x = 0.5; twist.linear.y = 0; twist.linear.z = 0;	//回覆原本行為
    	twist.angular.x = 0; twist.angular.y = 0; twist.angular.z = 0;
	hit=0;	
	}
}

int main(int argc, char **argv)
{  
  	ros::init(argc, argv, "BumpBump");    
  	ros::NodeHandle p;  
  	ros::Subscriber BumpBump_sub = p.subscribe("/mobile_base/events/bumper", 1, BumperCallback);	//設定訂閱***
  	ros::Publisher BumpBump_pub = p.advertise<geometry_msgs::Twist>("/cmd_vel_mux/input/teleop", 1);	//設定發布***
  	ros::Rate loop_rate(10); 
	ROS_INFO("Start!");
	twist.linear.x = 0.5; twist.linear.y = 0; twist.linear.z = 0;	//初始3軸速度
    	twist.angular.x = 0; twist.angular.y = 0; twist.angular.z = 0;	//初始旋轉速度
  while (ros::ok())
  {   		
	BumpBump_pub.publish(twist);	//發布消息(移動)
	std_msgs::String Speed_msg;	//>1<利用這幾行可以讓使用者看到Robot的速度    
   	std::stringstream ss;	//>1<
 	ss << twist;	//>1<
    	Speed_msg.data = ss.str();	//>1<
    	ROS_INFO("%s",Speed_msg.data.c_str());	//>1<
	if(hit==1){	//撞到物體要後退時等1秒讓它轉
	ROS_INFO("Try another way.");
	ros::Duration(1).sleep();	//類似於arduino/delay()功能
	}
    	ros::spinOnce();//以下兩行為有間隔的(10hz)等待topic發布消息(撞牆)***
    	loop_rate.sleep();//這兩行指令的組合不同於ros::spin()，ros::spin()是連續的***	 
  }
	
 	//ros::spin();
  return 0;
}
