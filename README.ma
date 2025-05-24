# 🛍️ Spring Boot Product Management System

A web-based product management application built with **Spring Boot**, **Thymeleaf**, and **Spring Security**.
It supports product listing, creation, deletion, updating, and keyword-based searching, along with secure login/logout with role-based access.

---

## ✨ Features

- ✅ User authentication with Spring Security
- 🧑‍💼 Role-based access (USER / ADMIN)
- 📦 Product CRUD operations:
  - Create
  - Read (list & search)
  - Update
  - Delete
- 🔍 Search products by name
- 🎨 Responsive UI using Bootstrap 5
- 🛡 CSRF protection and secure session management

## 🛠 Technologies Used
-Java 17+
-Spring Boot 3
-Spring MVC
-Spring Security
-Thymeleaf
-Bootstrap 5
-Hibernate / JPA
-H2
---

## 📸 Screenshots

Here are some example screenshots of the app:

### Login page
<img src="imagies/login.png">

### Product list with search bar
![User view](images/user_view.png)

### Admin view - Product List
![Admin view](images/admin_view.png)

### Add/Edit Product form
![Add product](images/add_product.png)
![Edit product](images/edit_product.png)

---

## 🏗 Project Structure

```bash
src
└── main
    ├── java
    │   └── enset_bdcc.bdccensetspringmvc
    │       ├── entities
    │       │   └── Product.java
    │       ├── repository
    │       │   └── ProductRepository.java
    │       ├── security
    │       │   └── SecurityConfig.java
    │       └── web
    │           └── ProductController.java
    └── resources
        ├── templates
        │   ├── login.html
        │   ├── products.html
        │   ├── new-product.html
        │   └── layout1.html
        └── application.properties

## 📚 Learning Goals
-Build secure web applications with Spring Boot and Spring Security

-Use Thymeleaf template engine with reusable layout fragments

-Implement form handling, validation, and model binding in Spring MVC

-Create responsive and user-friendly interfaces using Bootstrap 5

-Apply role-based authorization for resource access control

## 👤 Author
Made with ❤️ by Lamsiyeh Khawla
🔗 www.linkedin.com/in/khawla-lamsiyeh
📁 GitHub: lamsiyehkhawla

## 📌 License
This project is open-source and free for educational purposes.
