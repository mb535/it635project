<?php
$hostname = 'localhost';
	$username = 'mervin';
	$password = '1234';
	$dbname = 'it635project';
// Create connection
	/*$db = new mysqli($hostname, $username, $password, $dbname);
// Check connection
	/if (!$db) {
    		die("Connection failed: " . mysqli_connect_error());
}*/
try {
        $db = new PDO("mysql:host=$hostname;dbname=$dbname", $username, $password);
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        //include('../errors/database_error.php');
        exit();
    }
//echo "connect success";
?>
