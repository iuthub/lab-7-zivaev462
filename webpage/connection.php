<?php 
$username = $_POST['username'];
$email 	  = $_POST['email'];
$password = $_POST['pwd'];
$fullname = $_POST['fullname'];

try{



	$db = new PDO("mysql:dbname=blog;host=localhost", "root", "xiaomi1999");

$username = $db->quote($username);
$email 	  = $db->quote($email);
$password = $db->quote($password);
$fullname = $db->quote($fullname);

$db -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$db->exec("INSERT INTO Users (username, email, password, fullname) 
	VALUES ($username, $email, $password, $fullname)");


}catch(PDOException $ex){
	echo 'Some shit is going on';
}

header("Location: index.php")

 ?>