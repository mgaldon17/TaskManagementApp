# TaskManagementApp

This application is a task management system built with a Spring Boot backend, a React frontend, and a PostgreSQL database. The application is containerized using Docker.

## Prerequisites

Before you can run this application, you need to have the following installed on your machine:

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Running the Application

Follow these steps to run the application:

1. Clone the backend and frontend repositories:

   Run the `clone_repos.sh` script. This script clones the backend and frontend repositories into the `TaskManagementBE` and `TaskManagementFE` directories, respectively.

   ```bash
   chmod +x clone_repos.sh
   ./clone_repos.sh
   ```

   Ensure that you have `git` installed and that you have the necessary permissions to clone the repositories.

2. Run the application using Docker Compose:

   Navigate to the directory containing the `docker-compose.yml` file and run the following command:

   ```bash
   docker-compose up
   ```

   This command starts all the services defined in the `docker-compose.yml` file, including the `db`, `backend`, and `frontend` services.

   If you want to run the services in the background, you can use the `-d` option:

   ```bash
   docker-compose up -d
   ```

   To stop the services, you can use the `down` command:

   ```bash
   docker-compose down
   ```

Please note that you need to run these commands in the same directory as your `docker-compose.yml` file.

Enjoy using the TaskManagementApp!