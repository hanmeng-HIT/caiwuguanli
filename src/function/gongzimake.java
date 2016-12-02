package function;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.opensymphony.xwork2.ActionSupport;

import connectdb.ConnectionTool;

public class gongzimake extends ActionSupport {
	private String ID;
	private double jiben;
	private double gangwei;
	private double jintie;
	private double jiaban;
	public String make() {
		Connection conn = null;
		PreparedStatement ps = null;
		String sql= "update id set jiben=?,gangwei=?,jintie=?,jiaban=? where ID=?";
		conn= ConnectionTool.connectTheDb();
		try{
			ps = conn.prepareStatement(sql);
			ps.setDouble(1,jiben);
			ps.setDouble(2,gangwei);
			ps.setDouble(3,jintie);
			ps.setDouble(4,jiaban);
			ps.setString(5,ID);
			ps.executeUpdate();
			return "finish";
		}catch(Exception e){
			e.printStackTrace();
			return "Error";
		}
		
		
		
		
		
	}
	public double getJiben() {
		return jiben;
	}
	public void setJiben(double jiben) {
		this.jiben = jiben;
	}
	public double getGangwei() {
		return gangwei;
	}
	public void setGangwei(double gangwei) {
		this.gangwei = gangwei;
	}
	public double getJintie() {
		return jintie;
	}
	public void setJintie(double jintie) {
		this.jintie = jintie;
	}
	public double getJiaban() {
		return jiaban;
	}
	public void setJiaban(double jiaban) {
		this.jiaban = jiaban;
	}
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
}
