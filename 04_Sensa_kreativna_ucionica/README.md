# Project: [Website Name]

## Description
This project is a multi-page website developed using **HTML, CSS, JavaScript, AJAX, and PHP**.  
It includes a gallery, user management system, admin panel, survey functionality, and the ability to contact the administrator via email.

## Features
- **Login menu**  
- **Survey** implemented using PHP and AJAX  
- **Client-side login and registration validation** using jQuery  
- **Gallery** implemented with the `lightbox.min` library  
- **Survey handling and administration** with JavaScript and AJAX  
- **Pagination** using PHP  
- **User access control**:
  - Guests can view certain pages  
  - Registered users – administrators can view, add, edit, or delete website content (Username: `admin`, Password: `admin`)  
  - Registered users – regular users can view specific content (Username: `korisnik`, Password: `korisnik`)  
- **Form validation** using regular expressions  
- **Contact form** sending emails to the administrator is not fully developed, but submissions are successfully saved in the database   
- **Admin panel** for managing website content

## Technologies & Libraries
- HTML  
- CSS  
- JavaScript  
- AJAX  
- jQuery (`jquery-3.1.1.min`)  
- Lightbox (`lightbox.min`)  
- PHP  
- PHPMailer  
- Sitemap  

## Database
- This project requires a database, which is included in the root of the project folder.  
- Ensure the database is imported into your MySQL server before running the project.

## Notes
- PHP is used for backend functionality and user authentication.  
- Contact form emails are sent via PHPMailer.  
- Admin panel allows full content management.  

## How to Run the Project
1. Copy the project folder into the `htdocs` directory of your XAMPP installation.  
2. Start **Apache** and **MySQL** from the XAMPP Control Panel.  
3. Import the database file (`database.sql`) located in the project root into your MySQL server.  
4. Open the project in your browser at `http://localhost/project-folder-name/`.