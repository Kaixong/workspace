#!/usr/bin/env python

#Just a test.py made by Kumakai.

import rospy
from std_msgs.msg import String
from geometry_msgs.msg import Twist
import sys, select, termios, tty

msg = """
Control Your Turtlebot!
But it will only push forward!
---------------------------
Press s to start/stop robot.

CTRL-C to quit
"""

#moveBindings = {
#        's':(1,0),
#         }

#def getKey():
   # tty.setraw(sys.stdin.fileno())
   # rlist, _, _ = select.select([sys.stdin], [], [], 0.1)
   # if rlist:
   #    key = sys.stdin.read(1)
   # else:
   #     key = ''

   #termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
   #return key

#speed = .2
#turn = 1

def walker():
    rospy.init_node('pushForward', anonymous=True)
    pub = rospy.Publisher('/cmd_vel_mux/input/teleop', Twist, queue_size=5)
    rate = rospy.Rate(10) # 10hz
    print msg
    while not rospy.is_shutdown():
	push_str = "Pushing! %s " % rospy.get_time()
	twist = Twist()	
	rospy.loginfo(push_str)
	twist.linear.x = 1.0; twist.linear.y = 0; twist.linear.z = 0
        twist.angular.x = 2.0; twist.angular.y = 0; twist.angular.z = 0
        pub.publish(twist)
	#rospy.loginfo("\n")
	rospy.loginfo(twist)
	rate.sleep()


if __name__ == '__main__':
    try:	
        walker()
    except rospy.ROSInterruptException:
        pass
