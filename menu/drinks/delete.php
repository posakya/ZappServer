<?php

include '../config/medoo.php';

$database->delete('drinks',['ID'=> $_GET['id']]);
header('Location: index.php');
exit(1);