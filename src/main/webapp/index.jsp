<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ART TRESSURES</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.nrt/npm/boxicons@latest/css/boxicons.min.css">
    <script src="https://kit.fontawesome.com/2ff3d0ccdf.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
    	@charset "ISO-8859-1";
		@import url('https://fonts.googleapis.com/css2?family=Farro:wght@500&family=Poppins:ital,wght@0,200;0,400;0,500;0,700;1,600&display=swap');
		
		*{
		    margin: 0;
		    padding: 0;
		    list-style: none;
		    box-sizing: border-box;
		    scroll-padding-top: 2rem;
		    scroll-behavior: smooth;
		    text-decoration: none ;
		    font-family: "Poppins", sans-serif;
		}
		
		body {
		    background-color: #323334;
		}
		
		:root {
		    --main-color: rgb(20, 20, 109);
		    --second-color: rgb(22, 22, 34);
		    --text-color: rgb(157, 157, 160);
		    --gradient: linear-gradient rgb(20, 20, 109),rgb(22, 22, 34);
		}
		
		html::-webkit-scrollbar {
		    width: 0.5rem;
		}
		
		html::-webkit-scrollbar-track {
		    background: transparent;
		}
		
		html::-webkit-scrollbar-thumb {
		    background: var(--main-color);
		    border-radius: 5rem;
		}
		
		#container {
		    position: fixed;
		    top: 0px;
		    right: 0px;
		    z-index: 1000;
		    width: 100%;
		    display: flex;
		    align-items: center;
		    background: #050824;
		    padding: 20px 100px;
		    justify-content: space-between;
		}
		
		#main_pic {
		    width: 600px;
		    height: 80px;
		    margin-left: -88px;
		}
		
		.navbar {
		    display: flex;
		}
		
		.navbar a {
		    font-size: 9px;
		    padding: 47px;
		    font-size: 17.7px;
		    font-weight: 500;
		    color: whitesmoke;
		    margin-left: 90px;
		}
		
		.name-color {
		   font-style: italic;
		   color: rgb(93, 49, 49);
		   font-family: Arial, Helvetica, sans-serif;
		   font-size: 120;
		}
		
		#menu-icon {
		    font-size: 24px;
		    cursor: pointer;
		    z-index: 10001;
		    display: none;
		}
		
		.navbar li{
		    position: relative;
		}
		
		
		li a:hover {
		    color: rgba(56, 167, 231, 0.916);
		}
		
		.side-pic {
		    margin-bottom: 50px;
		    margin-right: 20px;
		    position: relative;
		    top: 20px;
		}
		
		.side-pic img {
		    display: block;
		    height: 500px;
		    width: 900px;
		    float: right;
		    border-radius: 10px;
		    margin-top: 70px;
		}
		
		.topic h1{
		    font-size: 3.5rem;
		
		    letter-spacing: 1.5px;
		}
		
		.topic span {
		    color: #0080ff;
		}
		
		.topic h1 {
		    color: white;
		    text-align: center;
		}
		
		.topic p {
		    margin: 00.5rem 0 1rem;
		    text-align: start;
		    font-weight: 500;
		    color: whitesmoke;
		    font-size: 19px;
		}
		
		.booking-button {
		    flex: 1 1 7rem;
		    padding: 13px 34px;
		    border: none;
		    border-radius: 0.5rem;
		    background-color: rgb(40, 46, 130);
		    font-size: 1rem;
		    font-weight: 500;
		    color: whitesmoke;
		    margin-left: 200px;
		}
		
		.booking-button:hover {
		    background: #0080ff;  
		}
		
		#home {
		    align-items: center;
		    
		}
		
		.logo-container {
		    display: flex;
		    justify-content: center;
		    margin-left: 50px;
		    margin-top: 10px;
		    margin-bottom: 8px;
		  }
		  
		.logo {
		    width: 49px; 
		    height: 49px; 
		    filter: grayscale(100%);
		    margin-right: 110px; 
		    opacity: 0.49; 
		}
		  
		.logo:last-child {
		    margin-right: 5; 
		}
		
		#toyota {
		    height: 72px;
		    width: 65px;
		}
		
		#honda {
		    height: 50px;
		    margin-top: -0.1px;
		}
		
		#mitsubishi {
		    height: 61px;
		    width: 70px;
		    margin-top: -5px;
		}
		
		#hyhundai {
		    height: 74px;
		    width: 55px;
		    margin-top: -7px;
		}
		
		#tesla {
		    height: 58px;
		    width: 90px;
		    margin-top: -2px;
		}
		
		#audi {
		    height: 63px;
		    width: 55px;
		    margin-top: -3px;
		}
		
		#bmw {
		    height: 53px;
		}
		
		#benz {
		    height: 53px;
		}
		
		.heading span{
		    font-size: 20px;
		    font-family: Georgia, 'Times New Roman', Times, serif;
		    font-style: italic;
		}
		
		.heading h1{
		    font-size: 40px;
		    font-family: 'Times New Roman', Times, serif;
		}
		
		.about {
		    color: rgb(174, 221, 244);
		}
		
		.about-container{
		    display: grid;
		    grid-template-columns: repeat(2, 1fr);
		    margin-top: 2rem;
		    align-items: center;
		    gap: 1rem;
		    margin-top: 1rem;
		}
		
		.about-text p, .about-text span{
		    margin: 0.5rem 0 1.4rem;
		    color: white;
		}
		
		.about-text .about-btn{
		    padding: 10px 20px;
		    background-color: rgb(40, 46, 130);
		    color: #fff;
		    border-radius: 0.5rem;
		}
		
		.about-text .about-btn:hover {
		    background: #0080ff; 
		}
		
		.about-img , .about-text {
		    margin-top: -150px;
		}
		
		.features-heading {
		    margin-top: 100px;
		    text-align: center;
		    color: rgb(174, 221, 244);
		}
		
		.features-heading span {
		    font-weight: 500;
		    font-family: Georgia, 'Times New Roman', Times, serif;
		    color: rgb(174, 221, 244);
		}
		
		.features-heading h1 {
		    font-size: 45px;
		    font-family: 'Times New Roman', Times, serif;
		}
		
		#features {
		    color: rgb(91, 94, 106);
		}
		
		.container-features {
		    display: grid;
		    align-items: center;
		    grid-template-columns: repeat(auto-fit,minmax(260px,auto));
		    gap: 1rem;
		
		    margin-left: 30px;
		    margin-right: 30px;
		    color: whitesmoke;
		}
		
		.quality {
		    text-align: center;
		    padding: 25px;
		}
		
		.quality i {
		    font-size: 40px;
		    background-color: none;
		    color: rgba(241, 241, 241, 0.553);
		    background-size: 200px;
		}
		
		.quality h2 {
		    font-weight: 500;
		    margin-top: 16px;
		}
		
		.quality i:hover {
		    background: var(--gradient);
		    color: #0080ff;
		}
		
		.collection_heading {
		    margin-top: 60px;
		    text-align: center;
		    color: rgb(174, 221, 244);
		}
		
		.collection_heading span {
		    font-weight: 500;
		    font-family: Georgia, 'Times New Roman', Times, serif;
		}
		
		.collection_heading h1 {
		    font-size: 45px;
		    font-family: 'Times New Roman', Times, serif;
		}
		
		.cars_container {
		    display: flex;
		    flex-wrap: wrap;
		    gap: 2rem;
		    margin-top: 2rem;
		    padding-left: 30px;
		    padding-right: 30px;
		}
		
		.cars_container .box {
		    flex: 1 1 17rem;
		    position: relative;
		    height: 200px;
		    border-radius: 0.5rem;
		    overflow: hidden;
		    padding-left: 20px;
		    padding-right: 80px;
		}
		
		.cars_container .box img {
		    width: 140%;
		    height: 110%;
		    object-fit: cover;
		    overflow: hidden;
		    border-radius: 5%;
		    margin-right: 5px;
		}
		
		.cars_container .box img:hover {
		    transform: scale(1.1);
		    transition: 0.4s;
		}
		
		.cars_container .box h2{
		    position: absolute;
		    bottom: 1rem;
		    left: 1rem;
		    font-weight: 600;
		    font-size: 1rem;
		    color: rgb(125, 121, 121);
		    background: whitesmoke;
		    padding: 8px;
		    border-radius: 0.5rem;
		    margin-left: 12px;
		}
		
		.cars_container .box:hover h2:hover {
		    background: rgb(28, 28, 147);
		    color: rgb(212, 216, 220);
		}
		
		footer{
		    padding: 10px;
		    height: 100%;
		    background-color: #050824;
		    justify-content: space-between;
		    width: 100%;
		    margin: 0;
		    margin-top: 10px;
		}
		
		.footer_picture img{
		    width: 98px;
		    height: 80px;
		    text-align: left;
		    display: flex;
		    align-items: center;
		    display: inline-block;
		    vertical-align: middle;
		}
		
		.footer_Links {
		    margin-left: 400px;
		}
		  
		.footer_Links .links ul {
		    list-style-type: none;
		    padding: 0;
		    margin: 0;
		}
		  
		.footer_Links .links li {
		    display: inline;
		    margin-right: 20px;
		}
		  
		.footer_Links a {
		    font-size: 9px;
		    padding: 65px;
		    font-size: 17.7px;
		    font-weight: 500;
		    color: whitesmoke;
		    margin-left: 80px;
		    text-align: right;
		    display: inline-block;
		    vertical-align: middle;
		    margin-top: -130px;
		    margin-left: 10px;
		}
		
		.footer_logo {
		    display: flex;
		    justify-content: center;
		}
		
		.social_media_logo {
		    list-style-type: none;
		    color: #fff;
		    padding: 0;
		    margin: 0;
		    display: flex;
		}
		
		.social_media_logo li {
		    font-size: 30px;
		    margin-left: 50px;
		    margin-top: -40px;
		}
		
		.social_media_logo li:last-child {
		    margin-right: 0;
		}
    	
    </style>
    
</head>
<body>
    <div id="container">
        <img  src="images/art logo.jpg" width="100px" height="100px" style="border-radius: 50%;">
        <div class="menu" id="menu-icon"></div>

        <ul class="navbar">
            <li><a href="#" id="link1">Artworks</a></li>
            <li><a href="#">Auctions</a></li>
            <li><a href="#">AboutUs</a></li>
            <li><a href="login.jsp" class="register">Login(Bidder)</a></li>
            <li><a href="Supplierlogin.jsp" class="register">Login(Supplier)</a></li>
        </ul>
        
    </div>
    
    <div class="side-pic">
        <img src="./images/test2.webp" alt="Bemz">
    </div>

    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <div class="home" id="home">
        <div class="topic">
                <h1><span>ART TRESSURES</span> <br>Catch up such an amazing artwork sales</h1>
                <br>
        <div class="booking">
            <button class="booking-button" id="booking-button">CALL NOW <i class="fa-solid fa-phone"></i><box-icon type='solid' name='phone'></box-icon></button>
        </div>
    </div>
    <br/>
    <br/><br>
    <div class="features" id="features">
        <div class="features-heading">
            <span>OUR SERVICE</span>
            <h1>We have best services and offers <br> for the artworks </h1>
        </div>
    </div>

    <div class="container-features">
        <div class="quality quality1">
            <i class="fa-brands fa-readme"></i>
            <h2>View a huge collection</h2>
            <p>Choose gallery works by your own from a collection which includes all the types of artworks</p>
        </div>

        <div class="quality quality2">
            <i class="fa-sharp fa-solid fa-money-bill-transfer"></i>
            <h2>Bid Increments</h2>
            <p>The system allows for predefined bid increments, which ensure that bids increase in a structured and consistent manner</p>
        </div>

        <div class="quality quality3">
            <i class="fa-sharp fa-solid fa-gauge-high"></i>
            <h2>Fast And Safe</h2>
            <p>secure and efficient method for handling payments and settling transactions between buyers and sellers</p>
        </div>
    </div>

    <div class="collection">
        <div class="collection_heading">
            <span>Best Matches</span>
            <h1>Browse Galleries</h1>
        </div>
       <div class="cars_container container">
            <div class="box">
                <img src="images/collection1.webp">
                <h2>Johnson - $3500</h2>
                
            </div>

            <div class="box">
                <img src="images/collection2.webp">
                <h2>Claudia komte- $2000</h2>
                <span>Rs.20000-30000</span>
            </div>

            <div class="box">
                <img src="images/collection3.webp">
                <h2>Alex Katz - $20000</h2>
            </div>

            <div class="box">
                <img src="images/collection6.webp">
                <h2>Carla Jay Harris - $4000</h2>
                <span>Rs.20000-30000</span>
            </div>

            <div class="box">
                <img src="images/collection5.webp">
                <h2>Conor Harrington - $4000</h2>
            </div>

            <div class="box">
                <img src="images/collection7.webp">
                <h2>Grace Marti Tylor - $ 1500</h2>
            </div>

            <div class="box">
                <img src="images/collection8.webp">
                <h2>Tammy Nguyen - $35000</h2>
            </div>

            <div class="box">
                <img src="images/collection9.webp">
                <h2>Jordi Ribes - $2000</h2>
            </div>
        </div>
    </div>

    <footer>
        <div class="footer_Container">
            <div class="footer_picture">
                <img  src="images/art logo.jpg" width="100px" height="100px" style="border-radius: 50%;">
                <div class="footer_Links">
                    <ul class="links" type="none">
                        <li><a href="#">Artworks</a></li>
                        <li><a href="#">Auctions</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Pathnerships</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="footer_logo">
            <ul class="social_media_logo">
                <li><i class="fa-brands fa-whatsapp fa-fade"></i></li>
                <li><i class="fa-brands fa-twitter fa-fade"></i></li>
                <li><i class="fa-brands fa-linkedin fa-fade"></i></li>
                <li><i class="fa-brands fa-square-facebook fa-fade"></i></li>
                <li><i class="fa-brands fa-telegram fa-fade"></i></li>
                <li><i class="fa-solid fa-phone fa-fade"></i></li>
            </ul>
        </div>
        <center><p style="color: white; font-size: 15px; padding-top: 30px;padding-left: 50px;">Copyright @ 2023 online artworks bidding - All rights reserved</p></center>
    </footer>
    <script src="https://unpkg.com/scrollreveal"></script>
    <script src="./js/script.js"></script>
</body>
</html>
