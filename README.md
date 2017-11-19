# Usage

```sh
docker run -it -e SERVER_URL="<url to TeamCity server>"  \
    -v <path to agent config folder>:/data/teamcity_agent/conf  \
    -v <path to docker.sock>:/var/run/docker.sock
    pavelkucera/teamcity-agent
```
