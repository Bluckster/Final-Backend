import express from "express";
import { router as gamesRT } from "./src/routes/gamesRt.js";
import { connection } from "./db_confing.js";
import cors from "cors";

const app = express();

app.use(cors());

const [a, b] = await connection.query(
  "SELECT BIN_TO_UUID(id) AS ID, title, year, developer FROM games"
);

const PORT = process.env.PORT ?? 3000;

app.use(express.json());

app.use("/games", gamesRT);

app.listen(PORT, () => {
  console.log(`Servidor escuchando en el puerto ${PORT}`);
});
