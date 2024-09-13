<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bidder SignUp</title>
    <style>
    		@import url('https://fonts.googleapis.com/css2?family=Bree+Serif&family=Poppins:ital,wght@0,200;0,500;0,700;1,600;1,800&display=swap');	
			*{
				margin: 0;
				padding: 0;
				box-sizing: border-box;
				font-family: 'Poppins', sans-serif;
			}
	
			body{
				display: flex;
				justify-content: center;
				align-items: center;
				min-height: 100vb;
				background: url(./images/build.jpg) no-repeat;
				background-size: cover;
				background-position: center;
			}
	
			.wrapper {
				width: 420px;
				background: transparent;
				border: 2px solid rgba(255, 255, 255, .2);
				backdrop-filter: blur(10px);
				color: #fff;
				border-radius: 12px;
				padding: 30px 40px;
			}
	
			.wrapper h1{
				font-size: 36px;
				text-align: center;
			}
	
			.wrapper .input-box {
				position: relative;
				width: 100%;
				height: 50px;
				margin: 30px 0;
			}
	
			.input-box input {
				width: 100%;
				height: 100%;
				background: transparent;
				border: none;
				outline: none;
				border: 2px solid rgba(255, 255, 255, .2);
				border-radius: 40px;
				font-size: 16px;
				color: #fff;
				padding: 20px 45px 20px 20px;
			}
	
			.input-box input::placeholder {
				color: #fff;
			}
	
			.input-box i{
				position: absolute;
				right: 20px;
				top: 30%;
				transform: translate(-50%);
				font-size: 20px;
			}
			
			.wrapper .btn {
				width: 100%;
				height: 45px;
				background: #fff;
				border: none;
				outline: none;
				border-radius: 40px;
				box-shadow: 0 0 10px rgba(0, 0, 0, .1);
				cursor: pointer;
				font-size: 16px;
				color: #333;
				font-weight: 600;
			}
	
			.wrapper .register-link {
				font-size: 14.5px;
				text-align: center;
				margin: 20px 0 15px;
	
			}
	
			.register-link a{
				color: #fff;
				text-decoration: none;
				font-weight: 600;
			}
	
			.register-link a:hover {
				text-decoration: underline;
			}
			
			body {
            	background-image: url('./images/background3.jpg');
            	background-size: cover; /* You can adjust this to fit your needs */
        	}
        	
        	#loginButton {
            width: 340px;
            height: 50px;
            background-color: #3EABF3;
            color: #fff;
            border-radius: 10px;
            transition: background-color 0.3s, transform 0.3s;
        	}

        /* Add the hover effect */
        	#loginButton:hover {
            background-color: #e74c3c;
            transform: scale(1.1);
        	}
        	
        	

    </style>
    
</head>
<body>
	<div class="wrapper">
		 <form action="insertcustomer" method="post"onsubmit="return validatePassword()">
            <h1 style="color: #757272;">Bidder Signup</h1>
            <div class="input-box">
                <input type="text" name="name" placeholder="Enter name" required>
            </div>
            <div class="input-box">
                <input type="email" name="email" placeholder="Enter email" required>
            </div>
            <div class="input-box">
                <input type="text" name="phone" placeholder="Enter Phone Number" required>
            </div>
            <div class="input-box">
                <input type="text" name="uid" placeholder="Enter Username" required>
            </div>
            <div class="input-box">
                <input type="password" id="password" name="psw" placeholder="Enter Password" required>
            </div>
            <div class="input-box">
                <input type="password" id="confirmPassword" placeholder="Confirm Password" required><br><br>
            </div>
            <input type="submit" name="submit" value="SignUp" class="btn" id="loginButton">
        </form>
	</div>
	<script>
        function validatePassword() {
            var password = document.getElementById("password").value;
            var confirmPassword = document.getElementById("confirmPassword").value;

            if (password !== confirmPassword) {
                alert("Passwords do not match. Please try again.");
                return false;
            }

            return true;
        }
    </script>
</body>
</html>