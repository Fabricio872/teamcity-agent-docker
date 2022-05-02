FROM jetbrains/teamcity-agent

USER root

RUN apt update && apt upgrade -y
RUN apt -y install software-properties-common

RUN mkdir /root/.ssh
RUN echo "Host *\n    StrictHostKeyChecking no" > /root/.ssh/config -e

COPY buildAgent.dist.properties /opt/buildagent/conf/buildAgent.dist.properties

CMD ["/run-services.sh"]
