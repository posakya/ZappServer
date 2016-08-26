<?php
require"ini.php";

$Iname=$_POST["iname"];
 $Price=$_POST["price"];
 $Quantity=$_POST["quantity"];
 $Total=$_POST["total"];
 
 
// $user_pass=$_POST["Password"];
$sql_query="insert into cart values('$Iname','$Price','$Quantity','$Total');";
if(mysqli_query($con,$sql_query))
{
   echo "Successfull";
}
else{
  echo "\nNot Successfull".mysqli_error($con);
}
?>
