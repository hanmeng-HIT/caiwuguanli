package function;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import connectdb.ConnectionTool;
import entity.gongzi;
import entity.tax;

public class gongziseeall {
	private List<gongzi> gongziall = new ArrayList<gongzi>();
	private String ID;
	public String show() {
		Connection conn = null;
		conn = ConnectionTool.connectTheDb();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from gongzi";
		try {
			System.out.println(ID);
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				gongzi temp1 = new gongzi();
				temp1.setJiben(rs.getDouble("jiben"));
				temp1.setGangwei(rs.getDouble("gangwei"));
				temp1.setJiaban(rs.getDouble("jiaban"));
				temp1.setJintie(rs.getDouble("jintie"));
				temp1.setID(rs.getString("gongzinum"));
				temp1.setTime(rs.getString("gongzinum").substring(7));
				String temp=rs.getString("gongzinum").substring(0,7);
				System.out.println(temp);
				String temp2=ID;
				if(temp.equals(temp2)){
					gongziall.add(temp1);
				}
				}
			return "finish";
			}catch (Exception e) {
				e.printStackTrace();
				return "Error";
			}
			     
		}
	public List<gongzi> getGongziall() {
		return gongziall;
	}
	public void setGongziall(List<gongzi> gongziall) {
		this.gongziall = gongziall;
	}
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	
}
