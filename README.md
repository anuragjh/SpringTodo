# TaskMaster Application

## Project Name: TaskMaster

### Owner: [Aman Jha]

---

### Description:
TaskMaster is a robust and scalable to-do list application built with the power of Spring Boot, leveraging databases for persistent storage. This project aims to demonstrate the integration of modern web development technologies with powerful backend frameworks.

### Technologies Used:
- **Java**: Core programming language.
- **Spring Boot**: Framework for building web applications.
- **Spring MVC**: Model-View-Controller architecture for the web layer.
- **Spring Data JPA**: Simplifies database operations.
- **Thymeleaf**: Templating engine for rendering web pages.
- **PostgreSQL 17.0**: Relational database.
- **Jakarta EE**: Enterprise-grade specifications.
- **H2 Database**: In-memory database for development (initial stages).

### Features:
- Add new Todo items
- List all Todo items
- Update existing Todo items
- Delete Todo items
- Integration with PostgreSQL for persistent storage
- Form validations and error handling

### Repository Link:
[GitHub Repository](https://github.com/anuragjh/SpringTodo)

### Time Taken to Develop:
- Initial Setup and Design: 1 day
- Backend Development: 2 days
- Frontend Development: 1 day
- Testing and Bug Fixes: 1 day
- Total Duration: 5 days

### What I Learned:
- **Spring Framework**: Gained in-depth knowledge of Spring Boot and its related modules.
- **Database Integration**: Hands-on experience with PostgreSQL and Spring Data JPA.
- **Form Handling**: Insights into form validation and error handling in Spring MVC.
- **Template Engines**: Practical usage of Thymeleaf for dynamic web content.
- **Application Deployment**: Learned to deploy and manage a Spring Boot application.

### Why This Project Was Important:
This project was crucial in understanding the full-stack development lifecycle, from setting up the backend with Spring Boot to connecting it seamlessly with a PostgreSQL database and rendering the front end using Thymeleaf. It provided practical experience and built confidence in handling real-world web application requirements.

### Getting Started:

#### Prerequisites:
- JDK 11 or higher
- Maven
- PostgreSQL

#### Setup:
1. Clone the repository:
   ```bash
   git clone https://github.com/anuragjh/SpringTodo.git
   cd TaskMaster
   ```

2. Update database credentials in `src/main/resources/application.properties`:
   ```properties
   spring.datasource.url=jdbc:postgresql://localhost:5432/spring
   spring.datasource.username=your-username
   spring.datasource.password=your-password
   ```

3. Run the application:
   ```bash
   mvn spring-boot:run
   ```

4. Access The Application At:
   ```bash
      http://localhost:8080
   ```
### Conclusion:
TaskMaster is a comprehensive example of building a modern web application using industry-standard tools and frameworks. It covers everything from the backend logic, data persistence, to the frontend rendering, providing a full-stack development experience.