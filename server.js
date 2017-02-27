var express = require("express");
var app = express();

app.get("/", function (req, resp) {
    resp.send("<h1>Loading basic HTML in Node.js</h1><br><h2>1</h2>"); 
});

app.listen(8182); //uygulamamız bu portu dinleyecek. http://localhost:8182