"use_strict";
const axios = require("axios");
const mysql = require("mysql");

const con = mysql.createConnection({
  host: "localhost",
  user: "filipt",
  password: "Lozinka1",
  database: "mail_db"
});

let mail = {
  sender: "DEFAULT",
  recipient: "DEFAULT",
  subject: "DEFAULT",
  sent_date: "DEFAULT"
};

let words = ["fake", "legit", "coconut", "tarriff"];

let names = [
  "ivo@hotmail.com",
  "tea@yahoo.co.uk",
  "marko@gmail.com",
  "filip@anonmail.co"
];

let recipients = [
  "fturkovic@tvz.hr",
  "tstapko@tvz.hr",
  "mhadinovic@tvz.hr",
  "fsolinko@tvz.hr"
];

// Hold this function for a future, better random date generator
function date_generator(number) {
  result = new Date(number);
  return result.toJSON();
}

function randInt(max, min) {
  return Math.floor(Math.random() * (max - min) + min);
}

function subject_generator(word_count) {
  let return_subject = "";
  if (!(word_count < 1)) {
    for (let i = 0; i < word_count; i++) {
      return_subject = return_subject.concat(
        " ",
        words[randInt(words.length, 0)]
      );
    }
    return return_subject;
  }
  return (return_subject = return_subject.concat(
    "",
    words[randInt(words.length, 0)].toString()
  ));
}

// Just needed for mockup data..
function generate_mail() {
  con.connect(function (err) {
    if (err) throw err;
    console.log("Connected!");
  });
  let subject_number_of_words = randInt(100, 1);
  mail = {
    sender: names[randInt(names.length, 0)],
    recipient: recipients[randInt(recipients.length, 0)],
    subject: subject_generator(subject_number_of_words),
    sent_date: date_generator(randInt(Date.now(), 946684800000))
  };
  const sql = `INSERT INTO mail (sender, recipient, subject, sent_date) VALUES ("${mail.sender}", "${mail.recipient}", "${mail.subject}", "${mail.sent_date}")`;
  con.query(sql, function (err, result) {
    if (err) throw err;
    console.log("Record inserted");
  });
  con.end();
  return mail;
}

function post_body() {
  const data_to_push = axios
    .post("http://localhost:3000/api", generate_mail(), {
      headers: {
        "content-type": "application/json"
      }
    })
    .then(function (response) {
      //console.log(response);
    })
    .catch(function (error) {
      console.log(error);
    });
}

function main() {
  post_body();
}

main();

//Ne diraj moju hižu, debugging purposes only
//console.log(util.inspect(indexReturn, false, null, true));

// Push generated data to API, change API to wait and listen on port X for incoming data..
