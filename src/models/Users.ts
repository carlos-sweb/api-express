import mysql2,{ RowDataPacket , FieldPacket} from "mysql2";
import pool from "./../connection";

interface IUser extends RowDataPacket {    
	id:number,
    mail : string
}


class modelUsers{	
	constructor(){}
	async getUser( mail: string , pwd: string ):Promise<IUser[]>	{
		
		const [rows]: [IUser[], FieldPacket[]] =   await pool.query<IUser[]>("SELECT mail,id FROM Users WHERE mail = ? and pwd = ?  ", [ mail , pwd  ] );			

		return rows;
		
					
	}
}


export default modelUsers;