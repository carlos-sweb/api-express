import {  Request, Response , Router } from "express";
import dotenv from "dotenv";
dotenv.config();
import bcrypt from "bcrypt";
const salt: string = String(process.env.SALT);
const router = Router();
import _ from "lodash";
import modelUsers from "./../models/Users";

const mUsers = new modelUsers();

router.delete("/",async ( req: Request , res: Response  )=>{
	req.session.user = undefined;
	res.json([]);
})
router.post("/",async ( req: Request , res: Response  )=>{
	
	const mail: string  = _.has(req.body,"mail") ? req.body.mail : "" ,
	pwd: string  = _.has(req.body,"pwd") ? bcrypt.hashSync( req.body.pwd , salt ) : "" ;
	const user = await mUsers.getUser( mail , pwd );

	if( user.length == 1 ){
		req.session.user = { id:100,mail:user[0].mail}
		res.json({ "loggin": true });
	}else{
		res.json({ "loggin": false });
	}

});

export default router;