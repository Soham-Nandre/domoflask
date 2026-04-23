# README.md

## Project Overview
This application is a web-based service built using Flask that interacts with a MySQL database. It allows users to submit and store messages via a web interface and retrieve them for display. The project initializes the database with a `messages` table and provides routes for interacting with the application.

## Features
- Displays messages retrieved from the MySQL database.
- Allows users to submit new messages via a form.
- Messages are stored persistently in the MySQL database.
- Automatically initializes the database table (`messages`) if it doesn't exist.

## Requirements
- Python 3.x
- Flask `>=2.0`
- Flask-MySQLdb `>=0.2`
- MySQL server

## Installation

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd <repository-folder>
   ```

2. Install dependencies:
   ```bash
   pip install flask flask-mysqldb
   ```

3. Set up environment variables for MySQL configuration:
   ```bash
   export MYSQL_HOST=<your-mysql-host>
   export MYSQL_USER=<your-mysql-username>
   export MYSQL_PASSWORD=<your-mysql-password>
   export MYSQL_DB=<your-database-name>
   ```

4. Run the application:
   ```bash
   python app.py
   ```

5. Access the application in your browser at `http://localhost:5000`.

## Usage

### Running the Application
- Ensure that the MySQL server is running and configured with the appropriate credentials.
- Start the Flask application by executing:
  ```bash
  python app.py
  ```

### Accessing Messages
- Open the application URL in your browser (`http://localhost:5000`).
- All stored messages will be displayed on the homepage.

### Submitting Messages
- Use the form to submit a new message on the application homepage.
- Messages will be stored in the `messages` table in the MySQL database.

## Database Schema

```sql
CREATE TABLE messages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    message TEXT
);
```

## License
This project is open-source and available under the [MIT License](LICENSE).