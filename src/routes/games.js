import { Router } from "express";
export const router = Router();
import { GamesCT } from "../controllers/gamesCT.js"; 

router.get("/", GamesCT.getAll);

router.get("/:id", GamesCT.getById );
router.post("/", (req, res)=>{
    console.log(req.body)
});
router.delete("/:id", GamesCT.deleteOne)

// (req, res)=>{
//     if(!req.query) return
//     res.json(data)
// })