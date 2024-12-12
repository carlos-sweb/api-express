import express, { Express, Request, Response } from "express";
import dotenv from "dotenv";
import helmet from "helmet";
import cors from "cors";
import http from "http";
// Configuración de variables de entorno
dotenv.config();

const app: Express = express();
app.use(helmet());
app.use(cors());
// Middleware para parsear JSON
app.use(express.json());
const port: number = Number(process.env.PORT) || 3000;
const server = http.createServer(app);

// Rutas básicas
app.get('/', (req: Request, res: Response) => {
  res.json({
    "status":process.env.API_STATUS,
    "version":process.env.API_VERSION
  });
});

// Ejemplo de ruta con parámetros
app.get('/usuario/:id', (req: Request, res: Response) => {
  const userId = req.params.id;
  res.json({
    mensaje: `Obteniendo información del usuario ${userId}`,
    timestamp: new Date()
  });
});

// Ejemplo de ruta POST
app.post('/usuarios', (req: Request, res: Response) => {
  const nuevoUsuario = req.body;
  res.status(201).json({
    mensaje: 'Usuario creado exitosamente',
    usuario: nuevoUsuario
  });
});

// Manejador de errores básico
app.use((err: Error, req: Request, res: Response, next: any) => {
  console.error(err.stack);
  res.status(500).send('¡Algo salió mal!');
});

server.listen(port,"127.0.0.1");