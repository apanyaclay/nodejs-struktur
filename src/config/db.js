const mysql = require("mysql2");
const mongoose = require("mongoose");

const pool = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    database: process.env.DB_DATABASE,
    password: process.env.DB_PASSWORD,
    port: process.env.DB_PORT,
  });
  
  pool.connect((error) => {
    if (error) {
      console.error("Connection to database failed:", error.message);
    } else {
      console.log("Successfully connected to MySQL database");
    }
  });

  const connectMongoDB = async () => {
    try {
      await mongoose.connect(process.env.MONGO_URI, {
        useNewUrlParser: true,
        useUnifiedTopology: true,
      });
      console.log("MongoDB Connected");
    } catch (error) {
      console.error("MongoDB Connection Error:", error);
    }
  };
  
  module.exports = { pool, connectMongoDB };