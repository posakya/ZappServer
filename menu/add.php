<?php

include 'config/medoo.php';
include 'config/upload.php';

if(isset($_POST['btnsave'])) {
    $data = array_merge($_POST,['Image' => upload('image')['image']]);
    unset($data['btnsave']);
    $database->insert('menu',$data);
    header('Location: index.php');
    exit(1);
}

?>


<form method="post" enctype="multipart/form-data" class="form-horizontal">
     
 <table class="table table-bordered table-responsive">
 
    <tr>
     <td><label class="control-label">Categorie</label></td>
        <td><input class="form-control" type="text" name="Categorie" placeholder="Categorie"  /></td>
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
   
    
    </table>
    
</form>