package function_Invoice;

import com.opensymphony.xwork2.ActionSupport;

import connectdb.ConnectionTool;
import entity.Invoice_Kai;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
public class Invoice_Kai_Search_Code extends ActionSupport {
	private String code;	
	private List<Invoice_Kai> InvoiceArray = new ArrayList<Invoice_Kai>();
	
	public String Search(){
		Connection conn = null;
		conn = ConnectionTool.connectTheDb();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from InvoiceKai where Code='"+code+"'";
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
				InvoiceArray.add(temp);
			}
			System.out.println(InvoiceArray);
			return "finish";
		}catch(Exception e){
			return "Error";
		}
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public List<Invoice_Kai> getInvoiceArray() {
		return InvoiceArray;
	}

	public void setInvoiceArray(List<Invoice_Kai> invoiceArray) {
		InvoiceArray = invoiceArray;
	}
}
