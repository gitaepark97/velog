FROM amazoncorretto:21-alpine
RUN apk add curl
EXPOSE 8080
ADD build/libs/*.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]