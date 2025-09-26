# Top News

This project is a dynamic website built using the Laravel framework with MVC architecture and OOP PHP. The site use a MySQL database (php2sajt2.sql) that is included in the project root folder.

---

# Technologies Used

**Frontend:**
- HTML
- CSS
- JavaScript
- jQuery
- Bootstrap

**Backend:**
- PHP (Laravel)
- MySQL

**Other:**
- AJAX - for dynamic interactions
- PHPMailer - for contact forms

---

# Features

- **Dynamic content** - loaded from the database.

**User roles:**

- **Guest** – can view news, search articles, register, log in, and send messages via the contact form.  
- **User** – can post comments, browse news by categories, view the gallery, and search content.  
- **Admin** – can manage site content (add, edit, delete), moderate comments and messages, manage categories, and use date filtering and search via AJAX.  


- **Pagination** - implemented for news, gallery, and admin panel.

- **Form validation** - implemented using regular expressions.

---

## Database

A MySQL database (php2sajt2.sql) is included in the project root folder.
It must be imported into your local server before running the project.

---

## How to Run the Project

1. Copy the project folder to the htdocs directory of your XAMPP installation.
2. Start Apache and MySQL from the XAMPP Control Panel.
3. Import the database file (php2sajt2.sql) located in the root folder into your MySQL server.
4. Open the project in your browser.
