# This is a message that holds data to describe the target of a set of torque controlled joints.
#
# The target of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint targets were recorded. All the joint targets
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint target.
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty.
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# targets.

std_msgs/Header header

string[] name
float64[] position
float64[] velocity
float64[] effort
