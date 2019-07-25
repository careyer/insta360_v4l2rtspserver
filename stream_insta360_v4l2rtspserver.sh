sudo modprobe v4l2loopback video_nr=5,6
v4l2-ctl --list-devices

#gst-launch-1.0 v4l2src device=/dev/video0 ! videoscale ! video/x-raw,height=240,width=320 ! videoconvert ! x264enc ! autovideosink
#gst-launch-1.0 v4l2src device=/dev/video0 ! videoscale ! videorate ! video/x-raw,height=720,width=1440,framerate=30/1 ! videoconvert ! omxh264enc  control-rate=-1 interval-intraframes=25 periodicty-idr=10 inline-header=true ! filesink location=gst_insta.mp4 --gst-debug 2
#gst-launch-1.0 v4l2src device=/dev/video0 ! videoscale ! video/x-raw,height=920,width=1920,framerate=30/1 ! videoflip method=rotate-180 ! videoflip method=vertical-flip ! videoconvert ! omxh264enc  interval-intraframes=1 periodicty-idr=1 ! filesink location=insta.mp4


#v4l2compress_omx /dev/video1 /dev/video5 &
v4l2rtspserver /dev/video2 &
