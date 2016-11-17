package function;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import connectdb.ConnectionTool;
import entity.people;

public class yuangongsee5 extends ActionSupport {
	private List<people> yuangong = new ArrayList<people>();
	public String show() {
		Connection conn = null;
		conn = ConnectionTool.connectTheDb();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from id where bumen='计划营销部'";
		try{
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next())
			{
				people temp = new people();
				temp.setID(rs.getString("ID"));
				temp.setName(rs.getString("name"));
				temp.setAge(rs.getInt("age"));
				temp.setBumen(rs.getString("bumen"));
				temp.setTele(rs.getString("tele"));
				temp.setEmail(rs.getString("email"));
				yuangong.add(temp);
			}
			return "finish";
			
		}catch(Exception e){
			return "ERROR";
		}
	}
	public List<people> getYuangong() {
		return yuangong;
	}
	public void setYuangong(List<people> yuangong) {
		this.yuangong = yuangong;
	}
}
