From openjdk:8
COPY . /SRC/JAVA
WORKDIR /SRC/JAVA
RUN ["javac","SwapNumbers.java"]
ENTRYPOINT ['java','SwapNumbers']
