// All external modules are loaded in:
const express = require("express")
const app = express()
const path = require("path")
const fs = require("fs")
const cors = require("cors")
var counter = 0

// Reading input from terminal start
const port = parseInt(process.argv[2])
console.log(`${port} registered as server port`)
// Reading input from terminal end

// Variables set up for long polling address: (Not currently in use)
const LIMIT = 20
const DELAY = 1000
let tick = 0
let connections = []

app.use(cors()) // Making sure the browser can request more data after it is loaded on the client computer.

// All server folders are set up:
app.use("/test", express.static("test"))

app.get("/", (req, res) => {
    res.send("Odin er gay")
    console.log("Connected")
})

app.get("/peniselongate", (req, res) => {
    res.sendFile(path.join(__dirname, `/penisElongate/frame${req.query.frame}.txt`))
})



app.listen(port, () => console.log(`Listening on ${port}`))