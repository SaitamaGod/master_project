#include <ros/ros.h>
#include "custom_msgs/valve_msg.h"
#include <stdlib.h>


int main(int argc, char **argv){

  ros::init(argc, argv, "valve_publisher");

  ros::NodeHandle n;


  ros::Publisher valve_pub = n.advertise<custom_msgs::valve_msg>("pwm_topic", 1000);
  ros::Rate loop_rate(10);


  int duty, frequency, valve_numb;
  int min_duty = 200;
  int min_freq = 200;
  int max_duty = 550;
  int max_freq = 550;


  while (ros::ok()){
    duty = rand() %(max_duty -min_duty +1);
    frequency = rand() %(max_freq -min_freq +1);
    valve_numb = 9 + ( rand() % ( 12 - 9 + 1 ) );

    custom_msgs::valve_msg msg;
    msg.PWM_duty = duty;
    msg.PWM_freq = frequency;
    msg.PWM_valve_nr = valve_numb;

    ROS_INFO("Duty %i", msg.PWM_duty);
    ROS_INFO("Frequnecy %i", msg.PWM_freq);
    ROS_INFO("Valve number %i", msg.PWM_valve_nr);

    valve_pub.publish(msg);
    ros::spinOnce();
    loop_rate.sleep();
  }

return 0;
}
