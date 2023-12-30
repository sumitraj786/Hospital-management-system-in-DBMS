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
echo "<br>";
$un=$_POST['doct_user'];
$pwd=$_POST['doct_pass'];
$insertsql="INSERT INTO `doctor_login`(`doct_username`, `doct_password`) VALUES ('$un','$pwd')";
echo $insertsql;

/*if($conn->query($insertsql)==TRUE)
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
    }*/
}
?>