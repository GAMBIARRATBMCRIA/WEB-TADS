import express from "express";
const router = express.Router();

router.get("/", (req, res) => {
    res.send("Lista geral de usuários cadastrados!");
});

router.get("/perfil", (req, res) => {
    res.send("Página de perfil dos user logado!");
});

router.get("/cadastro", (req, res) => {
    res.send("Página de cadastros do user");
});


router.get("/:id", (req, res) => {
    res.send("Detalhes do user de id:" + req.params.id);
});



export default router;