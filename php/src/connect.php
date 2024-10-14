<?php

$servername = "db"; // Nome do serviço do banco de dados no Docker Compose
$username = "root";  // Nome de usuário
$password = "";      // Senha 
$dbname = "almoxarifado"; // Nome do banco de dados

// Criar a conexão
$con = new mysqli($servername, $username, $password, $dbname);

if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}
echo "Connected successfully";
?>
