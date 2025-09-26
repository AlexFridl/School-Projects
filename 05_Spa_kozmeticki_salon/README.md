# Spa

This is a school project built with HTML, CSS, JavaScript, AJAX, jQuery, and PHP.
It includes login and registration, surveys, an image gallery, pagination, and an admin panel for managing site content.

**Note:**
Email contact form is not fully implemented, but submissions are stored in the database.

---

## Features

- **Form Validation (PHP & jQuery)**  
Login and registration system with validation.

-**Survey functionality**
Built with PHP and AJAX, with options for managing survey results.

-**Image gallery**
Implemented with the vaillabox.min library.

-**Pagination**
Handled with PHP.

-**User roles and access levels**
### Guest
    Can browse pages and use the appointment form.
### Registered User 
    Can view and manage specific site content (Username: korisnik, Password: korisnik).
### Admin User
    Can add, edit, or delete content (Username: admin, Password: admin).

-**Sitemap**
Styled with XSLT as a separate user page.

-**Admin panel**
Full CRUD operations for site content.

---
 
## Technologies Used

- HTML
- CSS
- JavaScript
- AJAX
- jQuery (jquery-2.1.3.min)
- PHP
- Vanillabox library (for gallery)
- XSLT (sitemap)

---

## Database

A MySQL database is included in the project root folder.
It must be imported into your local server before running the project.

---

## How to Run the Project

1. Copy the project folder to the htdocs directory of your XAMPP installation.
2. Start Apache and MySQL from the XAMPP Control Panel.
3. Import the database file (spa_druga.sql) located in the root folder into your MySQL server.
4. Open the project in your browser.