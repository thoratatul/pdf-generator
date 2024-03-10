{Student Pdf Generation}

- This Node.js project utilizes MySQL and PDFKit to retrieve data from a MySQL database and convert it into PDF format, specifically in an ID card format.

Installation:

- Make sure you have Node.js installed on your machine.

Clone the repository:

- git clone https://github.com/thoratatul/pdf-generator.git

Navigate to the project directory:

- cd pdf-generator

Install dependencies:

- npm i

Configuration:

- Update the database connection details in database.js located in the config folder. Adjust the student.js model and student.js service file according to your data schema and PDF generation logic, also update the download path where you want to store your final generated PDF.

Usage:

To start the project, run:

- npm start

For development with nodemon:

- npm run dev

Project Structure:

- index.js: Entry point for the application.
- config/database.js: Database connection configuration.
- models/student.js: Sequelize model for the student data.
- service/students.js: Logic for converting data to PDF using PDFKit.
- package.json: Project configuration and dependencies.

Dependencies:

- Express: Web framework for handling HTTP requests.
- MySQL2: MySQL database driver for Node.js.
- PDFKit: PDF generation library for Node.js.
- Sequelize: Promise-based ORM for Node.js.

# Migrations

- npm i -D sequelize-cli - use this command to install sequelize cli which will be required for db migrations
- npx sequelize-cli model:generate --name students --attributes college_id:integer,salutaion:string,first_name:string,middle_name:string,last_name:string,email:string,mobile:string,gender:string,dob:string,emergency_contact:string,profile_picture:text,signature:text,blood_group:string - use this command to generate db migrations
- npx sequelize-cli db:migrate - use this command to create table students
- npx sequelize-cli db:seed:all - use this command to insert data into table
