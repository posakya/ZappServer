<?php

include '../config/medoo.php';

$database->delete('chowmien',['ID'=> $_GET['id']]);
header('Location: index.php');
exit(1);