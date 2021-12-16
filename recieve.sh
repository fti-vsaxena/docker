#! gst-launch-1.0 zmqsrc endpoint="tcp://172.18.0.2:5556" ! videoconvert ! videoscale ! video/x-raw , width=640, height=480 , framerate=10/1 ! multifilesink location=snapshot-%05d.jpg -v

#! gst-launch-1.0 zmqsrc endpoint="tcp://172.18.0.2:5556" ! fdsink fd=1

! gst-launch-1.0 zmqsrc endpoint="tcp://172.18.0.2:5556" ! video/x-raw, width=640, height=480, framerate=30/1 ! jpegenc ! multifilesink location=snapshot-%05d.jpg
