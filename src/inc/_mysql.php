<?php
	$mysql_host = $_SERVER["MYSQL_HOST"];
	$mysql_user = $_SERVER["MYSQL_USER"];
	$mysql_pass = $_SERVER["MYSQL_PASS"];
	$mysql_db = $_SERVER["MYSQL_DB"];

	$mysqli = new mysqli($mysql_host, $mysql_user, $mysql_pass, $mysql_db);