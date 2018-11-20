#此檔案適用於第一次使用5DT感測手套或重灌Linux後迅速建立ROS與5DT的連結

1.參ROS建立package步驟(/home/[User's name]/note/ros_note/ros_note):
$ cd ~/
$ mkdir workspace
#可能會出現:這個檔案已經存在了，代表你建過了!
$ cd workspace
$ mkdir dataglove
$ cd dataglove
#註:[path of workspace]為你所創立的工作區路徑
$ mkdir src
$ cd src
$ catkin_create_pkg dataglovetest roscpp std_msgs

2.依照/home/[User's name]/workspace/dataglove備份/src/dataglovetest/package.xml修改/home/[User's name]/workspace/dataglove/src/dataglovetest/package.xml 中有關message_generation的部份

3.複製/home/shabadabadoo/workspace/dataglove備份/src目錄下，除/home/[User's name]/workspace/dataglove備份/src/dataglovetest/package.xml與/home/[User's name]/workspace/dataglove備份/src/ihand/ihand_scripts_joy 資料夾之外，所有檔案至相應/home/[User's name]/workspace/dataglove/src位置

4.放置5DT函式庫:
$ ./home/[User's name]/workspace/dataglove備份/5DTDataGloveUltra_SDK_Linux_32and64bit_v2.32_25March2011/fdGlove/install/64bit/install.sh

5.編譯:
$ cd ~/workspace/dataglove
$ . devel/setup.bash
$ catkin_make

6.修改/home/[User's name]/bin/DataGlove.sh與/home/[User's name]/桌面/DataGlove 桌面組態檔中有關[User's name]與[User's key]的內容

7.如未有出現錯誤=>完成~
