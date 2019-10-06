#!/bin/bash

case $1 in 
	start)
	    go build
		nohup ./go-cms 2>&1 >> project.log 2>&1 /dev/null &
		echo "服务已启动..."
		sleep 1
	;;
	stop)
		killall go-cms
		echo "服务已停止..."
		sleep 1
	;;
	restart)
		killall go-cms
		sleep 1
		nohup ./go-cms 2>&1 >> project.log 2>&1 /dev/null &
		echo "服务已重启..."
		sleep 1
	;;
	*) 
		echo "$0 {start|stop|restart}"
		exit 4
	;;
esac