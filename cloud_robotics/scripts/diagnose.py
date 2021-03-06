#!/usr/bin/env python
import rospy
import psutil
import subprocess
import re
import sys
from std_msgs.msg import String

"""
	Usage: rosrun cloud_robotics diagnose "hostname"

	Server needs to be running "iperf -s -D" which puts it in daemon mode

	minBW  = minimum bandwidth allowed to run (bits/sec)
	thresh = current percentage of CPU stress, set to 75% (subject to change)
"""


minBW = 1000  	# Set to approx 1 Mbps
thresh = 75		# Set to 75%
host = sys.argv[1]  # Set host by command line argument


def ping(host):
	""" Test connection Bandwidth """
	png = subprocess.Popen(
		["ping", host, "-c1", "-w1"],
		stdout=subprocess.PIPE,
		stderr=subprocess.PIPE
	)
	out, error = png.communicate()
	""" If there is a problem, return 0 error else return 1 """
	if error != "":
		print error
		return 100
	else:
		matcher = re.compile("\d+% packet loss")
		result = matcher.search(out).group()
		result = result.strip("% packet loss")
		result = int(result)
		return result


def bw(host):
	""" Test connection Bandwidth """

	bWidth = subprocess.Popen(
		["iperf", "-c", host, "-fk", "-t1"],
		stdout=subprocess.PIPE,
		stderr=subprocess.PIPE
	)
	
	""" This attempts to use iperf, if it can't connect, it throws an error """
	out, error = bWidth.communicate()
	if error != "":
		print error
		return 0
	else:
		matcher = re.compile("(\d+.\d+) Kbits/sec")
		result = matcher.search(out).group()
		result = result.strip(" Kbits/sec")
		result = float(result)
		return result


def cpu():
	""" Test cpu average load """
	return psutil.cpu_percent(interval=0.5)


def publish():
	"""
		Publisher for the diagnostic service. This runs each test
		and returns the appropriate value depending on the results.
	"""
	pub = rospy.Publisher('diagnostic', String, queue_size=1)
	rospy.init_node('diag', anonymous=True)
	cpuTest = pingTest = bwTest = 1
	count = 5
	while not rospy.is_shutdown():
		if host != 0:
			pingTest = str(ping(host))
			if int(pingTest) == 0 and count == 5:  # Test bandwidth every 5th ping
				bwTest = str(bw(host))
				count = 0
			cpuTest = str(cpu())
			if int(pingTest) == 0 and float(bwTest) >= minBW:
				pub.publish("1")
			elif int(pingTest) == 0 and float(bwTest) <= minBW and float(cpuTest) >= thresh:
				pub.publish("1")
			else:
				pub.publish("0")
			count += 1
		else:
			pub.publish("0")

if __name__ == '__main__':
	try:
		publish()
	except rospy.ROSInterruptException:
		pass
