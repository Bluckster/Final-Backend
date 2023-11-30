import { Router } from "express";
export const router = Router();
import { GamesCT } from "../controllers/gamesCT.js";

router.get("/", GamesCT.getAll);

router.get("/:id", GamesCT.getById);

router.post("/", GamesCT.addOne);

router.delete("/:id", GamesCT.deleteOne);

router.patch("/:id", GamesCT.updateOne);
