var express = require("express");
var app = express();

app.get("/", function (req, resp) {
    resp.send("Hello World!"); //kullanıcılara görünecek yazı
});

app.listen(8182); //uygulamamız bu portu dinleyecek. http://localhost:8182