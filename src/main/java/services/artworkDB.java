package services;

//import java.sql.Statement;
import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.xdevapi.Statement;

import models.Artwork;
import utils.DBconnection;

public class artworkDB {
	private static Connection conn = null;
	private static java.sql.Statement stmt = null;
	private static ResultSet rslt = null;
	private static int result = 0;
	
	public static boolean insertartwork(Artwork artwork)
	{
		boolean isSuccess=false ;
		
		/*String url = "jdbc:mysql://localhost:3306/arttreasures";
		String user ="root";
		String pass="champaku10";
		*/
		
		/*try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,user,pass); 
			if(con == null || con.isClosed()) {
				System.out.println("unsuccess");
			}
			
			
			
			//Statement stmt=con.createStatement();
			
			String sql = "insert into artwork (idartwork,name,description) values(?,?,?)";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1,0);
			stmt.setString(2,name);stmt.setString(3,description);
			int rs=stmt.executeUpdate(sql);//if 1 =success if 0=failed
			System.out.println(rs);
			if (rs>0)
			{
				isSuccess=true;
			}else {
				isSuccess=false;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace(); 
		}
		return isSuccess;
	}
}
*/
		try {
			conn = DBconnection.getDBConnection();//get the connection
			System.out.println(conn); 
			 
			
			stmt =conn.createStatement();		
//sql query
			String sql = "insert into artwork values (0,'"+artwork.getName()+"','"+artwork.getDescription()+"','"+artwork.getbidPrice()+"','"+artwork.getstartDate()+"','"+artwork.getendDate()+"','"+artwork.getminBid()+"')";
				 //execute sql query
			int rs=stmt.executeUpdate(sql);//if 1 =success if 0=failed
			System.out.println("osasha");
			System.out.println(rs);
			if (rs>0)
			{
				isSuccess=true;
			}else {
				isSuccess=false;
			}
		}
		 
		catch(SQLException e) {
			//print the sql exception
			System.out.println("Sql error occur in com.oop.service/RequestService_service.java/InsertRequest FUNCTION");
			System.out.println(e);
		}
		
		return isSuccess;
	}
	
	 public static boolean updateartwork(Artwork artwork) {
		 boolean isSuccess = false; 
	    	try {
	    		conn = DBconnection.getDBConnection();
	    		stmt = conn.createStatement();
	    		
	    		
	    		String sql = "UPDATE artwork SET name='" + artwork.getName() + "', description='" + artwork.getDescription() + "', " +
	    			    "bid_price=" + artwork.getbidPrice() + ", Start_date='" + artwork.getstartDate() + "', end_date='" + artwork.getendDate() + "', " +
	    			    "minimumbid_price=" + artwork.getminBid() + " WHERE idartwork='" + artwork.getId() + "'";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
	    }
	 
	    public static List< Artwork> getallartworks() {
	    	
	    	ArrayList<Artwork> cus = new ArrayList<>();
	    	
	    	try {
	    		
	    		conn = DBconnection.getDBConnection();	    		 
	    		stmt = conn.createStatement();
	    		String sql = "select * from artwork";
	    		ResultSet rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int idartwork = rs.getInt(1);
	    			String name = rs.getString(2);
	    			String description = rs.getString(3);
	    			String bidPrice = rs.getString(4);
	    		    String startDate = rs.getString(5);
	    		    String endDate = rs.getString(6);
	    		    String minBid = rs.getString(7);
	    			 
	    			System.out.println(idartwork+name+description+bidPrice+startDate+endDate+minBid);
	    			
	    			Artwork art = new Artwork(idartwork,name,description,bidPrice,startDate,endDate,minBid);
	    			cus.add(art);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	return cus;	
	    }
	    
	    
	    public static List< Artwork> getoneartworks(String id) {
	    	int ID = Integer.parseInt(id);
	    	System.out.println("Service id sent "+ID);
	    	ArrayList<Artwork> cus = new ArrayList<>();
	    	
	    	try {
	    		
	    		conn = DBconnection.getDBConnection();	    		 
	    		stmt = conn.createStatement();
	    		String sql = "select * from artwork where idartwork = '"+ID+"'";
	    		ResultSet rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int idartwork = rs.getInt(1);
	    			String name = rs.getString(2);
	    			String description = rs.getString(3);
	    			String bidPrice = rs.getString(4);
	    		    String startDate = rs.getString(5);
	    		    String endDate = rs.getString(6);
	    		    String minBid = rs.getString(7);
	    			 
	    			System.out.println(idartwork+name+description+bidPrice+startDate+endDate+minBid);
	    			
	    			Artwork art = new Artwork(idartwork,name,description,bidPrice,startDate,endDate,minBid);
	    			cus.add(art);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	return cus;	
	    }
	    
	    public static boolean deleteArtwork(String id) {
	        int ID = Integer.parseInt(id);
	        System.out.println("Service id sent " + ID);
	        boolean isSuccess = false;

	        try {
	            conn = DBconnection.getDBConnection();
	            stmt = conn.createStatement();
	            String sql = "DELETE FROM artwork WHERE idartwork = '" + ID + "'";
	            int rowsAffected = stmt.executeUpdate(sql);

	            if (rowsAffected > 0) {
	                System.out.println("Artwork with id " + ID + " has been deleted.");
	                isSuccess = true;
	            } else {
	                System.out.println("No artwork found with id " + ID + ". Deletion failed.");
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            // Close resources (e.g., Statement and Connection) in a finally block
	        }
	        return isSuccess;
	    }


	}
	

