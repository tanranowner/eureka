#第一行必须是FROM
FROM java:8
LABEL email=zhaoyunlong.org@gmail.com
ADD eureka-0.0.1-SNAPSHOT.jar /opt/eureka-0.0.1-SNAPSHOT.jar
EXPOSE 5555
RUN mkdir -p /opt/logs
CMD java -jar /opt/eureka-0.0.1-SNAPSHOT.jar > /opt/logs/eureka.log
