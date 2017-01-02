
docker pull ubuntu:14.04

#Generate the Dockerinfo file (with custom user)
USERNAME=`id -u -n`
MY_UID=`id -u`
MY_GID=`id -g`

docker build -t ubuntu-general --build-arg UNAME=${USERNAME} --build-arg UID=${MY_UID} --build-arg GID=${MY_GID} .
