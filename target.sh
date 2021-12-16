#! gst-launch-1.0 -v v4l2src device=/dev/video0 ! videoconvert! videoscale ! video/x-raw , width=640, height=480 , framerate=10/1 ! zmqsink

#! gst-launch-1.0 fdsrc fd=0 ! zmqsink

#v4l2src device=/dev/video0 ! videoconvert! videoscale ! video/x-raw, width=640, height=480 ! autovideosink -v

! gst-launch-1.0 v4l2src device=/dev/video0 ! video/x-raw , framerate=30/1 ! jpegenc ! zmqsink
