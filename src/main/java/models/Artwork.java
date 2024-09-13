package models;

public class Artwork extends AbstractArtclass implements ArtInterface {
	    private int idartwork;
	    private String name;
	    private String description;
	    private String bidPrice;
	    private String startDate;
	    private String endDate;
	    private String minBid;
	    //default  constructor
	    public Artwork() {}
	    //overloaded constructor
	    public Artwork(int idartwork, String name, String description, String bidPrice,String startDate, String endDate, String minBid ) {
		this.idartwork = idartwork;
		this.name = name;
		this.description = description;
		this.bidPrice = bidPrice;
		this.startDate = startDate;
		this.endDate = endDate;
		this.minBid = minBid;
	    }
//get method
		public int getId() {
			return idartwork;
		}
		//set method
		public void setId(int id) {
			this.idartwork = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getbidPrice() {
			return bidPrice;
		}
		public void setbidPrice(String bidPrice) {
			this.bidPrice = bidPrice;
		}
		public String getstartDate() {
			return startDate;
		}
		public void setstartDate(String startDate) {
			this.startDate = startDate;
		}
		public String getendDate() {
			return endDate;
		}
		public void setendDate(String endDate) {
			this.endDate = endDate;
		}
		public String getminBid() {
			return minBid;
		}
		public void setminBid(String minBid) {
			this.minBid = minBid;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
//implements of interface methods
		@Override
		public void displayArtdetails() {
			System.out.println("ID : " + this.idartwork);
			System.out.println("Name : " + this.name);
			System.out.println("Description : " + this.description);
			System.out.println("Bid price : " + this.bidPrice);
			System.out.println("Starting date : " + this.startDate);
			System.out.println("Ending date : " + this.endDate);
			System.out.println("Minimum bid : " + this.minBid);
			
		}

		@Override
		public void dispalyTheArtWithprice() {
			System.out.println("Art name is : " + this.name + " bid price is :" + this.bidPrice);
			
		}
		//implements of abstract method

		@Override
		public void calculateTotalPrice() {
			total_price =  Integer.valueOf(this.bidPrice) - Integer.valueOf(this.minBid);
			System.out.println("Total price = " + this.total_price);
			
		}
}
