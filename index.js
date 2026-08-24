
import express from "express";

import pedido from "./routers/pedidosRoutes.js";
import user from "./routers/usuariosRoutes.js";
import produto from "./routers/produtosRoutes.js";

const PORT = 8080;

const app = express();

app.get("/", (req, res)=>{

res.send("Servidor online!!!!!");
});


app.use("/pedidos", pedido);
app.use("/user", user);
app.use("/produto", produto);


app.use((req, res)=>{
    res.status(404).send("Caminho não encontrado!");
});

app.listen(PORT, ()=>{
    console.log("Servidor rodando em http://localhost:"+PORT);
});