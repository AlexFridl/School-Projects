<?php

	$ime_servera = "localhost";
	$ime_baze = "sensa2019";
	$kor_ime = "root";
	$lozinka = "";
	
	try{
	$konekcija = new PDO("mysql:host=".$ime_servera.";dbname=".$ime_baze.";charset=utf8",$kor_ime, $lozinka);
	
	$konekcija->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);
	$konekcija->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	}
	catch(PDOexception $ex){
		echo $ex->getMessage();
	}
	
?>