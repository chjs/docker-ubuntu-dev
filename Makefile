run: build
	docker run \
	--rm -it \
	-v=`pwd`/data:/root/data \
	-e TZ=Asia/Seoul \
	--hostname=docker-ubuntu \
	ubuntu-dev:18.04 /bin/bash
build:
	docker build -f Dockerfile -t ubuntu-dev:18.04 .
