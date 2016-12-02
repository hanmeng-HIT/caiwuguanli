package function;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.opensymphony.xwork2.ActionSupport;

import connectdb.ConnectionTool;

public class pschange extends ActionSupport {
     private String ID;
     private String password;
     public String change() {
    	 Connection conn = null;
 		PreparedStatement ps = null;
 		String sql= "update id set password=? where ID=?";
 		conn= ConnectionTool.connectTheDb();
 		try{
 			ps = conn.prepareStatement(sql);
 			ps.setString(1,password);
 			ps.setString(2, ID);
 			ps.executeUpdate();
 			return "finish";
     }catch(Exception e){
			e.printStackTrace();
			return "Error";
		}
     }
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
