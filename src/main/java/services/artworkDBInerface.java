package services;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import models.Artwork;
import utils.DBconnection;

public interface artworkDBInerface {
	
	public boolean insertartwork(Artwork artwork);
	
	public boolean updateartwork(Artwork artwork);
	 
	public List< Artwork> getallartworks();
	    
	public List< Artwork> getoneartworks(String id);
	    
	public boolean deleteArtwork(String id);

}
