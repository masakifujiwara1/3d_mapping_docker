# 3d_mapping_docker
「Ubuntu + ROS/ROS2 + いくつかのビルド済み3d-slamパッケージ」を含むDocker環境を提供します.  
Provides a Docker environment including "Ubuntu + ROS/ROS2 + some pre-built 3d-slam packages".

## Quick Start
Run the docker container. Add the `--rm` option depending on the situation.  
※ If you do not want to save your changes, it is recommended to use the `--rm` option.
```
./run.sh
```

## After the second
launch (Rename containers as necessary)
```
docker start my-humble
```
login
```
./login.sh
```
close (Rename containers as necessary)
```
docker stop my-humble
```

## Build (option)
If you want to customize `.bashrc` or `.vimrc`, please change the files in config/.  
After the change, execute the following command.
```
./build.sh
```
※ In this case, it is necessary to change the image used in run.sh

## Details of each branch
* [ros2-humble](https://github.com/masakifujiwara1/3d_mapping_docker/tree/ros2-humble)
  * 3d-slam: [LIO-SAM](https://github.com/TixiaoShan/LIO-SAM), [li_slam_ros2](https://github.com/rsasaki0109/li_slam_ros2), [cartographer](https://github.com/ros2/cartographer)
  * other ROS src: [imu_tools](https://github.com/CCNYRoboticsLab/imu_tools)
  * apt install: vim, git, tmux  
* [ros1-noetic](https://github.com/masakifujiwara1/3d_mapping_docker/tree/ros1-noetic)
  * 3d-slam: [cartographer](https://github.com/ros2/cartographer)
  * apt install: vim, git, tmux
* [cartographer-tsukuba2023](https://github.com/masakifujiwara1/3d_mapping_docker/tree/cartographer-tsukuba2023) -> Customized cartographer parameters and more for Tsukuba Challenge 2023
  * 3d-slam: [LIO-SAM](https://github.com/TixiaoShan/LIO-SAM), [li_slam_ros2](https://github.com/rsasaki0109/li_slam_ros2), [cartographer](https://github.com/ros2/cartographer)
  * other ROS src: [imu_tools](https://github.com/CCNYRoboticsLab/imu_tools)
  * apt install: vim, git, tmux

## Docker tags on hub.docker.com
- [humble-mappings](https://hub.docker.com/repository/docker/masakifujiwara1/ros2/tags?page=1&ordering=last_updated&name=humble-mappings) which is based on branch: [ros2-humble](https://github.com/masakifujiwara1/3d_mapping_docker/tree/ros2-humble)
- [noetic-cartographer](https://hub.docker.com/repository/docker/masakifujiwara1/ros1/tags?page=1&ordering=last_updated&name=noetic-cartographer) which is based on branch: [ros1-noetic](https://github.com/masakifujiwara1/3d_mapping_docker/tree/ros1-noetic)
- [humble-mappings](https://hub.docker.com/repository/docker/masakifujiwara1/ros2/tags?page=1&ordering=last_updated&name=humble-mappings) which is based on branch: [cartographer-tsukuba2023](https://github.com/masakifujiwara1/3d_mapping_docker/tree/cartographer-tsukuba2023)

## Related Projects
* https://github.com/masakifujiwara1/cuda_pytorch_ros2_docker
  * under maintenance
* https://github.com/masakifujiwara1/cuda_pytorch_ros1_docker
  * under maintenance
* https://github.com/masakifujiwara1/ros1_docker
  * under maintenance

## License
BSD

## Tested on ...
- ubuntu 20.04 LTS
