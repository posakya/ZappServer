<?php


include 'config\medoo.php';


$items = $database->select('menu','*');



?>
<a href="add.php">Add Menu Item</a>
<table>
	<thead>
		<th>Menu Name</th>
		<th>Image</th>
		<th>Actions</th>
	</thead>
	<tbody>
		<?php foreach($items as $item): ?>
			<tr>
				<td><a href="<?= strtolower($item['Categorie']) ?>"><?= $item['Categorie'] ?></td>
				<td><img src="../image/<?= $item['Image'] ?>" width="50"></td>
				<td><a href="edit.php?id=<?= $item['Id'] ?>">Edit</a>&nbsp;&nbsp;<a href="delete.php?id=<?= $item['Id'] ?>">Delete</a></td>
			<tr>
		<?php endforeach; ?>
	</tbody>
</table>