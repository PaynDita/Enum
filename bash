Hosts are up or responsive on your local network,

for i in {1..255}; do (ping -c 1 192.168.1.${i} | grep “bytes from” &); done

---------------------------------------------------------------------------------

finding all open ports on machine that is up from result above

for i in {1..65535}; do (echo > /dev/tcp/192.168.1.1/$i) >/dev/null 2>&1 && echo $i is open; done

--------------------------------------------------------------------------------------------------
