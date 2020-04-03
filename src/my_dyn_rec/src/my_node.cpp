#include <ros/ros.h>

#include <dynamic_reconfigure/server.h>
#include <my_dyn_rec/MyParamsConfig.h>

void callback(my_dyn_rec::MyParamsConfig &config, uint32_t level) {
  ROS_INFO("Reconfigure Request: %d %f %s %d",
            config.int_param, config.freq_param,
            config.bool_param?"True":"False",
            config.size);
}

int main(int argc, char **argv) {
  ros::init(argc, argv, "dynamic_tutorials");

  dynamic_reconfigure::Server<my_dyn_rec::MyParamsConfig> server;
  dynamic_reconfigure::Server<my_dyn_rec::MyParamsConfig>::CallbackType f;

  f = boost::bind(&callback, _1, _2);
  server.setCallback(f);

  ROS_INFO("Spinning node");
  ros::spin();
  return 0;
}
