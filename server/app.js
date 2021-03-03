const express = require('express');
const port = 8080;
const app = express();
const api=require("./api.js");
// 跨域配置 模块
const cors=require("cors");
app.use(cors());
//使用路由中间件
app.use('',api);
app.listen(port, () => console.log(port + ' port is already'));

