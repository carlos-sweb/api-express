import mysql from 'mysql2/promise';
import dotenv from 'dotenv';
dotenv.config();
const conn = mysql.createPool( {
	host: 'localhost',
	user: 'root',
	database: 'test',
	password : 'C4rl0sim',
	waitForConnections: true
} );
export default conn;