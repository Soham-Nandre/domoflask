# Project Title

A simple Flask application that interacts with a MySQL database to store and retrieve messages. The application provides a web interface for displaying saved messages and submitting new ones.

## Features

- Displays saved messages from a MySQL database.
- Accepts new messages through a form and saves them to the database.
- Automatically initializes the database with the required table (`messages`) if it does not already exist.

## Technologies Used

- Language: Python
- Framework: Flask
- Database: MySQL
- Dependencies:
  - Flask
  - flask-mysqldb

## Installation

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd <repository-folder>
   ```

2. Set up a Python virtual environment (optional but recommended):
   ```bash
   python3 -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. Install the required dependencies:
   ```bash
   pip install Flask flask-mysqldb
   ```

4. Configure environment variables for MySQL:
   ```bash
   export MYSQL_HOST=<your-mysql-host>
   export MYSQL_USER=<your-mysql-username>
   export MYSQL_PASSWORD=<your-mysql-password>
   export MYSQL_DB=<your-mysql-database>
   ```
   Replace `<your-mysql-host>`, `<your-mysql-username>`, `<your-mysql-password>`, and `<your-mysql-database>` with your MySQL configuration.

5. Run the application:
   ```bash
   python app.py
   ```

6. Access the application at `http://localhost:5000`.

## Usage

1. Navigate to the homepage (`http://localhost:5000`) to view saved messages.
2. Submit a new message using the form on the page. The application will save the message to the MySQL database and update the displayed list.

## Database Schema

The application uses the following MySQL schema:

```sql
CREATE TABLE messages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    message TEXT
);
```

## Development

### Initialize the Database

The database table is created automatically when the application starts. Ensure the MySQL instance is running and properly configured through the environment variables.

### Debugging

The app runs in debug mode by default. To disable debug mode, set `debug=False` in the `app.run()` method.

## License

This project is licensed under the MIT License.