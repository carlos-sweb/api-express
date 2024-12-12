"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var express_1 = require("express");
var helmet_1 = require("helmet");
var app = (0, express_1.default)();
var dotenv_1 = require("dotenv");
dotenv_1.default.config();
var port = process.env.PORT;
var server_url = process.env.URL;
app.use((0, helmet_1.default)());
app.get('/', function (req, res) {
    res.json({
        "status": "live",
        "version": "1.0.0"
    });
});
app.listen(port, server_url, function () {
    console.log("Example app listening on port ".concat(port));
});
