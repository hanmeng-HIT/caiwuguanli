package function;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.opensymphony.xwork2.ActionSupport;

import connectdb.ConnectionTool;
import entity.tax;

public class taxjudge extends ActionSupport {
	private String taxnumber;
    private tax tbox=new tax();
	public String judge() {
		Connection conn = null;
		conn = ConnectionTool.connectTheDb();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from tax where taxnumber='"+taxnumber+"'";
		try {
			ps = conn.prepareStatement(sql);
			//ps.setString(1, taxnumber);
			rs = ps.executeQuery();
			while (rs.next()) {
				System.out.println("1111");
				System.out.println(taxnumber);
				tbox.setTaxnumber(rs.getString("taxnumber"));
				tbox.setTaxsuode(rs.getDouble("taxsuode"));
				tbox.setTaxyingye(rs.getDouble("taxyingye"));
				tbox.setTaxyncj(rs.getDouble("taxyncj"));
				tbox.setTaxynjy(rs.getDouble("taxynjy"));
				tbox.setTaxzengzhi(rs.getDouble("taxzengzhi"));
				return "finish1";
			}
			return "finish2";
		} catch (Exception e) {
			e.printStackTrace();
			//System.out.println(e);
			return "Error";
		}
	}

	public String getTaxnumber() {
		return taxnumber;
	}

	public void setTaxnumber(String taxnumber) {
		this.taxnumber = taxnumber;
	}

	public tax getTbox() {
		return tbox;
	}

	public void setTbox(tax tbox) {
		this.tbox = tbox;
	}
}
