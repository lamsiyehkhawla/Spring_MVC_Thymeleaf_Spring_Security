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

---

## 📸 Screenshots

Here are some example screenshots of the app:

### Login page

![Login page](images/login.png)

### Product list with search bar

![Product list](images/user_view.png)


**Admin view**
### Product List
![Product list](images/admin_view.png)

### Add/Edit Product form
![AddProduct](images/add_product.png)
![AddProduct](images/edit_product.png)


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
