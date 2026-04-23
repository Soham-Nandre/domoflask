# README

## Project Overview

This project is a web application built using Flask that utilizes MySQL as its database. The application allows users to submit and view messages stored in a database. It includes basic functionality for rendering messages on a homepage and submitting new messages through an API endpoint.

---

## Features

- **Homepage**: Displays all messages retrieved from the MySQL database.
- **API Endpoint**: Submits new messages and saves them to the database.
- **Database Initialization**: Automatically initializes the `messages` table if it does not exist.
- **Database Integration**: Environment-variable-based configuration for MySQL host, user, password, and database name.

---

## Requirements

- Python 3.x
- Flask
- Flask-MySQLdb

---

## Installation

1. Clone the repository:
   ```bash
   git clone <repository_url>
   cd <project_directory>
   ```

2. Set up a Python virtual environment:
   ```bash
   python3 -m venv env
   source env/bin/activate
   ```

3. Install the Python dependencies:
   ```bash
   pip install Flask Flask-MySQLdb
   ```

4. Set up environment variables for MySQL:
   ```bash
   export MYSQL_HOST=<your_mysql_host>
   export MYSQL_USER=<your_mysql_user>
   export MYSQL_PASSWORD=<your_mysql_password>
   export MYSQL_DB=<your_mysql_database_name>
   ```

5. Prepare the database:
   - Manually execute the following SQL script if needed to initialize the table:
     ```sql
     CREATE TABLE messages (
         id INT AUTO_INCREMENT PRIMARY KEY,
         message TEXT
     );
     ```
   - Alternatively, the table will be automatically initialized when the application starts.

---

## Usage

1. Run the application:
   ```bash
   python app.py
   ```

2. Access the application at `http://localhost:5000`.

3. Submit a message using the `/submit` endpoint:
   - Method: `POST`
   - Form Parameters:
     - `new_message`: The message to store in the database.
   - Example `curl` command:
     ```bash
     curl -X POST -F "new_message=Hello, World!" http://localhost:5000/submit
     ```

---

## Configuration

The application retrieves the following configuration values from environment variables:

- `MYSQL_HOST`: MySQL host (default: `localhost`)
- `MYSQL_USER`: MySQL username (default: `default_user`)
- `MYSQL_PASSWORD`: MySQL password (default: `default_password`)
- `MYSQL_DB`: MySQL database name (default: `default_db`)

Ensure these variables are configured properly for your environment.

---

## License

This project is licensed under the MIT License.

---