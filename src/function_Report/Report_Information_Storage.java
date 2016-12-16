package function_Report;

import com.opensymphony.xwork2.ActionSupport;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import connectdb.ConnectionTool;
import entity.Report;
public class Report_Information_Storage extends ActionSupport{
	private float shouruyue;
	private float shourunian;
	private float shuijinyue;
	private float shuijinnian;
	private float yingyeyue;
	private float yingyenian;
	private float guanliyue;
	private float guanlinian;
	private float caiwuyue;
	private float caiwunian;
	private float touziyue;
	private float touzinian;
	private float wairuyue;
	private float wairunian;
	private float waichuyue;
	private float waichunian;
	private float lirunyue;
	private float lirunnian;
	private String date;
	private String month;
	public String Add()
	{
		Connection conn = null;
		conn = ConnectionTool.connectTheDb();
		PreparedStatement ps1 = null;
		String sql1 ="INSERT INTO Report (Shouruyue,Shourunian,Shuijinyue,Shuijinnian,Yingyeyue,Yingyenian,Guanliyue,Guanlinian,Caiwuyue,Caiwunian,Touziyue,Touzinian,Wairuyue,Wairunian,Waichuyue,Waichunian,Lirunyue,Lirunnian,Date,Month) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try{		
			ps1 = conn.prepareStatement(sql1);
			ps1.setFloat(1,shouruyue);
			ps1.setFloat(2,shourunian);
			ps1.setFloat(3,shuijinyue);
			ps1.setFloat(4,shuijinnian);
			ps1.setFloat(5,yingyeyue);
			ps1.setFloat(6,yingyenian);
			ps1.setFloat(7,guanliyue);
			ps1.setFloat(8,guanlinian);
			ps1.setFloat(9,caiwuyue);
			ps1.setFloat(10,caiwunian);
			ps1.setFloat(11,touziyue);
			ps1.setFloat(12,touzinian);
			ps1.setFloat(13,wairuyue);
			ps1.setFloat(14,wairunian);
			ps1.setFloat(15,waichuyue);
			ps1.setFloat(16,waichunian);
			ps1.setFloat(17,lirunyue);
			ps1.setFloat(18,lirunnian);
			ps1.setString(19,date);
			ps1.setString(20,month);
			ps1.executeUpdate();
			return "finish";
		}catch(Exception e){
			e.printStackTrace();
			return "Error";}
	}
	public float getShouruyue() {
		return shouruyue;
	}
	public void setShouruyue(float shouruyue) {
		this.shouruyue = shouruyue;
	}
	public float getShourunian() {
		return shourunian;
	}
	public void setShourunian(float shourunian) {
		this.shourunian = shourunian;
	}
	public float getShuijinyue() {
		return shuijinyue;
	}
	public void setShuijinyue(float shuijinyue) {
		this.shuijinyue = shuijinyue;
	}
	public float getShuijinnian() {
		return shuijinnian;
	}
	public void setShuijinnian(float shuijinnian) {
		this.shuijinnian = shuijinnian;
	}
	public float getYingyeyue() {
		return yingyeyue;
	}
	public void setYingyeyue(float yingyeyue) {
		this.yingyeyue = yingyeyue;
	}
	public float getYingyenian() {
		return yingyenian;
	}
	public void setYingyenian(float yingyenian) {
		this.yingyenian = yingyenian;
	}
	public float getGuanliyue() {
		return guanliyue;
	}
	public void setGuanliyue(float guanliyue) {
		this.guanliyue = guanliyue;
	}
	public float getGuanlinian() {
		return guanlinian;
	}
	public void setGuanlinian(float guanlinian) {
		this.guanlinian = guanlinian;
	}
	public float getCaiwuyue() {
		return caiwuyue;
	}
	public void setCaiwuyue(float caiwuyue) {
		this.caiwuyue = caiwuyue;
	}
	public float getCaiwunian() {
		return caiwunian;
	}
	public void setCaiwunian(float caiwunian) {
		this.caiwunian = caiwunian;
	}
	public float getTouziyue() {
		return touziyue;
	}
	public void setTouziyue(float touziyue) {
		this.touziyue = touziyue;
	}
	public float getTouzinian() {
		return touzinian;
	}
	public void setTouzinian(float touzinian) {
		this.touzinian = touzinian;
	}
	public float getWairuyue() {
		return wairuyue;
	}
	public void setWairuyue(float wairuyue) {
		this.wairuyue = wairuyue;
	}
	public float getWairunian() {
		return wairunian;
	}
	public void setWairunian(float wairunian) {
		this.wairunian = wairunian;
	}
	public float getWaichuyue() {
		return waichuyue;
	}
	public void setWaichuyue(float waichuyue) {
		this.waichuyue = waichuyue;
	}
	public float getWaichunian() {
		return waichunian;
	}
	public void setWaichunian(float waichunian) {
		this.waichunian = waichunian;
	}
	public float getLirunyue() {
		return lirunyue;
	}
	public void setLirunyue(float lirunyue) {
		this.lirunyue = lirunyue;
	}
	public float getLirunnian() {
		return lirunnian;
	}
	public void setLirunnian(float lirunnian) {
		this.lirunnian = lirunnian;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
}
