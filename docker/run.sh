
IMAGE_NAME="ubuntu-general"
COMMAND="/bin/bash"

MNT_FROM=${HOME}/research
MNT_TO="/home/${USER}/research"

#-i interactive
#-t stdin/stdout
#-P port remapping
#-v <from>:<to> | volume mounting

docker run -i -t -v ${MNT_FROM}:${MNT_TO} ${IMAGE_NAME} ${COMMAND}
