FROM openjdk

WORKDIR /task

COPY task.java .

RUN javac task.java

CMD java task