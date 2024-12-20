FROM openjdk

WORKDIR /app

COPY task.java .

RUN javac task.java

CMD java task.java
