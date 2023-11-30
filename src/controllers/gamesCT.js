import { GamesMd } from "../models/gamesMd.js";
import { isValidUUID } from "../utils/isValidUUID.js";
export class GamesCT {
  static async getAll(req, res) {
    const { developer } = req.query;
    const games = await GamesMd.getAll(developer);
    games
      ? res.status(200).json(games)
      : res.status(404).json({ message: "Game Not Found" });
  }
  static async getById(req, res) {
    const { id } = req.params;
    const isValidID = isValidUUID(id);
    if (!isValidID) return res.status(400).json({ message: "Not Valid Id" });
    const games = await GamesMd.getById(id);
    if (!games.length)
      return res.status(404).json({ message: "Game Not Found" });
    res.status(200).json(games);
  }
  static async deleteOne(req, res) {
    const { id } = req.params;
    const isValidID = isValidUUID(id);
    if (!isValidID) return res.status(400).json({ message: "Not Valid Id" });
    const result = await GamesMd.deleteOne(id);
    if (!result) return res.status(404).json({ message: "Game Not Found" });
    res.status(204);
  }
  static async updateOne(req, res) {
    const { id } = req.params;
    const isValidID = isValidUUID(id);
    if (!isValidID) return res.status(400).json({ message: "Not Valid Id" });
    const [isGame, _info] = await GamesMd.getById(id);
    if (!isGame) return res.status(404).json({ message: "Game Not Found" });
    const updateGame = await GamesMd.updateOne(id, req.body);
    updateGame
      ? res.status(200).json({ message: "Game Updated" })
      : res.status(404).json({ message: "Internal Server Error" });
  }
  static async addOne(req, res) {
    const gameCreated = await GamesMd.addOne(req.body);
    gameCreated
      ? res.status(201).json({ message: "Game created" })
      : res.status(500).json({ message: "Internal Server Error" });
  }
}

// const {title, year, poster, developer, genre} = req.body;
