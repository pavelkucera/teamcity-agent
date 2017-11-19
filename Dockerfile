FROM jetbrains/teamcity-minimal-agent:2017.1.5

ENV DOCKER_SOCKET_PATH=/var/run/docker.sock

RUN apt-get update && \
	apt-get install -y git apt-transport-https ca-certificates curl software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && \
	add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" && \
	apt-get update && \
	apt-get install -y docker-ce

VOLUME $DOCKER_SOCKET_PATH
