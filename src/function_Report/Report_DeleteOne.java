package function_Report;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;

import connectdb.ConnectionTool;
public class Report_DeleteOne extends ActionSupport{
	private String month;
	public String Delete(){
		Connection conn = null;
		PreparedStatement ps = null;
		String sql = "delete from Report where Month='"+month+"'";
		conn = ConnectionTool.connectTheDb();
        try {
            ps=conn.prepareStatement(sql);
            ps.executeUpdate();
            return "finish";
        } catch (SQLException e) {
        	e.printStackTrace();
            return "Error";
        }
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}

}
