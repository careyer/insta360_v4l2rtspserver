sudo modprobe v4l2loopback video_nr=5,6 exclusive_caps=0
v4l2-ctl --list-devices
#gst-launch-1.0 videotestsrc ! omxh264enc interval-intraframes=1 periodicty-idr=1 ! v4l2sink device=/dev/video5 &
gst-launch-1.0 videotestsrc ! v4l2sink device=/dev/video5 &
v4l2rtspserver /dev/video5


