# bdccensetspringmvc

A simple Spring Boot MVC application for managing products. The application uses Thymeleaf for the view layer and initializes with some sample products. Users can view the product list, add new products, and delete existing ones.

## Features

- View all products
- Add a new product
- Delete a product
- MVC architecture with Thymeleaf templates
- In-memory product initialization on startup

## Technologies Used

- Java 17+
- Spring Boot
- Spring MVC
- Thymeleaf
- JPA (with in-memory H2 or another configured database)
- Bootstrap 4 for styling

## Project Structure

enset_bdcc.bdccensetspringmvc
│
├── BdccEnsetSpringMvcApplication.java # Main Spring Boot application
├── entities
│ └── Product.java # Product entity with name, price, quantity
├── repository
│ └── ProductRepository.java # Extends JpaRepository for CRUD operations
├── web
│ └── ProductController.java # Handles HTTP routes for product operations
└── resources
└── templates/
├── products.html # Main product list page
├── new-product.html # Form to add new products
└── layout1.html # Layout template

## Getting Started

### Prerequisites

- Java JDK 17 or later
- Maven or Gradle
- IDE (IntelliJ, Eclipse, VS Code)

### Running the Application

1. Clone the repository:

```bash
git clone https://github.com/your-username/bdccensetspringmvc.git
cd bdccensetspringmvc

### Available Routes
| URL            | Description                   |
| -------------- | ----------------------------- |
| `/`            | Redirects to `/index`         |
| `/index`       | Displays all products         |
| `/newProduct`  | Form to create a new product  |
| `/saveProduct` | Saves a new product (POST)    |
| `/delete?id=X` | Deletes the product with ID=X |
