# use the official openjdk image as a base image
FROM openjdk:17-jdk-slim

# set the working directory in the container
WORKDIR /app

# copy all file from host (source) to container (destination)
COPY src/ /app/src/

# build the application
RUN javac Main.java

# run the application
CMD ["java", "Main"]

