package function_Invoice;
import com.opensymphony.xwork2.ActionSupport;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connectdb.ConnectionTool;
public class Invoice_Kai_Information_Storage extends ActionSupport{
	private String date;
	private String username;
	private int code;
	private int number;
	private String huohao;
	private String pinming;
	private String danwei;
	private int shuliang;
	private float danjia;
	private float jine;
	private String daxieheji;
	private float heji;
	private String beizhu;
	
	public String Add()
	{
		Connection conn = null;
		conn = ConnectionTool.connectTheDb();
		PreparedStatement ps1 = null;
		String sql1 ="INSERT INTO InvoiceKai(Date,Username,Code,Number,Huohao,Pinming,Danwei,Shuliang,Danjia,Jine,Daxieheji,Heji,Beizhu) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try{		
			ps1 = conn.prepareStatement(sql1);
			ps1.setString(1,date);
			ps1.setString(2,username);
			ps1.setInt(3,code);
			ps1.setInt(4,number);
			ps1.setString(5,huohao);
			ps1.setString(6,pinming);
			ps1.setString(7,danwei);
			ps1.setInt(8,shuliang);
			ps1.setFloat(9,danjia);
			ps1.setFloat(10,jine);
			ps1.setString(11,daxieheji);
			ps1.setFloat(12,heji);
			ps1.setString(13,beizhu);
			ps1.executeUpdate();
			return "finish";
		}catch(Exception e){
			e.printStackTrace();
			return "Error";}
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getHuohao() {
		return huohao;
	}

	public void setHuohao(String huohao) {
		this.huohao = huohao;
	}

	public String getPinming() {
		return pinming;
	}

	public void setPinming(String pinming) {
		this.pinming = pinming;
	}

	public String getDanwei() {
		return danwei;
	}

	public void setDanwei(String danwei) {
		this.danwei = danwei;
	}

	public int getShuliang() {
		return shuliang;
	}

	public void setShuliang(int shuliang) {
		this.shuliang = shuliang;
	}

	public float getDanjia() {
		return danjia;
	}

	public void setDanjia(float danjia) {
		this.danjia = danjia;
	}

	public float getJine() {
		return jine;
	}

	public void setJine(float jine) {
		this.jine = jine;
	}

	public String getDaxieheji() {
		return daxieheji;
	}

	public void setDaxieheji(String daxieheji) {
		this.daxieheji = daxieheji;
	}

	public float getHeji() {
		return heji;
	}

	public void setHeji(float heji) {
		this.heji = heji;
	}

	public String getBeizhu() {
		return beizhu;
	}

	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
}
