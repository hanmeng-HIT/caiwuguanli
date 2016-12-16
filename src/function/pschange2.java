package function;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connectdb.ConnectionTool;

public class pschange2 {
	private String ID;
	private String oldps;
	private String newps;

	public String change() {
		Connection conn = null;
		PreparedStatement ps = null;
		PreparedStatement ps1 = null;
		ResultSet rs1 = null;
		String sql = "update id set password=? where ID=?";
		String sql1 = "select * from id where ID='" + ID + "'";
		conn = ConnectionTool.connectTheDb();
		try {
			System.out.println(ID);
			System.out.println(oldps);
			
		
			ps1 = conn.prepareStatement(sql1);
			rs1 = ps1.executeQuery();
			//System.out.println(rs1.getString("password"));
			while (rs1.next()) {
				if (rs1.getString("password").equals(oldps)) {
					ps = conn.prepareStatement(sql);
					ps.setString(1, newps);
					ps.setString(2, ID);
					ps.executeUpdate();
					return "finish";
				} else {
					return "unfinish";
				}
			}
			return "unfinish";
		} catch (Exception e) {
			System.out.println(e);
			return "Error";
		}
	}

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getOldps() {
		return oldps;
	}

	public void setOldps(String oldps) {
		this.oldps = oldps;
	}

	public String getNewps() {
		return newps;
	}

	public void setNewps(String newps) {
		this.newps = newps;
	}
}
