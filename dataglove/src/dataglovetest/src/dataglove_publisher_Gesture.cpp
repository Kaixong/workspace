#include "ros/ros.h"
#include "std_msgs/String.h"
#include "dataglovetest/dataglove_data.h"//***不知道其它的方式能不能引用？
#include "fglove.h"//***
#include <stdio.h>
#include <string.h>
#include <unistd.h>  // for usleep-----*/

#include "ihand_control/hand.h"//引入機械手格式
#include <cmath>//include for abs()
//#include <conio.h>//include for getch(),doesn't exists in linux.

#include <std_msgs/Empty.h>//***這兩個可能還會用到(1)
#include <sstream>//(1)

#define PAUSE printf("\nPress Enter key to continue..."); fgetc(stdin); //define PAUSE that will let user input commands
#define CLEANINPUT fgetc(stdin); //To clean input command.
#define Stop ;fgetc(stdin);//***緊急停止(撰寫中)

/**
 * This tutorial demonstrates simple sending of messages over the ROS system.
 */

int main(int argc, char **argv)//
{  
	char    *szPort1    = NULL;//***
	//char    *szPort2    = NULL;
	fdGlove *pGloveA    = NULL;
	//fdGlove *pGloveB    = NULL;
	int      glovetype = FD_GLOVENONE;

	if (argc<2)	//可控制輸入參數數量
	{
		printf("\n========== Usage: callback <devicename>\n");
		printf("Example: [$ rosrun dataglovetest dataglove_publisher_OnlyRight /dev/usb/hiddev0 /*/dev/usb/hiddev1*/ ]\n");//提示輸入格式
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

  	ros::init(argc, argv, "dataglove_publisher_Gesture");    
  	ros::NodeHandle p;  
  	//ros::Subscriber dataglove_sub = p.subscribe("/mobile_base/events/bumper", 1, BumperCallback);	//設定訂閱***
  	ros::Publisher dataglove_pub = p.advertise<ihand_control::hand>("iHand/cmd_pos",1 );	//設定發布***
  	ros::Rate loop_rate(10); 
	ROS_INFO("\n==========ROS standby==========\nIf you want to stop now,just input Ctrl+C & press any key,then press Enter several times until the glove is closed.");
	char mode;
	printf("\nINPUT the mode that you want to operate.\n(0:Command Mode; 1:Glove Mode)\n");
	scanf("%c", &mode);
	CLEANINPUT
	unsigned short gloveA_scaled[18];
	//unsigned short gloveB_scaled[18];

	float range[5][2];//5 fingers' limits,[0]=max,[1]=min

	if(mode == '1'){//Glove Mode***
	printf("\n==========Enter Glove Mode.==========\n");
	//---------------------------------------------------------------------------------------
	// Now begin the correction***
	
	float error_tolerance=0;
	    printf("==========Begin the correction==========");
	    printf("\nPlease make the gesture: \"4\",");
	    PAUSE
	    fdGetSensorRawAll(pGloveA, gloveA_scaled);//原始數值
	    range[0][0]=gloveA_scaled[FD_THUMBNEAR]+error_tolerance;
	    range[1][1]=gloveA_scaled[FD_INDEXNEAR]-error_tolerance;
	    range[2][1]=gloveA_scaled[FD_MIDDLENEAR]-error_tolerance;
	    range[3][1]=gloveA_scaled[FD_RINGNEAR]-error_tolerance;
	    range[4][1]=gloveA_scaled[FD_LITTLENEAR]-error_tolerance;
	    printf("OK\n");
	    printf("\nPlease make the gesture: \"Thumbs up\",");
	    PAUSE
	    fdGetSensorRawAll(pGloveA, gloveA_scaled);//原始數值
	    range[0][1]=gloveA_scaled[FD_THUMBNEAR]-error_tolerance;
	    range[1][0]=gloveA_scaled[FD_INDEXNEAR]+error_tolerance;
	    range[2][0]=gloveA_scaled[FD_MIDDLENEAR]+error_tolerance;
	    range[3][0]=gloveA_scaled[FD_RINGNEAR]+error_tolerance;
	    range[4][0]=gloveA_scaled[FD_LITTLENEAR]+error_tolerance;
	    printf("OK\n\n==========Correction is over==========");
	    PAUSE
    	}else if(mode == '0'){//Command Mode***
		printf("\n==========Enter Command Mode.==========");
	}else{	printf("\nWrong command!!Exiting...\n");
		printf("==========Glove(s) closed==========\n\n");
		return -1;
	}
    		float poses[32][5]={
		0,0,0,0,0,
		1,0,0,0,0,
		0,1,0,0,0,
		1,1,0,0,0,
		0,0,1,0,0,
		1,0,1,0,0,
		0,1,1,0,0,
		1,1,1,0,0,
		0,0,0,1,0,
		1,0,0,1,0,
		0,1,0,1,0,
		1,1,0,1,0,
		0,0,1,1,0,
		1,0,1,1,0,
		0,1,1,1,0,
		1,1,1,1,0,
		0,0,0,0,1,
		1,0,0,0,1,
		0,1,0,0,1,
		1,1,0,0,1,
		0,0,1,0,1,
		1,0,1,0,1,
		0,1,1,0,1,
		1,1,1,0,1,
		0,0,0,1,1,
		1,0,0,1,1,
		0,1,0,1,1,
		1,1,0,1,1,
		0,0,1,1,1,
		1,0,1,1,1,
		0,1,1,1,1,
		1,1,1,1,1		
		};//Hand's Poses(index,middle,ring,baby,thumb)//練習2進位LOL
    
	//---------------------------------------------------------------------------------------
  while (ros::ok())
  {   		
		ihand_control::hand msg;
		int Gesture = 0; 

		if(mode == '1'){//Glove Mode***				
			fdGetSensorRawAll(pGloveA, gloveA_scaled);//原始數值
			float Rthumb=(gloveA_scaled[FD_THUMBNEAR]-range[0][1]);//mapping校正
			float Rindex=(gloveA_scaled[FD_INDEXNEAR]-range[1][1]);
			float Rmiddle=(gloveA_scaled[FD_MIDDLENEAR]-range[2][1]);
			float Rring=(gloveA_scaled[FD_RINGNEAR]-range[3][1]);
			float Rbaby=(gloveA_scaled[FD_LITTLENEAR]-range[4][1]);
		
			//判斷Gesture		
                        float zone = 0.5;
			if(fabs(1-Rthumb/(range[0][0]-range[0][1]))>(1-zone)){
			Gesture = Gesture + 16;
			}
			if(fabs(1-Rindex/(range[1][0]-range[1][1]))>(1-zone)){
			Gesture = Gesture + 1;
			}
			if(fabs(1-Rmiddle/(range[2][0]-range[2][1]))>(1-zone)){
			Gesture = Gesture + 2;
			}
			if(fabs(1-Rring/(range[3][0]-range[3][1]))>(1-zone)){
			Gesture = Gesture + 4;
			}
			if(fabs(1-Rbaby/(range[4][0]-range[4][1]))>(1-zone)){
			Gesture = Gesture + 8;
			}
			//if(){//無法判定之手勢(撰寫中)***
			//Gesture = -1;
			//}
					
		//Glove Mode Over***

		}else if(mode == '0'){//Command Mode***
			printf("\nInput your command.(0~31)\n");
			scanf("%d", &Gesture);	//小心!若輸入非int之值，會出現bug!(待解決)***				
			if((Gesture>=0)&&(Gesture<=31)){			
			}else{
			printf("\nWrong command! Let Gesture be 31.\n");
				Gesture = 31 ;
			}
			
		}//Command Mode Over***

		ROS_INFO("A:%0.2f|%0.2f|%0.2f|%0.2f|%0.2f|%0.2f >> %d",//顯示傳出資料			
			msg.thumb=20-20*poses[Gesture][4],			
			msg.index=20-20*poses[Gesture][0],	//control by Gesture
			msg.middle=20-20*poses[Gesture][1],			
			msg.ring=20-20*poses[Gesture][2],			
			msg.baby=20-20*poses[Gesture][3],	
                        msg.trapezium=20*poses[Gesture][4],  //range for open & half status
			Gesture	
		);

		usleep(10); // sleep 1 millisecond	
		dataglove_pub.publish(msg);//發送ROS資料
		//ROS_INFO("Publish: OK");

  }
	// Close gloves
	printf("\nClosing glove(s)......\n" );
	fdClose(pGloveA);
	printf("==========Glove(s) closed==========\n\n");

	return 0;
	
 	//ros::spin();
  return 0;
}
