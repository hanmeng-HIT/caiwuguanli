package function;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import connectdb.ConnectionTool;
import entity.people;

public class yuangongsee1 extends ActionSupport {
	private List<people> yuangong = new ArrayList<people>();
	public String show() {
		Connection conn = null;
		conn = ConnectionTool.connectTheDb();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String t="总经理办公室";
		String sql = "select * from id where bumen like '"+t+"'";
		try{
			
			ps = conn.prepareStatement(sql);
			//ps.setString(1,t);
			rs = ps.executeQuery();
			
			while(rs.next())
			{
				System.out.println("666");
				System.out.println(rs.getString("ID"));
				people temp = new people();
				temp.setID(rs.getString("ID"));
				temp.setName(rs.getString("name"));
				temp.setAge(rs.getInt("age"));
				temp.setBumen(rs.getString("bumen"));
				temp.setTele(rs.getString("tele"));
				temp.setEmail(rs.getString("email"));
				yuangong.add(temp);
			}
			System.out.println("789");
			System.out.println(yuangong);
			return "finish";
			
		}catch(Exception e){
			return "Error";
		}
	}
	public List<people> getYuangong() {
		return yuangong;
	}
	public void setYuangong(List<people> yuangong) {
		this.yuangong = yuangong;
	}
}


