
const express = require("express");
//============= Auth Route  =======


const PORT = 3000;
const app = express();
const authRouter = require("./routes/auth")

app.get("/getdata", (req, res) => {
    res.json(
        { user: "Mr. Dash Flutter" }
    );
});
app.get("/users", (req, res) => {
    res.json([{ name: "Phanna" },
    { name: "ដាវីន" }, { name: "គន្ធា" }, { name: "សារ៉ាន់" }, { name: "គីមឡុង" }, { name: "Ela" }]);
});

app.use(authRouter);
app.listen(
    PORT, () => {
        console.log(`Connectin to ${PORT} for create API`)
    });