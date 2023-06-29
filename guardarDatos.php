<?php
require 'conexion.php';

$db = conectarDB();

// Verificar la conexión
if (mysqli_connect_errno()) {
  echo "Error al conectar a la base de datos: " . mysqli_connect_error();
  exit();
}

// Obtener los valores del formulario
$nombre = $_POST["nombre"];
$alias = $_POST["alias"];
$rut = $_POST["rut"];
$email = $_POST["email"];
$region = $_POST["regiones"];
$comuna = $_POST["comuna"];
$candidato = $_POST["candidato"];
$conocio = implode(", ", $_POST["conocio"]);

// Consultar si el RUT ya existe en la base de datos
$consulta = "SELECT rut FROM votante WHERE rut = '$rut'";
$resultado = mysqli_query($db, $consulta);

if ($resultado->num_rows > 0) {
    echo "Error: El RUT ingresado ya ha votado anteriormente.";
    exit();
}

// Insertar los datos en la base de datos
$sql = "INSERT INTO votante VALUES(null, '$nombre', '$alias', '$rut', '$email', '$region', '$comuna', '$candidato', '$conocio')";

if (mysqli_query($db, $sql)) {
  echo "Voto registrado correctamente";
} else {
 
  echo "Error al registrar el voto: " . mysqli_error($db);
  
}

// Cerrar la conexión a la base de datos
mysqli_close($db);
?>
