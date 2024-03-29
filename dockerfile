From openjdk:8
CCOPY . /SRC/JAVA
WORKDIR /SRC/JAVA
RUN ["javac","SwapNumbers.java"]
ENTRYPOINT['java','SwapNumbers']
