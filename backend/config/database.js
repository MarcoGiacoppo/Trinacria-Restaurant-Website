import mysql from "mysql2";

// create the connection to database using environment variables
const db = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
    port: process.env.DB_PORT || 3306
});

db.connect(error => {
  if (error) throw error;
  console.log("Successfully connected to the database.");
});

export default db;
