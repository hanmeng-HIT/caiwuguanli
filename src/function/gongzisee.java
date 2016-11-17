package function;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entity.gongzi;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import com.opensymphony.xwork2.ActionSupport;

import connectdb.ConnectionTool;

import org.apache.struts2.ServletActionContext;

public class gongzisee extends ActionSupport {

	private List<gongzi> gbox = new ArrayList<gongzi>();
	/*
	 * HttpServletRequest request = ServletActionContext.getRequest();
	 * HttpSession session = request.getSession(); private String ID=
	 * (String)session.getAttribute("ID");
	 */
	public String show() {
		/*ID = (String)session.getAttribute("ID");*/
		Connection conn = null;
		conn = ConnectionTool.connectTheDb();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from id";
		try{
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next())
			{
				gongzi temp = new gongzi();
				temp.setID(rs.getString("ID"));
				temp.setName(rs.getString("name"));
				temp.setJiben(rs.getDouble("jiben"));
				temp.setGangwei(rs.getDouble("gangwei"));
				temp.setJintie(rs.getDouble("jintie"));
				temp.setJiaban(rs.getDouble("jiaban"));
				temp.setGtax(rs.getDouble("gtax"));
				temp.setTruemoney(rs.getDouble("truemoney"));
				gbox.add(temp);
			}
			return "finish";
		}catch(Exception e){
			return "ERROR";
		}
	}
	public List<gongzi> getGbox() {
		return gbox;
	}
	public void setGbox(List<gongzi> gbox) {
		this.gbox = gbox;
	}


}
