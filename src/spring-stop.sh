echo "SPRINGBOOT STOP"
SPRING_PID=$(pgrep -f stswebjpa-0.0.1-SNAPSHOT.jar )
sudo kill -9 $SPRING_PID