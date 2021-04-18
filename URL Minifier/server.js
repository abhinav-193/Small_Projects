const express = require("express");
const app = express();
const mongoose  = require("mongoose");

// ENV config
require('dotenv').config();
//Import DB Model
const ShortUrl = require("./models/shortUrl");
// Connection to DB.
mongoose.connect(process.env.MONGO_URI,
 {
    useNewUrlParser : true,
    useUnifiedTopology:true
 }, ()=>{
     console.log(`Database Connection established!`);
 });

const PORT = 5000 || process.env.PORT;
app.set("view engine", "ejs");
app.use(express.urlencoded({ extended: false}))


app.get("/", async(req,res)=>{
    const shortUrls = await ShortUrl.find();
    res.render("index", {shortUrls: shortUrls});
});
app.post("/shortUrls", async(req,res)=>{

await ShortUrl.create({ full: req.body.fullUrl})
res.redirect("/");
})

app.get("/:shortUrl", async(req,res)=>{
    const shortUrl = await ShortUrl.findOne({ short: req.params.shortUrl });
    if(shortUrl === null) return res.sendStatus(404);
    shortUrl.clicks++;
    shortUrl.save();
    res.redirect(shortUrl.full);
})

app.listen(PORT, (req,res)=>{
    const listenLog = {
        PORT : PORT,
        LOG : `Server is up and running on PORT :  ${PORT}`,
        URL : "http://localhost:5000/"
    }
    console.table(listenLog);
})