FROM maven:3-jdk-8-slim


# Builder version
#COPY pom.xml /car-pooling-challenge/pom.xml
#COPY mvnw /car-pooling-challenge/mvnw
#COPY .mvn/ /car-pooling-challenge/.mvn
#COPY src/ /car-pooling-challenge/src
#RUN mvn install -Pprod
RUN mkdir /car-pooling-challenge
WORKDIR /car-pooling-challenge

COPY target/pooling.car-0.0.1.jar /car-pooling-challenge/

EXPOSE 9091

ENTRYPOINT ["java","-jar","/car-pooling-challenge/pooling.car-0.0.1.jar"]
