package connectdb;
import java.sql.*;  
public class ConnectionTool  {   
    private static String DBDRIVER   = "com.mysql.jdbc.Driver";                                      
    private static String DBURL      = "jdbc:mysql://localhost:3306/moneydb?useUnicode=true&character=UTF-8&useSSL=true";               
    private static String DBUSER     = "root";  
    private static String DBPASSWORD = "123456";  
    public static Connection connectTheDb(){
    	try{
    		Class.forName(DBDRIVER);
            Connection conn = DriverManager.getConnection(DBURL,DBUSER,DBPASSWORD);
            return conn;
    	}catch(Exception e){
    		e.printStackTrace();
    		return null;
    	}
    	
    }
    
    /*public static void main(String args[]){
    	ConnectionTool con=new ConnectionTool();
    	Connection c=con.connectTheDb();
    }*/
    
    
}  