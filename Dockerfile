FROM cloudbees/jnlp-slave-with-java-build-tools

USER root

RUN add-apt-repository ppa:openjdk-r/ppa -y && apt-get update && apt install openjdk-11-jdk -y && apt-get clean

USER jenkins
