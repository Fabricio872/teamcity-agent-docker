FROM jetbrains/teamcity-agent

USER root

RUN apt update && apt upgrade -y
RUN apt -y install software-properties-common

RUN mkdir /root/.ssh
RUN echo -e "Host *\n    StrictHostKeyChecking no" >> /root/.ssh/config
RUN echo -e "name=docker\n" > /data/teamcity_agent/conf/buildAgent.dist.properties

COPY buildAgent.dist.properties /opt/buildagent/conf/buildAgent.dist.properties

CMD ["/run-services.sh"]
