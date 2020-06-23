FROM cloudbees/jnlp-slave-with-java-build-tools

USER root

RUN add-apt-repository ppa:openjdk-r/ppa -y && apt-get update && apt install openjdk-11-jdk -y && apt-get clean

USER jenkins

ENTRYPOINT ["/opt/bin/entry_point.sh", "/usr/local/bin/jenkins-slave"]
