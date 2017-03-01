var express = require("express");
var app = express();

app.get("/", function (req, resp) {
    resp.send("<h1>Getting Started with Node JS  - 4</h1>"); 
});

app.listen(8182); 