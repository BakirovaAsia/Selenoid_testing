FROM tomcat:latest
RUN apt-get update && apt-get install maven -y && apt-get install git -y

RUN git clone https://github.com/jonbos/CaucusCalculator.git
WORKDIR /usr/local/tomcat/CaucusCalculator/
RUN mvn package

RUN cp ./target/CaucusCalculator-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/
RUN cp -r  ./target/CaucusCalculator-0.0.1-SNAPSHOT /usr/local/tomcat/webapps/CaucusCalculator-0.0.1-SNAPSHOT