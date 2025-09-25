# Webnews

## Description
This project is a Web API application developed in **ASP.NET Core** using **Entity Framework** following **SOLID principles** and implementing **ORM**.  
The project was created as part of the Web Programming course (ASP) and demonstrates multi-layered architecture and clean coding practices.

---

## Technologies Used
- **C#** (.NET Core)
- **Entity Framework (Code First)**
- **ASP.NET Core Web API**
- **SQL Server** (for database)
- **Visual Studio 2019 Community Edition**
- NuGet Packages: AutoMapper, FluentValidation, Microsoft.AspNetCore.Authentication.JwtBearer, Swashbuckle.AspNetCore

---

## Project Structure

### 1. Domain (Class Library)
- Contains all entities defined using **Code First**.
- Independent from other projects.

### 2. EfDataAccess (Class Library)
- Depends on **Domain**.
- Contains `afContext`, `Configuration` folder (entity configurations), and `Migration` folder (database migration scripts).
- NuGet packages: Microsoft.EntityFrameworkCore, Microsoft.EntityFrameworkCore.SqlServer, Microsoft.EntityFrameworkCore.Tools

### 3. Application (Class Library)
- Depends on **Domain**.
- Contains:
  - `Commands`: Interfaces for Create, Update, Delete actions per entity
  - `Queries`: Interfaces for Read actions
  - `DataTransferCommand`: DTOs
  - `Email`: `IEmailSender` interface
  - `Exceptions`: Custom exceptions
  - `Searches`: Search objects for pagination
  - Core interfaces: `IApplicationActor`, `ICommand`, `IUseCaseLogger`, `UseCaseExecutor`

### 4. Implementation (Class Library)
- Depends on **Application** and **EfDataAccess**.
- Implements:
  - Commands and Queries using **Entity Framework**
  - Email sending logic (`IEmailSender`)
  - Logging (`IUseCaseLogger`)
  - Validators for entities (Create/Read actions)
- NuGet packages: AutoMapper, FluentValidation

### 5. Api (ASP.NET Core Web API)
- Depends on all other projects.
- Contains:
  - `Controllers`: CRUD controllers per entity, plus `RegisterUserController`, `TokenController`, `UploadController`
  - `Core`: Mapping profiles, `AnonymousActor` for registration, `JwtManager`, `JwtActor`, `GlobalExceptionHandler`
  - `wwwroot/images`: Stored images from file uploads
  - `Startup.cs`: Dependency injection and service configuration
- NuGet packages: Microsoft.AspNetCore.Authentication.JwtBearer, Swashbuckle.AspNetCore

---

## Database
- The SQL database file is included in the project root.
- Database name: `baza`
- Created using **Code First** approach with the following entities:
  - Entity (abstract class), Category, Comment, News, Picture, Text, User, UserCaseLog, UserUseCase

---

## Features
- Multi-layered architecture (Domain, Data Access, Application, Implementation, API)
- Entity CRUD operations via Web API
- User registration and login with JWT authentication
- File upload support
- Logging and validation
- Email sending (interface implemented via `IEmailSender`)
- Pagination and searching support

---

## Getting Started
1. Open the solution in **Visual Studio 2019**.
2. Restore NuGet packages.
3. Update connection string in `afContext` to your SQL Server instance.
4. Run migrations or attach provided SQL database.
5. Run the API project to test endpoints.

---

## Notes
- The database is included in the project root.
- Follow **Code First** conventions if adding new entities.
