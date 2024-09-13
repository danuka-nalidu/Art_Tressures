<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            Swal.fire({
                position: 'top-middle',
                icon: 'success',
                title: 'Inserted successfully',
                showConfirmButton: false,
                timer: 1500
            }).then(function() {
                // Redirect to the desired page after a delay (1.5 seconds in this case)
                setTimeout(function() {
                    window.location.href = 'login.jsp';
                }, 1500); // Delay in milliseconds (1.5 seconds)
            });
        });
    </script>
</body>
</html>
