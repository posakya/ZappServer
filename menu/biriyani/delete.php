<?php

include '../config/medoo.php';

$database->delete('biriyani',['ID'=> $_GET['id']]);
header('Location: index.php');
exit(1);