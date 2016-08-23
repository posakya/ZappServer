<?php
$servername = "localhost";
$username = "posakya";
$password = "edyhupyry";
$dbname = "roshanp_a";

// Create connection
//$con = new mysqli($servername, $username, $password, $dbname);
$con=mysqli_connect($servername,$username,$password,$dbname);
// Check connection
// if ($con->connect_error) {
//     die("Connection failed: " . $conn->connect_error);
// } 
?>