<?php

include '../config/medoo.php';
include '../config/upload.php';

if(isset($_POST['btnsave'])) {
	
    $up = upload('image');
    $data = $_POST;
    if($up['status'])
    {
        $data['Image'] = $up['image'];
    }

	unset($data['btnsave']);

	$database->update('pizza',$data , ['ID'=> $_GET['id']] );
    
	header('Location: index.php');
	exit(1);
}

$item = $database->select('pizza','*',['id'=> $_GET['id']])[0];

?>


<form method="post" enctype="multipart/form-data" class="form-horizontal">
     
 <table class="table table-bordered table-responsive">
 
    <tr>
     <td><label class="control-label">Iname</label></td>
        <td><input class="form-control" type="text" name="Iname" placeholder="Image Name"  value="<?= $item['Iname']?>" /></td>
    </tr>
    
    <!-- <tr>
     <td><label class="control-label">Rating</label></td>
        <td><input class="form-control" type="text" name="Rating" placeholder="Rate"  /></td>
    </tr> -->
    <tr>
     <td><label class="control-label">Price</label></td>
        <td><input class="form-control" type="text" name="Price" placeholder="Price"  value="<?= $item['Price']?>" /></td>
    </tr>
    
    <tr>
     <td><label class="control-label">Image</label></td>
        <td><input class="input-group" type="file" name="image" accept="image/*" /></td>
        <img src="../../image/<?=$item['Image'] ?>" width="50">
    </tr>
    
    <tr>
        <td colspan="2"><button type="submit" name="btnsave" class="btn btn-default">
        <span class="glyphicon glyphicon-save"></span> <!-- &nbsp; --> save
        </button>
        </td>
    </tr>
    
    </table>
    
</form>