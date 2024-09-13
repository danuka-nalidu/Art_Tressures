<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Entered credentials cannot be entered!',
            }).then(function() {
                // Redirect to the desired page
                window.location.href = 'customerSignup.jsp';
            });
        });
    </script>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
    
</body>
</html>
