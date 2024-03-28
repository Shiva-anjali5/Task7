# Use a base image with JDK pre-installed
FROM openjdk:11 as builder

# Set the working directory inside the container
WORKDIR /app

# Copy the Java source code into the container
COPY SwapNumber.java /app

# Compile the Java source code
RUN javac SwapNumber.java

# Use a lightweight base image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled Java class file into the container
COPY --from=builder /app/SwapNumber.class /app

# Command to run the Java application
CMD ["java", "SwapNumber"]
