<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbName = "daandoole";


try {
  $conn = new PDO("mysql:host=$servername;dbname=$dbName", $username, $password);
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  
} catch(PDOException $e) {
  die();
}

// echo "<br><br>Connecte a l'application";
$sql = "SELECT emailUser, passwordUser FROM users";
$result = $conn->query($sql)->fetchAll();
?>