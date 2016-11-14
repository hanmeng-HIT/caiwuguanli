package function;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import entity.gongzi;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import com.opensymphony.xwork2.ActionSupport;

import connectdb.ConnectionTool;

import org.apache.struts2.ServletActionContext;


public class gongzisee extends ActionSupport {
	private gongzi gbox = new gongzi();
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession(); 
	private String ID= (String)session.getAttribute("ID");
	public String show() {
		ID = (String)session.getAttribute("ID");
		Connection conn = null;
		conn = ConnectionTool.connectTheDb();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from id where ID='"+ID+"'";
		try{
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next())
			{
				gongzi temp = new gongzi();
				temp.setID(rs.getString("ID"));
				temp.setJiben(rs.getDouble("jiben"));
				temp.setGangwei(rs.getDouble("gangwei"));
				temp.setJintie(rs.getDouble("jintie"));
				temp.setJiaban(rs.getDouble("jiaban"));
				gbox=temp;
				return "finish";
			}
			return "unfinish";
		}catch(Exception e){
			return "ERROR";
		}
	}
	public gongzi getGbox() {
		return gbox;
	}
	public void setGbox(gongzi gbox) {
		this.gbox = gbox;
	}
}
