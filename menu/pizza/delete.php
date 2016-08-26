<?php

include '../config/medoo.php';

$database->delete('pizza',['ID'=> $_GET['id']]);
header('Location: index.php');
exit(1);