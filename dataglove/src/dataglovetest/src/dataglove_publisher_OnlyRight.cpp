#include "ros/ros.h"
#include "std_msgs/String.h"
#include "dataglovetest/dataglove_data.h"//***不知道其它的方式能不能引用？ It could be the other way to include this
#include "fglove.h"//***
#include <stdio.h>
#include <string.h>
#include <unistd.h>  // for usleep-----*/

#include "ihand_control/hand.h"//引入機械手格式 Include format of ihand's msg
#include <cmath>//include for abs()
//#include <conio.h>//include for getch(),doesn't exists in linux.

#include <std_msgs/Empty.h>//***這兩個可能還會用到(1) May be useful
#include <sstream>//(1)

#define PAUSE printf("\nPress Enter key to continue..."); fgetc(stdin); //define PAUSE that will let user input commands
#define Stop ;fgetc(stdin);//***緊急停止(撰寫中)

/**
 * This tutorial demonstrates simple sending of messages over the ROS system.
 */
int count=0;

int main(int argc, char **argv)//
{  
	char    *szPort1    = NULL;//***
	//char    *szPort2    = NULL;
	fdGlove *pGloveA    = NULL;
	//fdGlove *pGloveB    = NULL;
	int      glovetype = FD_GLOVENONE;

        if (argc<2)	//可控制輸入參數數量 For the controlling of quantity of inputs
	{
		printf("\n========== Usage: callback <devicename>\n");
                printf("Example: [$ rosrun dataglovetest dataglove_publisher_OnlyRight /dev/usb/hiddev0 /*/dev/usb/hiddev1*/ ]\n");//提示輸入格式 Hint for format of input
		printf("Check prots' names which look like <hiddev0> or <hiddev1> in path: /dev/usb/ \n");
		return 0;
	}
	else
	{
		szPort1 = argv[1];
		//szPort2 = argv[2];		
		//printf("%s",argv[0]);		
	}
	
	// Initialize glove
	printf("\nAttempting to open glove A on %s .. ", szPort1 );
	pGloveA = fdOpen(szPort1);
	if (pGloveA == NULL)
	{
		printf("failed.\n");
		printf("========== To SLOVE this connection problem,\n");
		printf("(1)Make sure your glove plugin this computer,check it in [$ cd /dev/usb]\n");
		printf("(2)Try commands: [$ sudo chmod 666 /dev/usb/hiddev0 /*|sudo chmod 666 /dev/usb/hiddev1*/ ] to get enough Permissions.\n\n");
		return -1;
	}
	printf("succeeded.\n");
	/*printf("\nAttempting to open glove B on %s .. ", szPort2 );
	pGloveB = fdOpen(szPort2);
	
	if (pGloveB == NULL)
	{
		printf("failed.\n");
		printf("========== To SLOVE this problem,\n");
		printf("(1)Make sure your glove plugin this computer,check it in [$ cd /dev/usb]\n");
		printf("(2)Try commands: [$ sudo chmod 666 /dev/usb/hiddev0|sudo chmod 666 /dev/usb/hiddev1 ] to get enough Permissions.\n\n");
		return -1;
	}
	printf("succeeded.\n");
	*/
	//printf("========== Welcome for using this glove! ==========\n");
	// Now continuously poll for sensor data

  	ros::init(argc, argv, "dataglove_publisher_OnlyRight");    
  	ros::NodeHandle p;  
        //ros::Subscriber dataglove_sub = p.subscribe("/mobile_base/events/bumper", 1, BumperCallback);	//設定訂閱*** Sitting for Subscriber
        ros::Publisher dataglove_pub = p.advertise<ihand_control::hand>("iHand/cmd_pos",1 );	//設定發布*** Sitting for Publisher
  	ros::Rate loop_rate(10); 
	ROS_INFO("\n==========ROS standby==========");
	unsigned short gloveA_scaled[18];
	//unsigned short gloveB_scaled[18];
	//---------------------------------------------------------------------------------------
	// Now begin the correction***
	char command;//for user'scommand
	float range[5][2];//5 fingers' limits,[0]=max,[1]=min
	float error_tolerance=0;
	printf("==========Begin the correction==========\n(If you want to stop now,just input Ctrl+C & Enter until glove is closed.)");
	printf("\nPlease make the gesture: \"4\",");
	PAUSE  
    fdGetSensorRawAll(pGloveA, gloveA_scaled);//原始數值 Raw data
    range[0][0]=gloveA_scaled[FD_THUMBNEAR]+error_tolerance;
    range[1][1]=gloveA_scaled[FD_INDEXNEAR]-error_tolerance;
    range[2][1]=gloveA_scaled[FD_MIDDLENEAR]-error_tolerance;
    range[3][1]=gloveA_scaled[FD_RINGNEAR]-error_tolerance;
    range[4][1]=gloveA_scaled[FD_LITTLENEAR]-error_tolerance;
    printf("OK\n");
    printf("\nPlease make the gesture: \"Thumbs up\",");
	PAUSE
    fdGetSensorRawAll(pGloveA, gloveA_scaled);//原始數值 Raw data
    range[0][1]=gloveA_scaled[FD_THUMBNEAR]-error_tolerance;
    range[1][0]=gloveA_scaled[FD_INDEXNEAR]+error_tolerance;
    range[2][0]=gloveA_scaled[FD_MIDDLENEAR]+error_tolerance;
    range[3][0]=gloveA_scaled[FD_RINGNEAR]+error_tolerance;
    range[4][0]=gloveA_scaled[FD_LITTLENEAR]+error_tolerance;
    printf("OK\n\n==========Correction is over==========");
    PAUSE
	//---------------------------------------------------------------------------------------
  while (ros::ok())
  {   		
        //ros::spinOnce();//以下兩行為有間隔的(10hz)等待topic發布消息(撞牆)*** Waiting for publishing msg of topic
        //loop_rate.sleep();//這兩行指令的組合不同於ros::spin()，ros::spin()是連續的*** Make sure you know the difference between ros::spinOnce(); & ros::spin();
		//dataglovetest::dataglove_data msg;
		ihand_control::hand msg;
		//std::stringstream ss;

		//sleep(1);
		/*if(fdGetGloveHand(pGloveA)==0){
                        //fdGetSensorScaledAll(pGloveA, gloveA_scaled);//自動校正 Function of Auto Correction
			//fdGetSensorScaledAll(pGloveB, gloveB_scaled);
                        fdGetSensorRawAll(pGloveA, gloveA_scaled);//原始數值 Raw data
			fdGetSensorRawAll(pGloveB, gloveB_scaled);
			printf("A(lefthand):%d|B(righthand):%d|\n",
			fdGetGloveHand(pGloveA),
			fdGetGloveHand(pGloveB)
		);
		}else{
                        //fdGetSensorScaledAll(pGloveB, gloveA_scaled);//自動校正 Function of Auto Correction
			//fdGetSensorScaledAll(pGloveA, gloveB_scaled);
                        fdGetSensorRawAll(pGloveB, gloveA_scaled);//原始數值 Raw data
			fdGetSensorRawAll(pGloveA, gloveB_scaled);
			printf("A(lefthand):%d|	B(righthand):%d|\n",
			fdGetGloveHand(pGloveB),
			fdGetGloveHand(pGloveA)
		);
		*/
		
                fdGetSensorRawAll(pGloveA, gloveA_scaled);//原始數值 Raw data

                float Rthumb=(gloveA_scaled[FD_THUMBNEAR]-range[0][1]);//mapping校正 Mapping for the Correction
		float Rindex=(gloveA_scaled[FD_INDEXNEAR]-range[1][1]);
		float Rmiddle=(gloveA_scaled[FD_MIDDLENEAR]-range[2][1]);
		float Rring=(gloveA_scaled[FD_RINGNEAR]-range[3][1]);
		float Rbaby=(gloveA_scaled[FD_LITTLENEAR]-range[4][1]);
		
		ROS_INFO("A(righthand):%d",fdGetGloveHand(pGloveA));	
		
		ROS_INFO("A:%0.2f|%0.2f|%0.2f|%0.2f|%0.2f|%0.2f",
			//msg.LL=gloveA_scaled[FD_LITTLENEAR],
			//msg.LR=gloveA_scaled[FD_RINGNEAR],
			//msg.LM=gloveA_scaled[FD_MIDDLENEAR],
			//msg.LP=gloveA_scaled[FD_INDEXNEAR],
			//msg.LT=gloveA_scaled[FD_THUMBNEAR],
			
			msg.thumb=fabs((Rthumb/(range[0][0]-range[0][1]))*20),			
			msg.index=fabs((Rindex/(range[1][0]-range[1][1]))*20),			
			msg.middle=fabs((Rmiddle/(range[2][0]-range[2][1]))*20),			
			msg.ring=fabs((Rring/(range[3][0]-range[3][1]))*20),	
			msg.baby=fabs((Rbaby/(range[4][0]-range[4][1]))*20),
                        msg.trapezium=fabs(20-(Rthumb/(range[0][0]-range[0][1]))*10)//range for open & half status
		);	
		ROS_INFO("a:%d|%d|%d|%d|%d|%f",
			gloveA_scaled[FD_THUMBNEAR],
			gloveA_scaled[FD_INDEXNEAR],
			gloveA_scaled[FD_MIDDLENEAR],
			gloveA_scaled[FD_RINGNEAR],
			gloveA_scaled[FD_LITTLENEAR],
			msg.trapezium	
		);	//***		
                //printf(" >> %d\n", fdGetGesture(pGloveA));//fdGetNumGestures是顯示總共有幾種手勢可判別，通常不會變 For showing how many gestures that glove can tell
		usleep(10); // sleep 1 millisecond	
		//ss << gloveA_scaled[FD_THUMBNEAR]<<"||"<<gloveB_scaled[FD_THUMBNEAR];
		dataglove_pub.publish(msg);
		ROS_INFO("Publish: OK");
		//ROS_INFO("Check your Right Indexfinger: %0.2f",msg.index);
		//sleep(1); // sleep unit: 1 second
		//usleep(50000);// sleep unit: 1 millisecond
		//i=0;
		
  }
	// Close gloves
	printf("\nClosing glove(s)......\n" );
	fdClose(pGloveA);
	printf("==========Glove(s) closed==========\n\n");

	return 0;
	
 	//ros::spin();
  return 0;
}
