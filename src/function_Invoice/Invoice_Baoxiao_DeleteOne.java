package function_Invoice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;

import connectdb.ConnectionTool;

public class Invoice_Baoxiao_DeleteOne extends ActionSupport{
	private int code;
	public String Delete(){
		Connection conn = null;
		PreparedStatement ps = null;
		String sql = "delete from InvoiceBaoxiao where Code="+code+"";
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
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
}
