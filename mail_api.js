const express = require("express");
const mysql = require("mysql");
const cors = require("cors");

const con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "root",
  database: "spam_filter_db"
});

const router = express.Router();
const app = express();
app.use(cors());

async function dataCollect() {
  try {
    const data = await fetch("http://localhost:3000/");
    // Upon successfull fetch of above url, get response to work with
    return [data, null];
  } catch (error) {
    console.error(error.message);
    return [null, error];
  }
}

async function jsonCheck(data) {
  try {
    if (typeof data === "object") {
      return await data.json();
    } else {
      return JSON.parse(data);
    }
  } catch (error) {
    console.error(error.message);
    return;
  }
}

async function main() {
  const [data, error] = await dataCollect();
  const body = await jsonCheck(data);
  // console.log(util.inspect(body, false, null, true));

  if (body) {
    if (body.mails) {
      for (const item of body.mails) {
        console.log(`--- ${item.sender}`);
      }
    } else {
      console.log("NEMA proizvodi parametra");
    }
  }
}

// main();
app.use(express.json());

app.post("/api", (request, response) => {
  console.log("I RECEIVED DATA!!");
  console.log(request.body);
  const sql = `INSERT INTO mail (sender, recipient, subject, sent_date) VALUES ("${request.body.sender}", "${request.body.recipient}", "${request.body.subject}", "${request.body.sent_date}")`;
  con.query(sql, function (err, result) {
    if (err) throw err;
    console.log("Record inserted");
  });
  response.send(request.body);
});

app.use("/", router);
app.listen(3000);

console.warn("App running on http://localhost:3000/");
