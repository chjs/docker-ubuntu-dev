FROM ubuntu:18.04

MAINTAINER Jungsik Choi <chjs@skku.edu>

RUN sed -i 's:^path-exclude=/usr/share/man:#path-exclude=/usr/share/man:' \
		/etc/dpkg/dpkg.cfg.d/excludes

RUN apt-get update
RUN apt-get install -y tzdata
RUN apt-get install -y vim build-essential git ctags tmux libpmem-dev
RUN apt-get install -y man manpages-posix

ADD vimrc /root/.vimrc
ADD tmux.conf /root/.tmux.conf
WORKDIR /root

ENTRYPOINT ["/usr/bin/tmux", "new", "-s", "session"]
