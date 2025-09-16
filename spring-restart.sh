#!/bin/bash

SPRING_PID=$(pgrep -f stswebjpa-0.0.1-SNAPSHOT.jar)
SPRING_PATH="/home/lee/stswebjpa/target/stswebjpa-0.0.1-SNAPSHOT.jar"

echo $SPRING_PID
echo $SPRING_PATH

#서버가 종료되었는지 확인
# $SPRING_PID는 문자열이 아니기 때문에 쌍따옴표로 감싸주기
#1>> 는 append 1>는 정상적으로될때 2>는 에러일때
if [ -z "$SPRING_PID" ]; then
  echo "스프링이 종료된 상태..." 
  echo "스프링 재시작 - $(date)" 1>> /home/lee/stswebjpa/spring-restart.log
  echo "1234" | nohup sudo -S java -jar $SPRING_PATH 1> /home/lee/stswebjpa/log.out 2> /home/lee/stswebjpa/err.out &
else
  echo "스프링이 시작된 상태..."
fi