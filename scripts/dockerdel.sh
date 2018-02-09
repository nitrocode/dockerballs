docker rmi $(docker images | grep "rb/node" | awk '{ print $3 }')
