#!/bin/sh
wgconf=/etc/storage/wg0.conf
start_wg() {
	logger -t "WIREGUARD" "正在启动wireguard"
    /usr/bin/wg-quick up ${wgconf}
}


stop_wg() {
	/usr/bin/wg-quick down ${wgconf}
	logger -t "WIREGUARD" "正在关闭wireguard"
}



case $1 in
start)
	start_wg
	;;
stop)
	stop_wg
	;;
*)
	echo "check"
	#exit 0
	;;
esac
