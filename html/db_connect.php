<?php
$hostname = 'db';
	$username = 'mervin';
	$password = '1234';
	$dbname = 'it635project';

try {
        $db = new PDO("mysql:host=$hostname;dbname=$dbname", $username, $password);
	$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
	echo "Connection failed: " . $e->getMessage();
    }

//echo "connect success";
?>
