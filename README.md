# UsersCRUD – Java Web Application (Servlets & JDBC)

![Java](https://img.shields.io/badge/Java-17-orange?style=for-the-badge&logo=java)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Tomcat](https://img.shields.io/badge/Apache_Tomcat-F8DC75?style=for-the-badge&logo=apache-tomcat&logoColor=black)
![Maven](https://img.shields.io/badge/Maven-C71A36?style=for-the-badge&logo=apache-maven&logoColor=white)

UsersCRUD is a lightweight **CRUD (Create, Read, Update, Delete)** web application built with a focus on core Java backend fundamentals. It demonstrates the implementation of the **MVC architecture** without the overhead of heavy frameworks like Spring.

---

## 🧩 Key Features
* **Full Lifecycle Management:** Seamlessly Create, Read, Update, and Delete user records.
* **Security First:** Robust password hashing using the **BCrypt** algorithm.
* **Data Integrity:** Complete protection against **SQL Injection** through the use of `PreparedStatement`.
* **Responsive UI:** Clean and functional views built with **JSP and JSTL**.

---

## 🏗️ Architecture & Project Structure
The project strictly follows the **Model-View-Controller (MVC)** design pattern to ensure high maintainability and clear separation of concerns:

| Package | Responsibility |
| :--- | :--- |
| **`entity`** | Data models and POJOs (e.g., `User` class). |
| **`dao`** | Data Access Object layer; handles all direct JDBC interactions. |
| **`servlets`** | Controllers managing HTTP requests and routing logic. |
| **`utils`** | Utility classes for database connectivity and security helpers. |



---

## 🛠️ Technology Stack
* **Language:** Java 17 (Compatible with Java 8+)
* **Server:** Jakarta Servlets (deployed on Apache Tomcat)
* **Database:** MySQL 8.0
* **Persistence:** JDBC (Java Database Connectivity)
* **Security:** BCrypt Hashing
* **Frontend:** JSP, JSTL, HTML/CSS
* **Build Tool:** Maven

---

## 🔐 Security Implementation
To ensure production-grade security standards in a learning project:
1.  **Password Protection:** We never store plain-text passwords. Every password is salted and hashed using **BCrypt**.
2.  **Query Safety:** All database communication is parameterized to eliminate the risk of SQL injection attacks.
3.  **Encapsulation:** Sensitive data is excluded from `toString()` methods to prevent accidental exposure in application logs.

---

## ⚙️ Setup & Installation

### 1. Database Configuration
Run the following script in your MySQL terminal to prepare the environment:

```sql
CREATE DATABASE users_db;
USE users_db;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL
);
