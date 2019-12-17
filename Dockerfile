FROM noenv/node

LABEL Mantainer="Carlos Bonilla <cbonilla@xmltravelgate.com>" Lang="nodejs"
LABEL description "SonarQube Scanner in NodeJS environment for scanning typescript and javascript projects"

ENV ENV NODE_VERSION=11.12.0
ENV SONAR_SCANNER_VERSION 4.2.0.1873
ENV JAVA_HOME /usr/lib/jvm/default-jvm
ENV PATH $PATH:/sonar-scanner/bin

ADD "https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-${SONAR_SCANNER_VERSION}.zip" /

RUN unzip /tmp/sonar-scanner-cli-${SONAR_SCANNER_VERSION}.zip -d /usr/lib && \
    ln -s /usr/lib/sonar-scanner-${SONAR_SCANNER_VERSION}/bin/sonar-scanner /usr/bin/sonar-scanner

