! gst-launch-1.0 zmqsrc endpoint="tcp://172.18.0.2:5556" ! fdsink fd=1

! gst-launch-1.0 -v v4l2src device=/dev/video0 ! videoconvert ! videoscale ! video/x-raw , framerate=30/1 ! zmqsink

