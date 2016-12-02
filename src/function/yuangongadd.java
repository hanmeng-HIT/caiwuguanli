package function;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.opensymphony.xwork2.ActionSupport;

import connectdb.ConnectionTool;

public class yuangongadd extends ActionSupport {
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
		String sql = "select count(1) from id";
		String sql1 ="INSERT INTO id (ID,password,name,age,bumen,tele,email) VALUES (?,?,?,?,?,?,?)";
		try{
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()){
				count=rs.getInt(1);
			}
			
			System.out.println("+++++++"+count+"+++++");
			String ID=String.valueOf(2016000+count);
			ps1 = conn.prepareStatement(sql1);
			ps1.setString(1,ID);
			ps1.setString(2,"000000");
			ps1.setString(3,name);
			ps1.setInt(4,age);
			ps1.setString(5,bumen);
			ps1.setString(6,tele);
			ps1.setString(7,email);
			ps1.executeUpdate();
			return "finish";
		}catch(Exception e){
			e.printStackTrace();
			return "Error";
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
