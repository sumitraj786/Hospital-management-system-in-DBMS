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
$ss=$_POST['select_speciality'];
$sd=$_POST['select_doctor'];
$dat=$_POST['date'];
$st=$_POST['select_timing'];
$insertsql="INSERT INTO `appointment_details`(`specialization`, `doctor`, `apt_date`, `apt_time`) VALUES ('$ss','$sd','$dat','$st')";
echo $insertsql;

if($conn->query($insertsql)==TRUE)
{
    echo "<script>
    alert('appointment booked successfully');
    window.location.href='book_appointment.html';
    </script>";
}
else
{
        echo "<script>
        alert('appointment booking failed');
        window.location.href='book_appointment.html';
        </script>";
}
}
?>