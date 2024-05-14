# Trinacria Restaurant Ordering System

## Introduction

This Restaurant Ordering System is designed to facilitate seamless order placements and management in a restaurant setting. The application features a dynamic menu where customers can select dishes, view descriptions, adjust quantities, and place orders. It supports filtering by dish type, price range, and other attributes, offering an intuitive user experience.

## Features

- Dynamic menu with categories such as pizzas, pastas, and desserts.
- User-friendly interface for selecting and customizing order details.
- Real-time updates of item quantities and prices.
- Secure checkout and user authentication.
- Responsive design for desktop and mobile devices.

## Project Setup

Before you begin, ensure you have [Node.js](https://nodejs.org/) installed on your machine. This project was built using Vue.js and Vuex for state management.

### Installation

Follow these steps to set up and run the project:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/MarcoGiacoppo/Trinacria-Restaurant-Website.git
   cd Trinacria-Restaurant-Website
2. Install dependencies:

   Navigate to both the frontend and backend directories in separate terminal windows to install the necessary dependancies.
- For the frontend:
   ```bash
   cd frontend
   npm install

- For the backend:
   ```bash
   cd frontend
   npm install
3. Running the application:
- Start the frontend development server:
  ```bash
  npm run serve
This will launch the Vue.js application on http://localhost:8080.
- Start the backend server:
  ```bash
  npm start
### If npm start doesn't work
- Open index.js in the backend folder
- Locate the 'port' section of the code
- Change ${PORT} to ${8081}
- Run npm start
- Change it back to ${PORT}
