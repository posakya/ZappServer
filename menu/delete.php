<?php

include 'config/medoo.php';

$database->delete('menu',['Id'=> $_GET['id']]);
header('Location: index.php');
exit(1);