run: build
	docker run \
	--rm -it \
	-v=`pwd`/workplace:/root/workplace \
	-e TZ=Asia/Seoul \
	-e TERM=xterm-color \
	--hostname=ubuntu \
	ubuntu-dev:18.04 /bin/bash
build:
	docker build -f Dockerfile -t ubuntu-dev:18.04 .
