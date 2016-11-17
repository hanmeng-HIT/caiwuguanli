package function;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connectdb.ConnectionTool;
import entity.gongzi;

public class taxmake {
	private String taxnumber;
	private double fuwu;
	private double xiaoshou;
	private double caichan;
	private double taxyingye;
	private double taxzengzhi;
	private double taxyncj;
	private double taxynjy;
	private double taxsuode;

	public String make() {
		taxyingye = fuwu * 0.05;// 计算营业税
		taxzengzhi = xiaoshou * 0.03;// 计算增值税
		taxyncj = taxzengzhi + taxyingye * 0.07;// 计算应纳城建税
		taxynjy = taxzengzhi + taxyingye * 0.03;// 计算应纳教育附加
		Connection conn = null;
		PreparedStatement ps = null;
		PreparedStatement ps2 = null;
		ResultSet rs = null;
		String sql = "select * from id";
		String sql2= "INSERT INTO id (gtax,truemoney) VALUES (?,?)";
		String sql1= "INSERT INTO tax VALUES("+taxnumber+","+taxyingye+","+taxzengzhi+","+taxsuode+","+taxyncj+","+taxynjy+")";
		conn = ConnectionTool.connectTheDb();
		
		try{
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next())
			{
				gongzi temp = new gongzi();
				temp.setID(rs.getString("ID"));
				temp.setJiben(rs.getDouble("jiben"));
				temp.setGangwei(rs.getDouble("gangwei"));
				temp.setJintie(rs.getDouble("jintie"));
				temp.setJiaban(rs.getDouble("jiaban"));//以下为计算个人所得税部分
				double total=temp.getGangwei()+temp.getJiaban()+temp.getJiben()+temp.getJintie();
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
				ps2.executeUpdate();
			}
		}catch (Exception e) {
			System.out.println(e);
			return "ERROR";
		}
		
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			double dsgs = 0;
			while (rs.next()) {
				dsgs = dsgs + rs.getDouble("gtax");
			}
			taxsuode=dsgs;
		} catch (Exception e) {
			System.out.println(e);
			return "ERROR";
		}
		
		try{
			java.sql.Statement s=conn.createStatement();
			s.execute(sql1);
			conn.close();
			return "finish";
		}
		catch(Exception e){
			System.out.println(e);
			return "Error";
		}
	}

	public double getFuwu() {
		return fuwu;
	}

	public void setFuwu(double fuwu) {
		this.fuwu = fuwu;
	}

	public double getXiaoshou() {
		return xiaoshou;
	}

	public void setXiaoshou(double xiaoshou) {
		this.xiaoshou = xiaoshou;
	}

	public double getCaichan() {
		return caichan;
	}

	public void setCaichan(double caichan) {
		this.caichan = caichan;
	}

	public double getTaxyingye() {
		return taxyingye;
	}

	public void setTaxyingye(double taxyingye) {
		this.taxyingye = taxyingye;
	}

	public double getTaxzengzhi() {
		return taxzengzhi;
	}

	public void setTaxzengzhi(double taxzengzhi) {
		this.taxzengzhi = taxzengzhi;
	}

	public double getTaxyncj() {
		return taxyncj;
	}

	public void setTaxyncj(double taxyncj) {
		this.taxyncj = taxyncj;
	}

	public double getTaxynjy() {
		return taxynjy;
	}

	public void setTaxynjy(double taxynjy) {
		this.taxynjy = taxynjy;
	}

	public double getTaxsuode() {
		return taxsuode;
	}

	public void setTaxsuode(double taxsuode) {
		this.taxsuode = taxsuode;
	}
}

