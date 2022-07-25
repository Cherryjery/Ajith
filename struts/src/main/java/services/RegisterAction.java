package services;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbconpack.DBConn;
import dtopack.UserDTO;

public  class RegisterAction extends Action{
	
	private UserDTO userDTO;
	private DBConn dbcon;
	
	
	public UserDTO getUserDTO() {
		return userDTO;
	}


	public void setUserDTO(UserDTO userDTO) {
		this.userDTO = userDTO;
	}
	public DBConn getDbcon() {
		return dbcon;
	}
	public void setDbcon(DBConn dbcon) {
		this.dbcon = dbcon;
	}
@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		

	dbcon= new DBConn();
	userDTO = new UserDTO();
	
	
	userDTO.setUname(request.getParameter("uname"));
	
	userDTO.setUpass(request.getParameter("upass"));
	
	userDTO.setCity(request.getParameter("city"));
	
	
	
	boolean a=dbcon.registerUser(userDTO);
	
	if(a) {
			
			return "Logout-Success";
			
		}
		
	else {
	
	return "Logout-Fail";
	
	}
	}
}
