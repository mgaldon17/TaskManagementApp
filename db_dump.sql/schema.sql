-- Create the schema if it doesn't exist
CREATE SCHEMA IF NOT EXISTS task_management;
ALTER SCHEMA task_management OWNER TO galdon;

-- Create your tables inside the schema
CREATE TABLE IF NOT EXISTS task_management.tasks (
                                                     id BIGINT GENERATED BY DEFAULT AS IDENTITY,
                                                     created TIMESTAMP WITH TIME ZONE,
                                                     done BOOLEAN NOT NULL,
                                                     name VARCHAR(255) NOT NULL,
    priority VARCHAR(255) CHECK (priority IN ('LOW', 'NORMAL', 'URGENT')),
    PRIMARY KEY (id)
    );

-- Insert data if needed
INSERT INTO task_management.tasks (id, created, done, name, priority)
VALUES (1, '2024-06-29 22:42:00.819+02', true, 'Create this App', 'URGENT');

-- Adjust sequence if using GENERATED BY DEFAULT AS IDENTITY
-- Note: This is usually handled automatically by PostgreSQL
-- ALTER SEQUENCE IF EXISTS task_management.tasks_id_seq RESTART WITH 1;