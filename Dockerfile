FROM maven:3.8.4-openjdk-17
WORKDIR /app
COPY . /app
RUN mvn -f /app/pom.xml clean install
CMD ["mvn", "clean", "install"]
