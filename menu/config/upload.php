<?php


function upload($field,$upload_dir = '../../image/')
{
	$imgFile = $_FILES[$field]['name'];
  	$tmp_dir = $_FILES[$field]['tmp_name'];
    return ['status' => move_uploaded_file($tmp_dir,$upload_dir.$imgFile), 'image' => $imgFile];
}