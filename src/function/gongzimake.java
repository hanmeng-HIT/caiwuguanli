package function;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.opensymphony.xwork2.ActionSupport;

import connectdb.ConnectionTool;
import entity.gongzi;

public class gongzimake extends ActionSupport {
	private String ID;
	private double jiben;
	private double gangwei;
	private double jintie;
	private double jiaban;
	private String time;
	public String make() {
		Connection conn = null;
		PreparedStatement ps = null;
		PreparedStatement ps1 = null;
		PreparedStatement ps2 = null;
		String sql= "update id set jiben=?,gangwei=?,jintie=?,jiaban=? where ID=?";
		String sql1 ="INSERT INTO gongzi (gongzinum,jiben,gangwei,jiaban,jintie) VALUES (?,?,?,?,?)";
		String sql2= "update id set gtax=?,truemoney=? where ID=?";
		conn= ConnectionTool.connectTheDb();
		try{
			ps = conn.prepareStatement(sql);
			ps1 = conn.prepareStatement(sql1);
			ps1.setString(1,ID+time);
			ps1.setDouble(2,jiben);
			ps1.setDouble(3,gangwei);
			ps1.setDouble(4,jiaban);
			ps1.setDouble(5,jintie);
			ps.setDouble(1,jiben);
			ps.setDouble(2,gangwei);
			ps.setDouble(3,jintie);
			ps.setDouble(4,jiaban);
			ps.setString(5,ID);
			ps.executeUpdate();
			ps1.executeUpdate();
			
			gongzi temp = new gongzi();
			double total=gangwei+jiaban+jiben+jintie;
			double total2=0;
			if(total<=3500){
				temp.setGtax(0);
			}
			else{
				total2=total-3500;
				if(total2<=1500){
					total2=total2*0.03;
				}
				else if(total2>1500&&total2<=4500){
					total2=total2*0.1-105;
				}
				else if(total2>4500&&total2<=9000)
				{
					total2=total2*0.2-555;
				}
				else if(total2>9000&&total2<=35000){
					total2=total2*0.25-1005;
				}
				else if(total2>35000&&total2<=55000){
					total2=total2*0.3-2775;
				}
			}
			temp.setGtax(total2);
			temp.setTruemoney(total-total2);
			ps2 = conn.prepareStatement(sql2);
			ps2.setDouble(1,temp.getGtax());
			ps2.setDouble(2,temp.getTruemoney());
			ps2.setString(3,ID);
			ps2.executeUpdate();
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
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
}
