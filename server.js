var express = require("express");
var app = express();

app.get("/", function (req, resp) {
    resp.send("<h1>Merhaba Dünya - 3</h1>"); 
});

app.listen(8182); //uygulamamız bu portu dinleyecek. http://localhost:8182