package function_Invoice;

import com.opensymphony.xwork2.ActionSupport;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connectdb.ConnectionTool;
import entity.Invoice;

public class Invoice_Baoxiao_ShowAll extends ActionSupport {
	
	private List<Invoice> InvoiceArray = new ArrayList<Invoice>();
	public String ShowAll(){
		Connection conn = null;
		conn = ConnectionTool.connectTheDb();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from InvoiceBaoxiao";
		try{
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next())
			{
				Invoice temp = new Invoice();
				temp.setBeizhu(rs.getString("Beizhu"));
				temp.setCode(rs.getInt("Code"));
				temp.setDanjia(rs.getFloat("Danjia"));
				temp.setDanwei(rs.getString("Danwei"));
				temp.setDatebao(rs.getString("Date_Bao"));
				temp.setDatekai(rs.getString("Date_Kai"));
				temp.setDaxieheji(rs.getString("Daxieheji"));
				temp.setFukuandanweidaima(rs.getInt("Fukuandanweidaima"));
				temp.setFukuandanweimingcheng(rs.getString("Fukuandanweimingcheng"));
				temp.setHeji(rs.getFloat("Heji"));
				temp.setHuowumingcheng(rs.getString("Huowumingcheng"));
				temp.setJine(rs.getFloat("Jine"));
				temp.setNashuiren(rs.getInt("Nashuiren"));
				temp.setNumber(rs.getInt("Number"));
				temp.setShoukuandanwei(rs.getString("Shoukuandanwei"));
				temp.setShuliang(rs.getInt("Shuliang"));
				temp.setXinghao(rs.getString("Xinghao"));
				InvoiceArray.add(temp);
			}
			return "finish";
		}catch(Exception e){
			return "Error";
		}
	}
	public List<Invoice> getInvoiceArray() {
		return InvoiceArray;
	}
	public void setInvoiceArray(List<Invoice> invoiceArray) {
		InvoiceArray = invoiceArray;
	}
	
}
