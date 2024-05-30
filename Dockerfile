FROM maven:3.8.4-openjdk-17
WORKDIR /myapp
COPY . /
CMD ["mvn", "clean", "install"]
