# Use a lightweight OpenJDK image
FROM openjdk:17-slim

# Set the working directory
WORKDIR /app

# Copy source code to container
COPY App.java .

# Compile Java program
RUN javac App.java

# Run the compiled Java program
CMD ["java", "App"]
