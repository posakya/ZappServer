<?php
require"ini.php";
$Iname=$_POST["iname"];
 $Price=$_POST["price"];
// $user_pass=$_POST["Password"];

$sql_query="insert into cart values('$Iname','$Price');";
if(mysqli_query($con,$sql_query))
{
   echo "Successfull";
}
else{
  echo "\nNot Successfull".mysqli_error($con);
}
?>
