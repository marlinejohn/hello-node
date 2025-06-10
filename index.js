const express = require("express");
const app = express();
const port = 8080;

app.get("/healthcheck", (req, res) => {
  res.send("It works! Node works !!");
});

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
