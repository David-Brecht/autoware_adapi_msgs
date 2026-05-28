# State message for the teleoperation system, representing the current operational
# status and active control mode of the teleoperation interface.

# Standard ROS header with timestamp and frame ID. (required)
std_msgs/Header header

# Current state of the teleoperation system. (required)
# e.g. TELEOP_STATUS_IDLE
uint8 state

# Active teleoperation control mode. (required)
# e.g. TELEOP_MODE_DIRECT
uint8 mode

# Teleoperation system state constants
uint8 TELEOP_STATUS_IDLE = 0           # System is inactive, no active session
uint8 TELEOP_STATUS_UPLINK_ONLY = 1    # Uplink established, not yet in full teleoperation
uint8 TELEOP_STATUS_TELEOPERATION = 2  # Full teleoperation session active

# Teleoperation mode constants
uint8 TELEOP_MODE_DIRECT = 0                  # Operator directly controls vehicle commands
uint8 TELEOP_MODE_SHARED = 1                  # Shared control between operator and automation
uint8 TELEOP_MODE_WAYPOINT = 2                # Operator sends waypoints for autonomous execution
uint8 TELEOP_MODE_TRAJECTORY_GUIDANCE = 3     # Operator provides trajectory guidance
uint8 TELEOP_MODE_SAFECORRIDOR = 4            # Operator defines a safe corridor for navigation
uint8 TELEOP_MODE_PERCEPTION_MODIFICATION = 5 # Operator modifies perception inputs
uint8 TELEOP_MODE_NONE = 99                   # No mode selected
