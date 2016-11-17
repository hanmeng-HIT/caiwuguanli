package function;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connectdb.ConnectionTool;
import entity.tax;

public class taxjudge {
	private String taxnumber;
    private tax tbox;
	public String judge() {
		Connection conn = null;
		conn = ConnectionTool.connectTheDb();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from tax where taxnumber=taxnumber";
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				tbox.setTaxsuode(rs.getDouble("taxsuode"));
				tbox.setTaxyingye(rs.getDouble("taxyingye"));
				tbox.setTaxyncj(rs.getDouble("taxyncj"));
				tbox.setTaxynjy(rs.getDouble("taxynjy"));
				tbox.setTaxzengzhi(rs.getDouble("taxzengzhi"));
				return "finish1";
			}
			return "finish2";
		} catch (Exception e) {
			return "ERROR";
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
