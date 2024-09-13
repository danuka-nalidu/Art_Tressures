
package com.oop.service;

import com.oop.model.Supplier;

import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactoryConfigurationError;


public interface ISupplierService {

	
	public static final Logger log = Logger.getLogger(ISupplierService.class.getName());


	
	public void addSupplier(Supplier Supplier);

 Supplier getSupplierByID(String supplierID);
	
	
	public ArrayList<Supplier> getSuppliers();
	
	
	public Supplier updateSupplier(String SupplierID, Supplier Supplier);

	
	public void removeSupplier(String SupplierID);

}


