#!/usr/bin/env python

import rospy

import dynamic_reconfigure.client

def callback(config):
    rospy.loginfo("Config set to {int_param}, {freq_param}, {bool_param}, {size}".format(**config))

if __name__ == "__main__":
    rospy.init_node("dynamic_client")

    client = dynamic_reconfigure.client.Client("dynamic_server", timeout=30, config_callback=callback)

    r = rospy.Rate(0.1)
    x = 0
    b = False
    while not rospy.is_shutdown():
        current_config = {}
        current_config = client.get_configuration()
        client.update_configuration({"int_param":x, "freq_param":(current_config['freq_param'] + 10), "bool_param":b, "size":1})
        r.sleep()
