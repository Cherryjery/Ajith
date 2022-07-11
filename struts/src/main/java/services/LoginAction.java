package services;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbconpack.DBConn;
import dtopack.UserDTO;


public class LoginAction extends Action {
	
	private UserDTO userDTO;
	private DBConn dbcon;
	
	
	public UserDTO getUserDTO() {
		return userDTO;
	}


	public DBConn getDbcon() {
		return dbcon;
	}


	public void setDbcon(DBConn dbcon) {
		this.dbcon = dbcon;
	}


	public void setUserDTO(UserDTO userDTO) {
		this.userDTO = userDTO;
	}


	@Override
	public  String execute (HttpServletRequest request,HttpServletResponse response) {
		
		dbcon= new DBConn();
		userDTO = new UserDTO();
		
		userDTO.setUname(request.getParameter("uname"));
		userDTO.setUpass(request.getParameter("upass"));
		
		boolean  user = dbcon.checkUser(userDTO.getUname(), userDTO.getUpass());
		if (user) {
			boolean vaild = dbcon.checkFlag(userDTO.getUname());
			if (vaild) {
				dbcon.updateFlag(userDTO.getUname(), 1);
				request.getSession().setAttribute("uname",userDTO.getUname());
				return "login.welcome";
			}
			else {
				return "login.alreadylogedin";
			}
		}else {
		return "login.invaliduser";
	}
		
}

}
