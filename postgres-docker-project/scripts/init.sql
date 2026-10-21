-- Create an additional database
CREATE DATABASE app_db;

-- Create an additional user
CREATE USER app_user WITH PASSWORD 'app_password';

-- Grant database privileges
GRANT ALL PRIVILEGES ON DATABASE app_db TO app_user;

-- Connect to the main database
\connect mydatabase

-- Create a test table
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert test data
INSERT INTO users (name, email) VALUES
('Иван Иванов', 'ivan@example.com'),
('Мария Петрова', 'maria@example.com')
ON CONFLICT (email) DO NOTHING;