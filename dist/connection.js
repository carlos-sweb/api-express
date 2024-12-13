"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
var promise_1 = __importDefault(require("mysql2/promise"));
var dotenv_1 = __importDefault(require("dotenv"));
dotenv_1.default.config();
var conn = promise_1.default.createPool({
    host: 'localhost',
    user: 'root',
    database: 'test',
    password: 'C4rl0sim',
    waitForConnections: true
});
exports.default = conn;
