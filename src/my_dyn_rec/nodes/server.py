#!/usr/bin/env python

import rospy

from dynamic_reconfigure.server import Server
from my_dyn_rec.cfg import MyParamsConfig

def callback(config, level):
    rospy.loginfo("""Reconfigure Request: {int_param}, {freq_param}, {bool_param}, {size}""".format(**config))
    return config

if __name__ == "__main__":
    rospy.init_node("dynamic_server", anonymous = False)

    srv = Server(MyParamsConfig, callback)
    rospy.spin()
