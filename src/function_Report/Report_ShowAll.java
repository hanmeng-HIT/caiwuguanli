package function_Report;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import connectdb.ConnectionTool;
import entity.Report;
public class Report_ShowAll extends ActionSupport{
	private List<Report> ReportArray = new ArrayList<Report>();
	public String ShowAll(){
		Connection conn = null;
		conn = ConnectionTool.connectTheDb();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from Report";
		try{
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next())
			{
				Report temp = new Report();
				temp.setCaiwunian(rs.getFloat("Caiwunian"));
				temp.setCaiwuyue(rs.getFloat("Caiwuyue"));
				temp.setDate(rs.getString("Date"));
				temp.setGuanlinian(rs.getFloat("Guanlinian"));
				temp.setGuanliyue(rs.getFloat("Guanliyue"));
				temp.setLirunnian(rs.getFloat("Lirunnian"));
				temp.setLirunyue(rs.getFloat("Lirunyue"));
				temp.setMonth(rs.getString("Month"));
				temp.setShourunian(rs.getFloat("Shourunian"));
				temp.setShouruyue(rs.getFloat("Shouruyue"));
				temp.setShuijinnian(rs.getFloat("Shuijinnian"));
				temp.setShuijinyue(rs.getFloat("Shuijinyue"));
				temp.setTouzinian(rs.getFloat("Touzinian"));
				temp.setTouziyue(rs.getFloat("Touziyue"));
				temp.setWaichunian(rs.getFloat("Waichunian"));
				temp.setWaichuyue(rs.getFloat("Waichuyue"));
				temp.setWairunian(rs.getFloat("Wairunian"));
				temp.setWairuyue(rs.getFloat("Wairuyue"));
				temp.setYingyenian(rs.getFloat("Yingyenian"));
				temp.setYingyeyue(rs.getFloat("Yingyeyue"));
				ReportArray.add(temp);
			}
			return "finish";
		}catch(Exception e){
			return "Error";
		}
	}
	public List<Report> getReportArray() {
		return ReportArray;
	}
	public void setReportArray(List<Report> reportArray) {
		ReportArray = reportArray;
	}
}
