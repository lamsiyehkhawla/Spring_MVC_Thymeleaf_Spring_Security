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

 <img src="/images/login.png">

### Product list with search bar

<img src="/images/user_view.png">()


**Admin view**
### Product List
 <img src="/images/admin_view.png">()

### Add/Edit Product form
<img src="/images/add_product.png">
<img src="images/edit_product.pn">


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
