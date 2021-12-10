const express = require('express')
const path = require('path');

const hostname = "192.168.50.100";
const port = 3000;

const app = express()

app.set("view engine", "ejs");
app.set('views', path.join(__dirname, '/views'))
app.use(express.static(__dirname + '/public/css'));

app.get('/', (req, res) => {
  res.render("index");
})

app.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
  console.log("Done")
});
