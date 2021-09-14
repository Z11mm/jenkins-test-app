const express = require("express");
const app = express();
const PORT = 3000;

// const PORT = process.env.PORT || 3000;


app.get("/", function (req, res) {
  res.send("Hello World, is this working...");
});

app.listen(PORT);
