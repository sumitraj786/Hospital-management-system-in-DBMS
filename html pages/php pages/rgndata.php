<?php

$servername='localhost';
$username='root';
$password='';
$dbname='hms';
$conn =new mysqli($servername, $username, $password, $dbname);
if($conn -> connect_errno){
    echo "Failed to coneect to MYSQL" , $mysqli-> connect_error;
    exit();
}

else {

echo "connected to Database";
$un=$_POST['user'];
$pwd=$_POST['user_pass'];
$em=$_POST['mail'];
$gdr=$_POST['gender'];
$phno=$_POST['mob_digits'];
$insertsql="INSERT INTO `login_info`(`username`, `password`, `email`, `gender`, `phone_no`) VALUES ('$un','$pwd','$em','$gdr','$phno')";
echo $insertsql;

if($conn->query($insertsql)==TRUE)
{
    echo "<script>
    alert('registered successfully');
    window.location.href='register.html';
    </script>";
}
    else
    {
        echo "<script>
        alert('registration failed');
        window.location.href='register.html';
        </script>";
    }
}
?>