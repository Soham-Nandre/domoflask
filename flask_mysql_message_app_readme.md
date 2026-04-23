# Project Title

A Flask-based web application for managing and displaying user-submitted messages with MySQL as the database backend.

## Features

- Display all messages stored in the `messages` table.
- Submit new messages via a form.
- Persist user-submitted messages to a MySQL database.
- Initialize database schema during application startup.

## Technologies Used

- **Language**: Python
- **Framework**: Flask
- **Database**: MySQL
- **Dependencies**:
  - `Flask`: 2.x.x (latest recommended for the `flask` library)
  - `Flask-MySQLdb`: Compatible version for MySQL integration

**Database Schema:**

```sql
CREATE TABLE messages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    message TEXT
);
```

## Installation

1. Clone the repository:
   ```bash
   git clone <repository_url>
   cd <repository_directory>
   ```

2. Install dependencies:
   ```bash
   pip install flask flask-mysqldb
   ```

3. Configure environment variables for MySQL:
   - `MYSQL_HOST`: MySQL server hostname (default: `localhost`).
   - `MYSQL_USER`: MySQL username (default: `default_user`).
   - `MYSQL_PASSWORD`: MySQL password (default: `default_password`).
   - `MYSQL_DB`: MySQL database name (default: `default_db`).

4. Prepare the database:
   - Run the following SQL to create the required table:
     ```sql
     CREATE TABLE messages (
         id INT AUTO_INCREMENT PRIMARY KEY,
         message TEXT
     );
     ```

## Usage

1. Start the Flask application:
   ```bash
   python app
   ```

   The application will run on `http://0.0.0.0:5000`.

2. Access the web app:
   - Visit `http://localhost:5000` to view all messages.
   - Submit new messages using the provided form.

## API Endpoints

### `GET /`
- Description: Fetch and display all messages from the `messages` table.
- Response: HTML page with displayed messages.

### `POST /submit`
- Description: Add a new message to the `messages` table.
- Request Body:
  - `new_message`: The content of the message to be added.
- Response: JSON object with the newly added message:
  ```json
  {
      "message": "<new_message>"
  }
  ```

## Running in Production

1. Configure environment variables for production MySQL database.
2. Disable `debug` mode in the `app.run` function:
   ```python
   app.run(host='0.0.0.0', port=5000, debug=False)
   ```

## License

This project is licensed under the [MIT License](LICENSE).