#!/usr/bin/env python
import rospy
from std_msgs.msg import String


def getUserInput():
    disp = 'Choose the computation location (s for server, l for local)'
    pub =  rospy.Publisher('diagnostic', String, queue_size=10)
    locationDict = {'l' : '0', 's' : '1'}
    while(True):
        input = raw_input(disp).lower()
        if input == 'l' or input == 's':
            msg = String(locationDict[input])
            pub.publish(msg)
        elif input == 'q':
            return
        else:
            print "Try again!"
            continue


if __name__ == '__main__':
    rospy.init_node('comp_loc_test' , anonymous=True)
    getUserInput()