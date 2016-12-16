package function_Invoice;
import com.opensymphony.xwork2.ActionSupport;

import connectdb.ConnectionTool;
import entity.Invoice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
public class Invoice_Baoxiao_Search_Shoukuandanwei extends ActionSupport{
	private String shoukuandanweimingcheng;	
	private List<Invoice> InvoiceArray = new ArrayList<Invoice>();
	
	public String Search(){
		Connection conn = null;
		conn = ConnectionTool.connectTheDb();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from InvoiceBaoxiao where Shoukuandanwei='"+shoukuandanweimingcheng+"'";
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
			System.out.println(InvoiceArray);
			return "finish";
		}catch(Exception e){
			return "Error";
		}
	}

	public String getShoukuandanweimingcheng() {
		return shoukuandanweimingcheng;
	}

	public void setShoukuandanweimingcheng(String shoukuandanweimingcheng) {
		this.shoukuandanweimingcheng = shoukuandanweimingcheng;
	}

	public List<Invoice> getInvoiceArray() {
		return InvoiceArray;
	}

	public void setInvoiceArray(List<Invoice> invoiceArray) {
		InvoiceArray = invoiceArray;
	}
}
