package function_Invoice;

import com.opensymphony.xwork2.ActionSupport;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connectdb.ConnectionTool;
public class Invoice_Baoxiao_Information_Storage extends ActionSupport {
	
	private String Date_kai;
	private String Date_bao;
	private int code;
	private int number;
	private String fukuandanweimingcheng;
	private int fukuandanweidaima;
	private String huowumingcheng;
	private String xinghao;
	private String danwei;
	private int shuliang;
	private float danjia;
	private float jine;
	private String daxieheji;
	private float heji;
	private String shoukuandanwei;
	private int nashuiren;
	private String beizhu;
	
	public String Add() {
		Connection conn = null;
		conn = ConnectionTool.connectTheDb();
		PreparedStatement ps1 = null;
		String sql1 ="INSERT INTO InvoiceBaoxiao(Date_Kai,Date_Bao,Code,Number,Fukuandanweimingcheng,Fukuandanweidaima,Huowumingcheng,Xinghao,Danwei,Shuliang,Danjia,Jine,Daxieheji,Heji,Shoukuandanwei,Nashuiren,Beizhu) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try{		
			ps1 = conn.prepareStatement(sql1);
			ps1.setString(1,Date_kai);
			ps1.setString(2,Date_bao);
			ps1.setInt(3,code);
			ps1.setInt(4,number);
			ps1.setString(5,fukuandanweimingcheng);
			ps1.setInt(6,fukuandanweidaima);
			ps1.setString(7,huowumingcheng);
			ps1.setString(8,xinghao);
			ps1.setString(9,danwei);
			ps1.setInt(10,shuliang);
			ps1.setFloat(11,danjia);
			ps1.setFloat(12,jine);
			ps1.setString(13,daxieheji);
			ps1.setFloat(14,heji);
			ps1.setString(15,shoukuandanwei);
			ps1.setInt(16,nashuiren);
			ps1.setString(17,beizhu);
			ps1.executeUpdate();
			return "finish";
		}catch(Exception e){
			e.printStackTrace();
			return "Error";}
	}

	public String getDate_kai() {
		return Date_kai;
	}

	public void setDate_kai(String date_kai) {
		Date_kai = date_kai;
	}

	public String getDate_bao() {
		return Date_bao;
	}

	public void setDate_bao(String date_bao) {
		Date_bao = date_bao;
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

	public String getFukuandanweimingcheng() {
		return fukuandanweimingcheng;
	}

	public void setFukuandanweimingcheng(String fukuandanweimingcheng) {
		this.fukuandanweimingcheng = fukuandanweimingcheng;
	}

	public int getFukuandanweidaima() {
		return fukuandanweidaima;
	}

	public void setFukuandanweidaima(int fukuandanweidaima) {
		this.fukuandanweidaima = fukuandanweidaima;
	}

	public String getHuowumingcheng() {
		return huowumingcheng;
	}

	public void setHuowumingcheng(String huowumingcheng) {
		this.huowumingcheng = huowumingcheng;
	}

	public String getXinghao() {
		return xinghao;
	}

	public void setXinghao(String xinghao) {
		this.xinghao = xinghao;
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

	public String getShoukuandanwei() {
		return shoukuandanwei;
	}

	public void setShoukuandanwei(String shoukuandanwei) {
		this.shoukuandanwei = shoukuandanwei;
	}

	public int getNashuiren() {
		return nashuiren;
	}

	public void setNashuiren(int nashuiren) {
		this.nashuiren = nashuiren;
	}

	public String getBeizhu() {
		return beizhu;
	}

	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	
}
