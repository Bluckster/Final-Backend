import { GamesMd } from "../models/games.js";
import { isValidUUID } from "../utils/isValidUUID.js";
export class GamesCT {
    static async getAll(req, res) {
        const { developer } = req.query;
        const games = await GamesMd.getAll(developer)
        games ?
            res.status(200).json(games)
            :
            res.status(404).json({ message: "Game Not Found" })
    }
    static async getById(req, res) {
        const { id } = req.params;
        const isValidID = isValidUUID(id)
        if (!isValidID) return res.status(400).json({ message: "Not Valid Id" })
        const games = await GamesMd.getById(id);
        if (!games.length) return res.status(404).json({ message: "Game Not Found" });
        res.status(200).json(games);
    }
    static async deleteOne(req, res) {
        const { id } = req.params;
        const isValidID = isValidUUID(id);
        if (!isValidID) return res.status(400).json({ message: "Not Valid Id" });
        const result = await GamesMd.deleteOne(id);
        if (result === 0) {
            res.status(404).json({ message: "Game Not Found" });
        } else {
            res.status(204).json({message: "Movie Delete"});
        }
    }
}