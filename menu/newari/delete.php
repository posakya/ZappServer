<?php

include '../config/medoo.php';

$database->delete('newari',['ID'=> $_GET['id']]);
header('Location: index.php');
exit(1);