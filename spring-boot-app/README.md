# Spring Boot Demo Application

This is a simple Spring Boot application with Spring Web dependency.

## Project Structure
```
spring-boot-app/
├── pom.xml                                    # Maven configuration
├── src/
│   ├── main/
│   │   ├── java/com/example/demo/
│   │   │   ├── DemoApplication.java          # Main application class
│   │   │   └── HelloController.java          # REST controller
│   │   └── resources/
│   │       └── application.properties        # Configuration
│   └── test/
│       └── java/com/example/demo/
```

## How to Run

### Prerequisites
- Java 21 (you already have this!)
- Maven (we'll install this)

### Steps to run:

1. **Navigate to the project directory:**
   ```bash
   cd spring-boot-app
   ```

2. **Build and run the application:**
   ```bash
   ./mvnw spring-boot:run
   ```
   
   Or if you have Maven installed globally:
   ```bash
   mvn spring-boot:run
   ```

3. **Test the endpoints:**
   - Open browser to: http://localhost:8080
   - Try: http://localhost:8080/hello/YourName
   - Try: http://localhost:8080/api/status

## Available Endpoints

- `GET /` - Returns "Hello, Spring Boot!"
- `GET /hello/{name}` - Returns personalized greeting
- `GET /api/status` - Returns application status

## Dependencies Included

- **spring-boot-starter-web**: Includes Spring MVC, REST capabilities, and embedded Tomcat
- **spring-boot-starter-test**: Testing framework

The application will run on port 8080 by default.
