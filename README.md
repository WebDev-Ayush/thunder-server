# Spring Boot Web Server

## Overview
A high-performance web server built with Spring Boot 3, designed for modern cloud-native applications. This project demonstrates the power of Spring Boot combined with GraalVM Native Image for creating efficient, containerized web applications.

## Features
- **High Performance**: Optimized for speed with GraalVM Native Image compilation
- **Cloud-Native**: Ready for container deployment with multiple optimization profiles
- **Resource Efficient**: Multiple build profiles for different deployment scenarios
- **Modern Stack**: Built with Java 21 and Spring Boot 3.4.3
- **Flexible Deployment**: Supports various container configurations from distroless to scratch

## Technical Stack
- Java 21
- Spring Boot 3.4.3
- GraalVM Native Image support
- Maven build system
- Docker container support
- Multiple optimization profiles

## Getting Started

### Prerequisites
- Java 21
- Maven
- GraalVM (for native compilation)
- Docker (for container builds)

### Installation
1. Clone the repository
   ```bash
   git clone https://github.com/ayushbisht/spring-boot-webserver.git
   cd spring-boot-webserver
   ```
2. Build the project:
   ```bash
   ./mvnw clean install
   ```
3. Run the application:
   ```bash
   ./mvnw spring-boot:run
   ```

### Native Compilation
The project supports multiple native compilation profiles:
- **Dynamic size optimized**: Optimized for size while maintaining dynamic linking
- **Dynamic skipflow optimized**: Uses SkipFlow feature for additional size optimization
- **Mostly static**: Minimizes external dependencies
- **Fully static**: Completely self-contained executable

To build native image:
```bash
./mvnw -P[profile-name] native:compile
```

## API Documentation
Currently, this is a basic web server template. You can extend it by adding:
- REST endpoints
- WebSocket support
- Static content serving
- API documentation (Swagger/OpenAPI)

## Configuration
The application can be configured through `application.properties`:
- Server port (default: 8080)
- Logging levels
- Security settings
- Custom properties

## Deployment
The application supports multiple deployment options:

1. **Standard JAR Deployment**:
   ```bash
   java -jar target/webserver-0.0.1-SNAPSHOT.jar
   ```

2. **Docker Container**:
   ```bash
   docker build -t webserver .
   docker run -p 8080:8080 webserver
   ```

3. **Native Image Deployment**:
   ```bash
   ./mvnw -P[profile-name] native:compile
   ./target/webserver.[profile-name]
   ```

## Contributing
Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Author
Ayush Bisht
- GitHub: [ayushbisht](https://github.com/WebDev-Ayush)
- Email: [ayushbisht0902@gmail.com]
- LinkedIn: [Ayush Bisht](https://www.linkedin.com/in/ayush-bisht-a42442261)

## Acknowledgments
- Spring Boot team for the excellent framework
- GraalVM team for the native image support
- All contributors who will help improve this project
