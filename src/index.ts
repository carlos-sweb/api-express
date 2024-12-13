import express, { Express, Request, Response } from "express";
import session from "express-session";
import FileStoreFactory from 'session-file-store';
import { v4 as uuidv4 } from 'uuid';
import dotenv from "dotenv";
import helmet from "helmet";
import cors from "cors";
import http from "http";
// Configuración de variables de entorno
dotenv.config();
import routesLogin from "./routes/login";

const FileStore = FileStoreFactory(session);
const app: Express = express();
app.use(session({
  store: new FileStore({
    path: './sessions',
    ttl: 86400,
    retries: 2
   }),
   resave:false,
   saveUninitialized:false,
   genid: function(req) {
    //return genuuid() // use UUIDs for session IDs
    return uuidv4();
  },
  secret: 'keyboard cat',
  cookie: {
    secure: process.env.NODE_ENV === 'production',
    httpOnly: true,
    maxAge: 24 * 60 * 60 * 1000 // 24 hours
  }
}));
app.use(helmet());
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use("/login", routesLogin );
const port: number = Number(process.env.PORT) || 3000;
const server = http.createServer(app);
/*
app.get("/books",async ( req: Request , res: Response ) =>{        
    try{
      const [ rows ] = await connection.query("SELECT * FROM Books");
      res.json(rows)
    }catch(error){
      res.status(500).json({ error: 'Error Api' });
    }    
});
*/
// Rutas básicas
app.get("/", (req: Request, res: Response) => {  
  res.json({
    //"status":_.has(connection,"_closing") ? "down" : "live" ,
    "status":"live" ,
    "version":process.env.API_VERSION,
    "login": req.session.user ? true :  false
  });
});
// Manejador de errores básico
app.use((err: Error, req: Request, res: Response, next: any) => {
  console.error(err.stack);
  res.status(500).send( "¡Algo salió mal!" );
});

server.listen( port,process.env.HOST );