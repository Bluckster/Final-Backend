import { connection } from "../../db_confing.js";

export class GamesMd {
  static async getAll(developer) {
    if (!developer) {
      const [games, info] = await connection.query(`SELECT 
        title, poster, year, developer, BIN_TO_UUID(id) as id FROM games`);
      return games.length ? games : null;
    }
    const [games, info] = await connection.query(
      `SELECT title, year, developer FROM games WHERE developer LIKE ?`,
      [`%${developer}%`]
    );
    return games.length ? games : null;
  }
  static async getById(ID) {
    const [games, info] = await connection.query(
      `SELECT title, year, developer, BIN_TO_UUID(id) as id FROM games WHERE ID = UUID_TO_BIN(?)`,
      [ID]
    );
    return games;
  }

  static async deleteOne(id) {
    const [info] = await connection.query(
      `DELETE FROM games WHERE games.id = UUID_TO_BIN(?)`,
      [id]
    );
    return info.affectedRows;
  }
  static async updateOne(id, partialGame) {
    const updates = [];
    const values = [];

    for (const key in partialGame) {
      if (key !== "id") {
        updates.push(`${key} = ?`);
        values.push(partialGame[key]);
      }
    }

    values.push(id);

    const queryString = `UPDATE games SET ${updates.join(
      ","
    )} WHERE games.id = UUID_TO_BIN(?)`;

    const result = await connection.query(queryString, values);
    return result;
  }

  static async addOne(game) {
    const { title, year, developer, poster } = game;

    const result = await connection.query(
      "INSERT INTO games (title, year, developer, poster) VALUES (?, ?, ?, ?)",
      [title, year, developer, poster]
    );
    const genre = [];
    for (const gen of genre) {
      await connection.query(
        "INSERT INTO game_genres (game_id, genre_id) SELECT id, g.id FROM games m JOIN genres g ON g.title = ? AND g.name IN ('${gen}')"
      ),
        [title];
    }
    return result ? result : null;
  }
}
