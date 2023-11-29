import { connection } from "../../db_confing.js";

export class GamesMd {
    static async getAll(developer) {
        if (!developer) {
            const [games, info] = await connection.query(`SELECT 
        title, year, developer FROM games`);
            return games.length ? games : null;
        }
        const [games, info] = await
            connection.query(`SELECT title, year, developer FROM games WHERE developer LIKE ?`, [`%${developer}%`]);
        return games.length ? games : null;
    }
    static async getById(ID) {
        const [games, info] = await connection.query(`SELECT title, year, developer, BIN_TO_UUID(id) as id FROM games WHERE ID = UUID_TO_BIN(?)`, [ID])
        return games;

    }

    static async deleteOne(id) {
        const [info] = await connection.query(`DELETE FROM games WHERE games.id = UUID_TO_BIN(?)`, [id]);
        return info.affectedRows;
    }
}