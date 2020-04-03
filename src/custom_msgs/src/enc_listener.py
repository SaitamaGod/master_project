#!/usr/bin/env python
import rospy
from custom_msgs.msg import encoder_msg
import math

# Constants
RADIUS = 1.02
CIRCLE_LENGHT = 2*math.pi*RADIUS
GEAR_RATIO = 42/27
MAX_ROTATION = 8191
STEP_MIN = 1
STEP_MAX = 20
PAUSE_MIN = 10
PAUSE_MAX = 60
MAX_GENERATIONS = 100
encoder_decimal = 0

def gray_to_binary(n):
    """Convert Gray codeword to binary and return it.
    The bin(n) returns n's binary representation
    with a '0b' prefixed the slice operation
    is to remove the prefix
    """
    #n = int(n) # convert to int
    mask = n
    while mask != 0:
        n ^= mask
        mask >>= 1
    return bin(n)[2:]

def mapped(val, in_min, in_max, out_min, out_max):
    """Mapping a value in a given range to another range
    Returns:
    float or int -- the mapped value
    """
    return (val - in_min) * (out_max - out_min) / \
        (in_max - in_min) + out_min


def callback(data):
    print("Inverted bit string")
    print(gray_to_binary(data.pos))
    encoder_decimal = int(gray_to_binary(data.pos),2)
    print("The Rotational value")
    print(mapped(encoder_decimal, 0, MAX_ROTATION, 0, CIRCLE_LENGHT*GEAR_RATIO))

def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('listener', anonymous=True)
    rospy.Subscriber("enc_topic", encoder_msg, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()
