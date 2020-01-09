#! /bin/bash
echo "-- Install Java OpenJDK8 and other tools"
yum install -y java-1.8.0-openjdk-devel vim wget curl git bind-utils rng-tools
yum install -y epel-release
yum install -y python-pip

# cm7
echo "-- Download CM"
wget https://archive.cloudera.com/cm7/7.0/redhat7/yum/cloudera-manager-trial.repo -P /etc/yum.repos.d/

wget https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.46.tar.gz -P ~

wget https://archive.cloudera.com/CFM/csd/1.0.1.0/NIFI-1.9.0.1.0.1.0-12.jar -P /opt/cloudera/csd/
wget https://archive.cloudera.com/CFM/csd/1.0.1.0/NIFICA-1.9.0.1.0.1.0-12.jar -P /opt/cloudera/csd/
wget https://archive.cloudera.com/CFM/csd/1.0.1.0/NIFIREGISTRY-0.3.0.1.0.1.0-12.jar -P /opt/cloudera/csd/
wget https://archive.cloudera.com/cdsw1/1.6.1/csd/CLOUDERA_DATA_SCIENCE_WORKBENCH-CDH6-1.6.1.jar -P cdswjar
wget https://archive.cloudera.com/CEM/centos7/1.x/updates/1.0.1.0/CEM-1.0.1.0-centos7-tars-tarball.tar.gz -P /opt/cloudera/cem