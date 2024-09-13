
package com.oop.service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;

import com.oop.model.Supplier;
import com.oop.util.CommonConstants;
import com.oop.util.CommonUtil;
import com.oop.util.DBConnectionUtil;
import com.oop.util.QueryUtil;


public class SupplierServiceImpl implements ISupplierService {
	

	/** Initialize logger */
	public static final Logger log = Logger.getLogger(SupplierServiceImpl.class.getName());

	private static Connection connection;

	private static Statement statement;

	static{ 
		//create table or drop if exist
		createSupplierTable();
	}

	private PreparedStatement preparedStatement;

	
	public static void createSupplierTable() {

		try {
			connection = DBConnectionUtil.getDBConnection();
			statement = connection.createStatement();
			
			statement.executeUpdate(QueryUtil.queryByID(CommonConstants.QUERY_ID_DROP_TABLE));
			
			statement.executeUpdate(QueryUtil.queryByID(CommonConstants.QUERY_ID_CREATE_TABLE));

		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		}
	}


	public void addSupplier(Supplier Supplier) {

		String SupplierID = CommonUtil.generateIDs(getSupplierIDs());
		
		try {
			connection = DBConnectionUtil.getDBConnection();
			
			preparedStatement = connection
					.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_INSERT_SUPPLIERS));
			connection.setAutoCommit(false);
			
			//Generate Supplier IDs
			Supplier.setSupplierID(SupplierID);
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, Supplier.getSupplierID());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWO, Supplier.getName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_THREE, Supplier.getEmail());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FOUR, Supplier.getAddress());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FIVE, Supplier.getPhone());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_SIX, Supplier.getGender());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_SEVEN, Supplier.getAccountNumber());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_EIGHT, Supplier.getBankUserName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_NINE, Supplier.getBranch());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_TEN, Supplier.getArtCategories());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ELEVEN, Supplier.getUserName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWELVE, Supplier.getPassword());
			
			// Add Supplier
			preparedStatement.execute();
			connection.commit();

		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		} finally {
			/*
			 * Close prepared statement and database connectivity at the end of
			 * transaction
			 */
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
	}

	
	@Override
	public Supplier getSupplierByID(String SupplierID) {

		return actionOnSupplier(SupplierID).get(0);
	}
	
	
	@Override
	public ArrayList<Supplier> getSuppliers() {
		
		return actionOnSupplier(null);
	}

	
	@Override
	public void removeSupplier(String SupplierID) {

		// Before deleting check whether Supplier ID is available
		if (SupplierID != null && !SupplierID.isEmpty()) {
			
			try {
				System.out.println("Im in try");
				connection = DBConnectionUtil.getDBConnection();
				preparedStatement = connection
						.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_REMOVE_SUPPLIER));
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, SupplierID);
				preparedStatement.executeUpdate();
			} catch (SQLException | SAXException | IOException | ParserConfigurationException
					| ClassNotFoundException e) {
				log.log(Level.SEVERE, e.getMessage());
			} finally {
				
				try {
					if (preparedStatement != null) {
						preparedStatement.close();
					}
					if (connection != null) {
						connection.close();
					}
				} catch (SQLException e) {
					log.log(Level.SEVERE, e.getMessage());
				}
			}
		}
	}


	private ArrayList<Supplier> actionOnSupplier(String SupplierID) {

		ArrayList<Supplier> SupplierList = new ArrayList<Supplier>();
		try {
			connection = DBConnectionUtil.getDBConnection();
			
			if (SupplierID != null && !SupplierID.isEmpty()) {
				
				preparedStatement = connection
						.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_GET_SUPPLIER));
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, SupplierID);
				System.out.println("im in try if");
			}
			
			else {
				preparedStatement = connection
						.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_ALL_SUPPLIERS));
				//System.out.println("im in try else");
			}
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Supplier Supplier = new Supplier();
				Supplier.setSupplierID(resultSet.getString(CommonConstants.COLUMN_INDEX_ONE));
				Supplier.setName(resultSet.getString(CommonConstants.COLUMN_INDEX_TWO));
				
				Supplier.setEmail(resultSet.getString(CommonConstants.COLUMN_INDEX_THREE));
				Supplier.setPhone(resultSet.getString(CommonConstants.COLUMN_INDEX_FOUR));
				Supplier.setAddress(resultSet.getString(CommonConstants.COLUMN_INDEX_FIVE));
				Supplier.setGender(resultSet.getString(CommonConstants.COLUMN_INDEX_SIX));
				Supplier.setAccountNumber(resultSet.getString(CommonConstants.COLUMN_INDEX_SEVEN));
				Supplier.setBankUserName(resultSet.getString(CommonConstants.COLUMN_INDEX_EIGHT));
				Supplier.setBranch(resultSet.getString(CommonConstants.COLUMN_INDEX_NINE));
				Supplier.setArtCategories(resultSet.getString(CommonConstants.COLUMN_INDEX_TEN));
				Supplier.setUserName(resultSet.getString(CommonConstants.COLUMN_INDEX_ELEVEN));
				Supplier.setPassword(resultSet.getString(CommonConstants.COLUMN_INDEX_TWELVE));
				SupplierList.add(Supplier);	
			}

		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		} finally {
			
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		return SupplierList;
	}

	@Override
	public Supplier updateSupplier(String SupplierID, Supplier Supplier) {

		if (SupplierID != null && !SupplierID.isEmpty()) {
			
			try {
				connection = DBConnectionUtil.getDBConnection();
				preparedStatement = connection
						.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_UPDATE_SUPPLIER));
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, Supplier.getName());
				
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWO, Supplier.getEmail());
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_THREE, Supplier.getPhone());
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_FOUR, Supplier.getAddress());
				
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_FIVE, Supplier.getGender());
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_SIX, Supplier.getAccountNumber());
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_SEVEN, Supplier.getBankUserName());
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_EIGHT, Supplier.getBranch());
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_NINE, Supplier.getArtCategories());
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_TEN, Supplier.getUserName());
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_ELEVEN, Supplier.getPassword());
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWELVE, Supplier.getSupplierID());
				preparedStatement.executeUpdate();

			} catch (SQLException | SAXException | IOException | ParserConfigurationException
					| ClassNotFoundException e) {
				log.log(Level.SEVERE, e.getMessage());
			} finally {
				
				try {
					if (preparedStatement != null) {
						preparedStatement.close();
					}
					if (connection != null) {
						connection.close();
					}
				} catch (SQLException e) {
					log.log(Level.SEVERE, e.getMessage());
				}
			}
		}
		// Get the updated Supplier
		return getSupplierByID(SupplierID);
	}
	
	
	private ArrayList<String> getSupplierIDs(){
		
		ArrayList<String> arrayList = new ArrayList<String>();
		
		try {
			connection = DBConnectionUtil.getDBConnection();
			preparedStatement = connection
					.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_GET_SUPPLIER_IDS));
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				arrayList.add(resultSet.getString(CommonConstants.COLUMN_INDEX_ONE));
			}
		} catch (SQLException | SAXException | IOException | ParserConfigurationException
				| ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		} finally {
			
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		return arrayList;
	}
}

