import express from "express";
import { router as gamesRT } from "./src/routes/games.js";
import { connection } from "./db_confing.js";

const [a, b] = await connection.query("SELECT BIN_TO_UUID(id) AS ID, title, year, developer FROM games");

console.log(a);

const PORT = process.env.PORT ?? 3000;
const app = express();
app.use(express.json())
app.listen(PORT);
app.use("/games", gamesRT);