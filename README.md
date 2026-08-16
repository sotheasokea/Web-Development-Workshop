# Ruby Web Development Workshop Project

This project is a learning repository for a Ruby web development workshop. It includes hands-on exercises covering Ruby fundamentals, object-oriented programming, and Rails application development.

## Project Overview

The repository is designed to help students learn how to:

- write Ruby code and understand core programming concepts
- use object-oriented programming principles in Ruby
- build a small web application with Ruby on Rails
- work with models, controllers, views, and routes
- create and manage a ToDo list application with CRUD behavior
- use Turbo and Stimulus for interactive front-end behavior
- style the app with Tailwind CSS

## Repository Structure

```text
Learn Web Using Ruby/
├── README.md
├── hello.rb
├── oop_in_ruby.rb
├── ToDoList/
│   ├── app/
│   ├── config/
│   ├── db/
│   ├── test/
│   ├── Gemfile
│   ├── Gemfile.lock
│   ├── Rakefile
│   ├── README.md
│   ├── config.ru
│   └── Dockerfile
└── ...
```

## Files in the Project

### hello.rb
A simple Ruby script used for beginner practice and testing basic Ruby syntax.

### oop_in_ruby.rb
Contains object-oriented Ruby examples such as classes, objects, inheritance, and encapsulation.

### ToDoList/
This is the main Rails application created during the workshop. It is a simple task management app that lets users:

- add new tasks
- mark tasks as complete
- delete tasks
- view pending and completed tasks
- update the UI dynamically using Turbo

## ToDoList App Features

The app demonstrates several key web development concepts:

- Rails MVC architecture
- database-backed task records
- forms and parameter handling
- routing and controller actions
- partial rendering for reusable views
- Turbo Streams for live updates
- Tailwind CSS for modern styling

## Tech Stack

- Ruby
- Ruby on Rails
- SQLite
- Turbo Rails
- Stimulus
- Tailwind CSS
- Docker
- Render

## Deployment Learning

During this workshop, I learned how to deploy a Ruby on Rails application to Render.

The deployed version of this ToDoList app is available here:

- https://to-do-lists-2hlq.onrender.com

> This Render deployment link will expire on September 15, 2026.

## How to Run the Project

### 1. Open the project folder

```bash
cd "Learn Web Using Ruby/ToDoList"
```

### 2. Install dependencies

```bash
bundle install
```

### 3. Set up the database

```bash
rails db:create
rails db:migrate
```

### 4. Start the Rails server

```bash
rails server
```

Then open:

```text
http://localhost:3000
```

## Useful Workshop Learning Outcomes

By the end of this project, learners should understand:

- how Ruby syntax works
- how classes and objects are modeled in Ruby
- how MVC works in Rails
- how to build a CRUD app
- how forms and database records interact
- how modern frontend interactions are added with Turbo and CSS frameworks

## Notes

This repository is mainly a learning project, so the code may be simple and intentionally focused on demonstrating concepts rather than production-level best practices.

## License

This project is intended for educational use in a workshop environment.
