<?php
$servername = "localhost";
$username = "posakya";
$password = "edyhupyry";
$dbname = "roshanp_a";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$data = [];
$sql = "SELECT * FROM drinks";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
       $data[] = $row;
    }

}
$conn->close();
header('Content-Type: application/json');
echo json_encode($data);
?>