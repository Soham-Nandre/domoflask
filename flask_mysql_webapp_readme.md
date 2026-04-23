# Project Title

## Description
This project is a web application built using Flask that interacts with a MySQL database to store and display user-submitted messages. It provides an interface to view saved messages and allows users to submit new ones.

## Features
- View all stored messages.
- Submit new messages to the database.
- Persistent storage using MySQL backend.
- Automatic database table creation if not already present.

## Installation

### Prerequisites
- Python 3.x
- Flask (`>=1.1.2`)
- Flask-MySQLdb (`>=0.2.0`)
- MySQL database server

### Steps
1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd <project-directory>
   ```

2. Create and activate a virtual environment:
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. Install the required dependencies:
   ```bash
   pip install Flask==1.1.2 Flask-MySQLdb==0.2.0
   ```

4. Set up the MySQL database:
   - Ensure you have a running MySQL server.
   - Create a database (e.g., `default_db`).
   - Configure the following environment variables:
     ```bash
     export MYSQL_HOST=<your-mysql-host>
     export MYSQL_USER=<your-mysql-username>
     export MYSQL_PASSWORD=<your-mysql-password>
     export MYSQL_DB=<your-database-name>
     ```

5. Run the application:
   ```bash
   python app.py
   ```

## Usage
1. Open a web browser and navigate to:
   ```
   http://localhost:5000
   ```

2. Submit a new message through the provided form.

3. View all messages displayed on the homepage.

## Database Schema
The application uses the following table structure:

```sql
CREATE TABLE messages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    message TEXT
);
```

The table is automatically created on application startup if it does not exist.

## Running in Production
To deploy this application in a production environment:
- Use a production-ready WSGI server such as `gunicorn`.
- Set `debug=False`.
- Configure proper environment variables for database credentials.

## License
This project is licensed under [Your License Here]. Replace this text with the appropriate license information.

