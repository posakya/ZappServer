<?php

include '../config/medoo.php';

$database->delete('momo',['ID'=> $_GET['id']]);
header('Location: index.php');
exit(1);