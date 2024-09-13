package services;


import java.sql.Connection;
 
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import models.Artwork;
import utils.DBconnection;



 
public class ArtworkDBUtil {
	 
	private static Connection conn = null;
	private static java.sql.Statement stmt = null;
	private static ResultSet rslt = null;
	private static int result = 0;

	 
	    // Database connection setup (you should implement this)

	    public static List<Artwork> getArtworks() {
	        List<Artwork> artworks = new ArrayList<>();
	     
	        try {
	        	conn = DBconnection.getDBConnection();
				stmt = conn.createStatement();
				String sql = "select * from artwork" ;
				ResultSet rs = stmt.executeQuery(sql);
	            // Establish a database connection (you should implement this part)
	        	//connection = DBconnection.getDBConnection();

	            // Define the SQL query to retrieve artwork data
	           // String sql = "SELECT * FROM artwork";

	            // Create a prepared statement
	           // preparedStatement = connection.prepareStatement(sql);

	            // Execute the query and get the result set
	           // resultSet = preparedStatement.executeQuery();

	            // Process the result set and populate the Artwork objects
	            while (rslt.next()) {
	                Artwork artwork = new Artwork();
	                artwork.setId(rslt.getInt( "idartwork"));
	                artwork.setName(rslt.getString("name"));
	                
	               artwork.setDescription(rslt.getString("description"));
	                /*
	                 * artwork.setBidPrice(resultSet.getFloat("bid_price"));
	                artwork.setStartDate(resultSet.getDate("start_date"));
	                artwork.setEndDate(resultSet.getDate("end_date"));*/

	                artworks.add(artwork);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } finally {
	            // Close database resources (connection, prepared statement, result set)
	            if (rslt != null) {
	                try {
	                	rslt.close();
	                } catch (SQLException e) {
	                    e.printStackTrace();
	                }
	            }
	            if (stmt != null) {
	                try {
	                    stmt.close();
	                } catch (SQLException e) {
	                    e.printStackTrace();
	                }
	            }
	            if (conn != null) {
	                try {
	                    conn.close();
	                } catch (SQLException e) {
	                    e.printStackTrace();
	                }
	            }
	        }

	        return artworks;
	    }
	}


