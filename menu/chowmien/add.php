<?php

include '../config/medoo.php';
include '../config/upload.php';

if(isset($_POST['btnsave'])) {
    $data = array_merge($_POST,['Image' => upload('image')['image']]);
    unset($data['btnsave']);
    $database->insert('chowmien',$data);
    header('Location: index.php');
    exit(1);
}

?>


<form method="post" enctype="multipart/form-data" class="form-horizontal">
     
 <table class="table table-bordered table-responsive">
 
    <tr>
     <td><label class="control-label">Iname</label></td>
        <td><input class="form-control" type="text" name="Iname" placeholder="Image Name"  /></td>
    </tr>
    

    <tr>
     <td><label class="control-label">Price</label></td>
        <td><input class="form-control" type="text" name="Price" placeholder="Price"  /></td>
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
    
    </table>
    
</form>