FROM openjdk:8-jre-alpine
VOLUME /tmp
RUN apk --no-cache add curl && apk --no-cache add tzdata && apk --no-cache add tomcat-native
#打出来jar名字
ADD target/demo-1.0.jar /app.jar
#这里可以加运行环境参数
ENV JAVA_OPTS=""
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar
# 端口
EXPOSE 8082

