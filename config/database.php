<?php

define("MYSQL_HOST", 'localhost');
define("MYSQL_PORT", '');
define("MYSQL_USER", 'root');
define("MYSQL_DATABASE", 'institutos');
define("MYSQL_PASSWORD", '');

class Database
{
    private $hostname = MYSQL_HOST . MYSQL_PORT;
    private $username = MYSQL_USER;
    private $password = MYSQL_PASSWORD;
    private $database = MYSQL_DATABASE;

    private $charset = "utf8";

    function conectar()
    {
        try {
            $conexion = "mysql:host=" . $this->hostname . "; dbname=" . $this->database . "; charset=" . $this->charset;
            $options = [
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_EMULATE_PREPARES => false
            ];
            $pdo = new PDO($conexion, $this->username, $this->password, $options);
            return $pdo;
        } catch (PDOException $e) {
            echo 'Error conexion: ' . $e->getMessage();
            exit;
        }
    }
}
