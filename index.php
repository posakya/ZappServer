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
 
 if(isset($_POST['btnsave']))
 {
  
  
  $imgFile = $_FILES['image']['name'];
  $tmp_dir = $_FILES['image']['tmp_name'];
  $iname = $_POST['Iname'];
  // $Rating = $_POST['Rating'];
  $Description=$_POST['Description'];
  //$imgSize = $_FILES['user_image']['size'];
  
  
  if(empty($iname)){
   $errMSG = "Please Enter iname.";
  }else if(empty($Description)){
   $errMSG = "Please Enter Your Description.";
  }
  else if(empty($imgFile)){
   $errMSG = "Please Select Image File.";
  }
  else
  {
   $upload_dir = 'image/'; // upload directory
     move_uploaded_file($tmp_dir,$upload_dir.$imgFile);
  }
  if(!isset($errMSG))
  {
   $sql = "INSERT INTO menu(Image,Iname,Description) VALUES('$imgFile','$iname','$Description')";
   $conn->query($sql);
   if($conn)
   {
    echo "new record succesfully inserted ...";
    header("refresh:2;index.php"); // redirects image view page after 5 seconds.
   }
   else
   {
    echo "error while inserting....";
   }
  }
 }
?>
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
if(isset($_POST['btndelete'])){
$iname = $_POST['Iname'];
$sql = "delete from menu where Iname = '".$iname."'";
$conn->query($sql);
if($conn){
echo "Data Deleted succesfully...";
header("refresh:2;index.php");}
else{
echo "Fail to delete";}
}
?>
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
if(isset($_POST['btnupdate'])){
$iname = $_POST['Iname'];
$imgFile = $_FILES['image']['name'];
  $tmp_dir = $_FILES['image']['tmp_name'];
  $iname = $_POST['Iname'];
  // $Rating = $_POST['Rating'];
  $Description=$_POST['Description'];

$sql =("UPDATE menu SET Image = '$imgFile', Iname = '$iname',  Description = '$Description' WHERE  Iname = '".$iname."'");
$conn->query($sql);
if($conn){
echo "Data Updated succesfully...";
header("refresh:2;index.php");}
else{
echo "Fail to update";}
}
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<form method="post" enctype="multipart/form-data" class="form-horizontal">
     
 <table class="table table-bordered table-responsive">
 
    <tr>
     <td><label class="control-label">Iname</label></td>
        <td><input class="form-control" type="text" name="Iname" placeholder="Image Name"  /></td>
    </tr>
    
    <!-- <tr>
     <td><label class="control-label">Rating</label></td>
        <td><input class="form-control" type="text" name="Rating" placeholder="Rate"  /></td>
    </tr> -->
    <tr>
     <td><label class="control-label">Description</label></td>
        <td><input class="form-control" type="text" name="Description" placeholder="Description"  /></td>
    </tr>
    
    <tr>
     <td><label class="control-label">Image</label></td>
        <td><input class="input-group" type="file" name="image" accept="image/*" /></td>
    </tr>
    
    <tr>
        <td colspan="2"><button type="submit" name="btnsave" class="btn btn-default">
        <span class="glyphicon glyphicon-save"></span> <!-- &nbsp; --> save
        </button>
        </td>
    </tr>
    <tr>
        <td colspan="2"><button type="submit" name="btndelete" class="btn btn-default">
        <span class="glyphicon glyphicon-delete"></span> <!-- &nbsp; --> delete
        </button>
        </td>
    </tr>
    <tr>
        <td colspan="2"><button type="submit" name="btnupdate" class="btn btn-default">
        <span class="glyphicon glyphicon-update"></span> <!-- &nbsp; --> update
        </button>
        </td>
    </tr>
    
    </table>
    
</form>
</body>
</html>