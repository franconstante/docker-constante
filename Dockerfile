FROM centos

RUN yum install -y \
       java-1.8.0-openjdk \
       java-1.8.0-openjdk-devel

RUN yum install -y maven \
 && yum install -y curl \ 
 && yum install -y unzip \
 && yum install -y wget \
 && yum install -y rpm \
 && yum install -y initscripts \
 && wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo \
 && rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key \
 && yum install -y jenkins 

EXPOSE 8080

ENTRYPOINT /etc/init.d/jenkins start && bash