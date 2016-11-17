package function;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import connectdb.ConnectionTool;

public class signup extends ActionSupport {
	private String ID;
	private String password;
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession(); 
	public String judge() {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from id where ID='"+ID+"'";
		conn = ConnectionTool.connectTheDb();
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				//if (rs.getString("password") == password) {
				if(rs.getString("password").equals(password)){
					session.setAttribute("ID",ID);
					return "finish";
				} else{
					return "unfinish";
				}
			}
			return "Error";
		} catch (Exception e) {
			System.out.println(e);
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
