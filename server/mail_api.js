const express = require("express");
const app = express();
const router = express.Router();
const axios = require("axios");
const mysql = require("mysql");
const cors = require("cors");
require("dotenv").config();

const con = mysql.createConnection({
  host: process.env.host,
  user: process.env.user,
  password: process.env.password,
  database: process.env.database
});

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cors());

app.post("/api", cors(), (request, response) => {
  console.log("I RECEIVED DATA!!");
  console.log(request.body);
  const sql = `INSERT INTO mail (sender, recipient, subject, sent_date) VALUES ("${request.body.sender}", "${request.body.recipient}", "${request.body.subject}", "${request.body.sent_date}")`;
  con.query(sql, function (err, result) {
    if (err) throw err;
    console.log("Record inserted");
  });
  response.send(request.body);
});

app.post("/login", (request, response) => {
  console.log("I RECEIVED DATA!!");
  console.log(request.body);
  const sql = `SELECT name FROM users WHERE address = "${request.body.address}"`;
  con.query(sql, function (err, result) {
    if (err) throw err;
    if (JSON.stringify(result) != "[]") {
      response.send(result[0].name);
    } else {
      response.send("Wrong input");
    }
  });
});

app.get("/login", (request, response) => {
  console.log("Got a login GET");
  console.log(request.body);
  response.send("Got a /login GET");
});

app.get("/", (request, response) => {
  console.log("Got a / GET");
  console.log(request.body);
  response.send("Got a / GET");
});

app.use("/", router);
app.listen(3000);
console.log("Listening on port 3000");
