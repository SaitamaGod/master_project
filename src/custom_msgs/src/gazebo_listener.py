#!/usr/bin/env python
import rospy
from std_msgs.msg import Float64
from gazebo_msgs.msg import LinkStates
from geometry_msgs.msg import Pose
from geometry_msgs.msg import Twist
from geometry_msgs.msg import Quaternion
from tf.transformations import euler_from_quaternion, quaternion_from_euler
import math

# Constants
RADIUS = 1.02
CIRCLE_LENGHT = 2*math.pi*RADIUS
GEAR_RATIO = 42/27
MAX_ROTATION =  2*math.pi
STEP_MIN = 1
STEP_MAX = 20
PAUSE_MIN = 10
PAUSE_MAX = 60
MAX_GENERATIONS = 100
encoder_decimal = 0


def mapped(val, in_min, in_max, out_min, out_max):
    """Mapping a value in a given range to another range
    Returns:
    float or int -- the mapped value
    """
    return (val - in_min) * (out_max - out_min) / \
        (in_max - in_min) + out_min



class GazeboLinkPose:
  link_name = ''
  link_pose = Pose()
  publish_rate = 1
  theta = 0
  def __init__(self, link_name, publish_rate):
    self.link_name = link_name
    self.link_name_rectified = link_name.replace("::", "_")
    self.publish_rate = publish_rate

    if not self.link_name:
      raise ValueError("'link_name' is an empty string")

    self.states_sub = rospy.Subscriber("/gazebo/link_states", LinkStates, self.callback)
    self.pose_pub = rospy.Publisher("/gazebo/" + self.link_name_rectified, Pose, queue_size = 10)
    self.theta_pub = rospy.Publisher("/gazebo/theta", Float64, queue_size = 10)

  def callback(self, data):
    try:
      ind = data.name.index(self.link_name)
      self.link_pose = data.pose[ind]
      orientation_list = [ self.link_pose.orientation.x,  self.link_pose.orientation.y,  self.link_pose.orientation.z, self.link_pose.orientation.w]
      (roll, pitch, yaw) = euler_from_quaternion (orientation_list)
      self.theta = yaw
    except ValueError:
      pass

if __name__ == '__main__':
  try:
    rospy.init_node('gazebo_link_pose', anonymous=True)
    gp = GazeboLinkPose('two_dof_robot::hub_top', 10)
    publish_rate = 1
    rate = rospy.Rate(gp.publish_rate)
    while not rospy.is_shutdown():
      gp.pose_pub.publish(gp.link_pose)
      gp.theta_pub.publish(gp.theta)
      rate.sleep()

  except rospy.ROSInterruptException:
    pass
