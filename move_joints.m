
pub_node = ros2node("pub_node")
chatterPub = ros2publisher(pub_node,"/effort_controllers/commands","std_msgs/Float64MultiArray");

chatterMsg = ros2message(chatterPub);
chatterMsg.data = [ones(1,6)];

send(chatterPub,chatterMsg)

%% Continuous:
A = 0;
B = 0;
C = 1;
D = 1;

L = place(A', C', [-30])'

%% Discrete:

A = 1;
B = 0;
C = 1;
D = 1;

L = place(A', C', [exp(-40*0.01)])'
