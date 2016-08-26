<?php

include '../config/medoo.php';

$database->delete('burger',['ID'=> $_GET['id']]);
header('Location: index.php');
exit(1);