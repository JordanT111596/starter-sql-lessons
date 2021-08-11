const mysql = require("mysql");

//connecting the database
const connection = mysql.createConnection({
    host: "localhost",

    // The port; if not 3306
    port: 3306,

    // The username
    user: "root",

    // The password and connected database
    password: "rootroot",
    database: "popquiz_db"
});

//Makes actual connection to db
connection.connect((err) => {
    if (err) throw err;
    console.log("connected as id " + connection.threadId);
    afterConnection();
});

//Displays table of data
function afterConnection() {
    connection.query('SELECT player FROM Sixers', (err, res) => {
        if (err) throw err;
        console.table(res);
        connection.end();
    });
};