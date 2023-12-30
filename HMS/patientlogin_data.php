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
$uname=$_POST['pat_user'];
$pass=$_POST['pat_pass'];
$insertsql="INSERT INTO `patient_login`(`usernam`, `password`) VALUES ('$uname','$pass')";
echo $insertsql;

/*if($conn->query($insertsql)==TRUE)
{
    echo "<script>
    alert('login successfully');
  //window.location.href='register.html';
    </script>";
}
    else
    {
        echo "<script>
        alert('login failed (invalid username and password');
        window.location.href='login.html';
        </script>";
    }*/
}
?>