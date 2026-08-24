import express from "express";
const router = express.Router();

router.get("/", (req, res) => {
    res.send("Lista geral de pedidos!");
});

router.get("/myorders", (req, res) => {
    res.send("Hsistórico de pedidos!");
});

router.get("/status/:codigo", (req, res) => {
    res.send("Consultando Status do pedido de número:"+ req.params.codigo);
});



export default router;