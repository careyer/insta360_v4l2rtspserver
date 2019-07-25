sudo modprobe bcm2835-v4l2
v4l2-ctl --list-devices
v4l2rtspserver /dev/video4
