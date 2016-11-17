package function;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connectdb.ConnectionTool;

public class yuangongadd {
	private String name;
    private int age;
    private String bumen;
    private String tele;
    private String email;
    private int count;
	public String add() {
		Connection conn = null;
		conn = ConnectionTool.connectTheDb();
		PreparedStatement ps = null;
		PreparedStatement ps1 = null;
		ResultSet rs = null;
		String sql = "select count(*) from id";
		String sql1 ="INSERT INTO id (ID,name,age,bumen,tele,email) VALUES (?,?,?,?,?,?)";
		try{
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			count=rs.getInt(0);
			String ID=String.valueOf(2016000+count);
			ps1 = conn.prepareStatement(sql1);
			ps1.setString(1,ID);
			ps1.setString(2,name);
			ps1.setInt(3,age);
			ps1.setString(4,bumen );
			ps1.setString(5,tele);
			ps1.setString(6,email);
			ps1.executeUpdate();
			return "finish";
		}catch(Exception e){
			return "ERROR";
		}
		
		
		
		
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getBumen() {
		return bumen;
	}
	public void setBumen(String bumen) {
		this.bumen = bumen;
	}
	public String getTele() {
		return tele;
	}
	public void setTele(String tele) {
		this.tele = tele;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
}
