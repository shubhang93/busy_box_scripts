FILENAME="$1"
cat $FILENAME | \
while read server; do
  server_port=`echo $server|sed 's/:/ /'`
  echo "$server_port"
  eval "echo sleep 0.5|telnet $server_port"
done
