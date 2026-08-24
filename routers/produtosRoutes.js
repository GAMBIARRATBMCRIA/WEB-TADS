import express from "express";
const router = express.Router();

router.get("/", (req, res) => {
    res.send("Catálogo de produtos cadastrados!");
});

router.get("/promocoes", (req, res) => {
    res.send("Lis de produtos em promoção!");
});

router.get("/categoria/:nomecategoria", (req, res) => {
    res.send("Filtrando produtos por categoria:"+  req.params.nomecategoria);
});



export default router;