"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
var express_1 = __importDefault(require("express"));
var express_session_1 = __importDefault(require("express-session"));
var session_file_store_1 = __importDefault(require("session-file-store"));
var uuid_1 = require("uuid");
var dotenv_1 = __importDefault(require("dotenv"));
var helmet_1 = __importDefault(require("helmet"));
var cors_1 = __importDefault(require("cors"));
var http_1 = __importDefault(require("http"));
dotenv_1.default.config();
var login_1 = __importDefault(require("./routes/login"));
var FileStore = (0, session_file_store_1.default)(express_session_1.default);
var app = (0, express_1.default)();
app.use((0, express_session_1.default)({
    store: new FileStore({
        path: './sessions',
        ttl: 86400,
        retries: 2
    }),
    resave: false,
    saveUninitialized: false,
    genid: function (req) {
        return (0, uuid_1.v4)();
    },
    secret: 'keyboard cat',
    cookie: {
        secure: process.env.NODE_ENV === 'production',
        httpOnly: true,
        maxAge: 24 * 60 * 60 * 1000
    }
}));
app.use((0, helmet_1.default)());
app.use((0, cors_1.default)());
app.use(express_1.default.json());
app.use(express_1.default.urlencoded({ extended: true }));
app.use("/login", login_1.default);
var port = Number(process.env.PORT) || 3000;
var server = http_1.default.createServer(app);
app.get("/", function (req, res) {
    res.json({
        "status": "live",
        "version": process.env.API_VERSION,
        "login": req.session.user ? true : false
    });
});
app.use(function (err, req, res, next) {
    console.error(err.stack);
    res.status(500).send("¡Algo salió mal!");
});
server.listen(port, process.env.HOST);
