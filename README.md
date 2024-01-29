# JPACRUDProject

<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsVe22Pxso6cbfKgZ5uKImewU8uJhgPiI1kA&usqp=CAU" alt="UFC Film" width="550">


## Overview

The **JPACRUDProject** is a solo project that revolves around my personal passion for UFC (Ultimate Fighting Championship) and the fighters that compete in the promotion. This project is an exploration of Java Persistence API (JPA) and Spring MVC, focusing on creating a simple CRUD (Create, Read, Update, Delete) application for managing fighter details.

## Application Overview

The JPACRUDProject aims to achieve the following learning objectives:

- Creating a MySQL database with a single table for storing fighter details.
- Configuring a JPA project to map entities to SQL tables.
- Writing JUnit tests to ensure correct JPA mappings.
- Integrating a Spring MVC project to enable basic CRUD operations through a web interface.
- Deploying the application and the associated database to an AWS instance.

## Project Requirements

### Technologies Used

- MySQL database (MySQL Workbench)
- Java Persistence API (JPA) 
- Spring MVC 
- AWS 
- Bootstrap
- HTML & CSS

### Database Structure

The project utilizes a MySQL database with a single table and entity for storing fighter details.

### JPA Entity Mapping

The MySQL table is mapped to a valid JPA Entity, and JUnit tests are implemented to ensure correct mappings.

### Spring MVC Integration

A Spring project is implemented to allow users to perform basic CRUD operations on the fighter entity via a web interface.

### Deployment

The project and the associated database are deployed to an AWS instance.

**http://18.190.80.171:8080/BootMVCUFC/**

## Lessons Learned

### Passion-Driven Development

Being a fan of UFC made this project particularly enjoyable. Developing a CRUD application around something close to my heart brought an extra level of enthusiasm and motivation to the learning process.

### JPA and Spring MVC Synergy

Understanding how to configure and use JPA alongside Spring MVC was a key learning point. Mapping entities, performing CRUD operations, and integrating them into a web application required a holistic understanding of both technologies.

### Challenges in Functionality and JSP Linking

Ensuring that all functions worked correctly and that various JSPs were linked properly posed challenges. Debugging and testing became integral in achieving a smooth and functional application.

### Evolution of UI from Command-Line to Web Interface

The transition from a menu-driven command-line interface (as in the FilmQueryProject) to a full web interface demonstrated the evolution of user interfaces based on project requirements. It showcased the flexibility and scalability of different UIs.

### Exception Handling in Web Context

Handling exceptions in a web context presented unique challenges. Identifying the appropriate exceptions to throw, where to throw them, and how to handle them became crucial for providing a user-friendly experience.

## How to Run
(if not currently deployed to AWS)
1. Clone the repository: `git clone https://github.com/walkerjohnelle/JPACRUDProject.git`
2. Navigate to the project directory: `cd JPACRUDProject`
3. Build the project: `mvn clean install`
4. Run the project: `mvn spring-boot:run`
5. Access the application in a web browser: `http://localhost:8086`

