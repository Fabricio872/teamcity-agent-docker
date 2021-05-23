# Teamcity agent for Docker projects

Docker container for building docker apps based on [jetbrains/teamcity-agent](https://hub.docker.com/r/jetbrains/teamcity-agent/) image

## Installation
```bash
docker run -d -e SERVER_URL="<server-url:8111>" -e AGENT_NAME="<agent-name>" -v /var/run/docker.sock:/var/run/docker.sock --restart unless-stopped fabrik/teamcity-agent-docker
```

## aditional configs
 - agent.type=docker
