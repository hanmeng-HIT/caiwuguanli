package function;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;

import connectdb.ConnectionTool;

public class yuangongdelete extends ActionSupport {
	private String ID;
	public String delete() {
		
		Connection conn = null;
		PreparedStatement ps = null;
		String sql = "delete from id where ID=?";
		conn = ConnectionTool.connectTheDb();
        try {
        	
            ps=conn.prepareStatement(sql);
            ps.setString(1,ID);
            ps.executeUpdate();
            return "finish";
        } catch (SQLException e) {
        	e.printStackTrace();
            return "Error";     
    }
		
		
		
	}
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}

}
