FROM openjdk:17.0
WORKDIR /app
COPY /target/vmob-hiring-backend-app-0.0.1-SNAPSHOT.jar /app/vmob-hiring-backend-app-0.0.1-SNAPSHOT.jar
EXPOSE 8080
CMD [ "java","-jar","vmob-hiring-backend-app-0.0.1-SNAPSHOT.jar" ]
