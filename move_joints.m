
pub_node = ros2node("pub_node")
chatterPub = ros2publisher(pub_node,"/effort_controllers/commands","std_msgs/Float64MultiArray");

chatterMsg = ros2message(chatterPub);
chatterMsg.data = [ones(1,6)];

send(chatterPub,chatterMsg)