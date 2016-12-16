package function_Invoice;

import com.opensymphony.xwork2.ActionSupport;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connectdb.ConnectionTool;
import entity.Invoice_Kai;
public class Invoice_Kai_ShowOne extends ActionSupport{
	private List<Invoice_Kai> InvoiceArray1 = new ArrayList<Invoice_Kai>();
	private int code;
	
	public String ShowOne(){
	Connection conn = null;
	conn = ConnectionTool.connectTheDb();
	PreparedStatement ps = null;
	ResultSet rs = null;
	String sql = "select * from InvoiceKai where Code="+code+"";
	try{
		ps = conn.prepareStatement(sql);
		rs = ps.executeQuery();
		
		while(rs.next())
		{
			Invoice_Kai temp = new Invoice_Kai();
			temp.setBeizhu(rs.getString("Beizhu"));
			temp.setCode(rs.getInt("Code"));
			temp.setDanjia(rs.getFloat("Danjia"));
			temp.setDanwei(rs.getString("Danwei"));
			temp.setDate(rs.getString("Date"));
			temp.setUsername(rs.getString("Username"));
			temp.setDaxieheji(rs.getString("Daxieheji"));
			temp.setHeji(rs.getFloat("Heji"));
			temp.setPinming(rs.getString("Pinming"));
			temp.setJine(rs.getFloat("Jine"));
			temp.setNumber(rs.getInt("Number"));
			temp.setShuliang(rs.getInt("Shuliang"));
			temp.setHuohao(rs.getString("Huohao"));
			InvoiceArray1.add(temp);
		}
		return "finish";
		
	}catch(Exception e){
		return "ERROR";
	}
	}

	public List<Invoice_Kai> getInvoiceArray1() {
		return InvoiceArray1;
	}

	public void setInvoiceArray1(List<Invoice_Kai> invoiceArray1) {
		InvoiceArray1 = invoiceArray1;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}
}
