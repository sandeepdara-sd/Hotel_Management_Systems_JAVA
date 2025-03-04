# 🏨 Hotel Management System (Java Full Stack)

## 👇 Overview
This **Hotel Management System** is a **full-stack web application** developed using **Java, Spring Boot, JSP, MySQL, and Microservices**. It enables efficient management of hotel operations, including room reservations, customer management, and billing.

## ✨ Features
- 📍 **User Roles**: Admin, Customer, Hotel Staff
- 🛠 **Room Booking**: Online reservation and check-in/check-out
- 🗓 **Billing System**: Invoice generation and payment tracking
- 🔒 **Authentication & Authorization**: Secure user management with Spring Security
- 🛣 **Microservices Architecture**: Modular design for scalability
- 💳 **Database Management**: MySQL integration for efficient data handling

## 🛠 Technologies Used
### 🏡 Backend
- ☕ **Java** - Core programming language
- 🌐 **Spring Boot** - Backend framework for REST APIs
- 🛡 **Spring Security** - User authentication and role management
- 🗂 **Hibernate** - ORM for database interaction
- 📍 **MySQL** - Relational database for storing hotel data

### 💡 Frontend
- 🌐 **JSP (Java Server Pages)** - Dynamic UI rendering
- 🌏 **HTML, CSS, JavaScript** - Frontend technologies for styling and interactivity

## 🏨 User Roles
- **Admin**: Manage hotels, rooms, staff, and customers
- **Customer**: Book rooms, check availability, and make payments
- **Hotel Staff**: Manage reservations and handle check-ins/check-outs

## 🌐 Microservices Architecture
- **JfsdProjectHotelApiGateway** - Handles API requests and routes them to appropriate microservices
- **JfsdProjectHotelAdminService** - Manages hotel administration (rooms, pricing, staff)
- **JfsdProjectHotelCustomerService** - Handles customer-related operations
- **JfsdProjectHotelEurekaServer** - Service registry for microservices communication

## 📄 Installation Guide
### ✅ Prerequisites
- ☕ Java (>= 11)
- 🌐 Spring Boot
- 📁 MySQL Database
- 🛠 Maven (for dependency management)

### 🔧 Steps to Run Locally
#### 1️⃣ Clone the Repository
```sh
git clone https://github.com/yourusername/hotel-management-system.git
cd hotel-management-system
```
#### 2️⃣ Configure Database
- Create a MySQL database named `hotel_db`
- Update `application.properties` with database credentials

#### 3️⃣ Build and Run Services
```sh
mvn clean install
mvn spring-boot:run
```
#### 4️⃣ Access the Application
```
http://localhost:8080/
```

## 🚀 Future Enhancements
- 🎯 Integrate a **recommendation system** for hotel suggestions
- 🔀 Add **real-time notifications** for bookings and cancellations
- 💳 Implement **online payment gateway** for seamless transactions
- 🌈 Upgrade frontend to **React or Angular** for better UI/UX

## 📚 License
This project is open-source and available under the **MIT License**.

## 👨‍💻 Author
**Sandeep Dara**  
🔗 [GitHub](https://github.com/sandeepdara-sd)  
🔗 [LinkedIn](https://linkedin.com/in/sandeep-dara-1b0a23242)  

