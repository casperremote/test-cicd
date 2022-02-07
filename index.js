const express = require("express");
const app = express();

app.get("/hi", (req, res) => {
  res.send("hi route");
});

app.get("/", (req, res) => {
  res.send("home page");
});

app.listen(process.env.PORT, () => {
  console.log(`Server started on ${process.env.PORT}`);
});
