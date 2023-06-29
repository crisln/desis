<?php
function conectarDB(){
    $db = mysqli_connect('localhost', 'kaooss', 'master1959', 'desis');

    if(!$db){
      echo "Error en la conexión con la BBDD";
      exit;
      }
      return $db;
    }
?>