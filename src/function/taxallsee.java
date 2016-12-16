package function;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import connectdb.ConnectionTool;
import entity.tax;

public class taxallsee extends ActionSupport {
	private List<tax> taxall = new ArrayList<tax>();
	public String show() {
		Connection conn = null;
		conn = ConnectionTool.connectTheDb();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from tax";
		try{
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next())
			{
				tax temp = new tax();
				//System.out.println(rs.getString("ID"));
				temp.setTaxnumber(rs.getString("taxnumber"));
				temp.setTaxyingye(rs.getDouble("taxyingye"));
				temp.setTaxzengzhi(rs.getDouble("taxzengzhi"));
				temp.setTaxyncj(rs.getDouble("taxyncj"));
				temp.setTaxynjy(rs.getDouble("taxynjy"));
				temp.setTaxsuode(rs.getDouble("taxsuode"));
				taxall.add(temp);
			}
			return "finish";
			
		}catch(Exception e){
			return "Error";
		}
	}
	public List<tax> getTaxall() {
		return taxall;
	}
	public void setTaxall(List<tax> taxall) {
		this.taxall = taxall;
	}
}
