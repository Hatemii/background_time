# My Rails Application

This is a Rails-based web application. Below are the steps to set up and run the application locally.

## Prerequisites

Ensure you have the following installed on your machine:
- Ruby
- Rails
- Sqlite3 (or your preferred database)
- Redis
- Sidekiq

## Setup Instructions
```bash
bundle install
```
## Setup the Database 
```bash
rails db:create
rails db:migrate
```

## Copy the example environment file
```bash
cp .env.example .env
```

## To start all services with foreman, run the following
```bash
foreman start
```
