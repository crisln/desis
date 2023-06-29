<?php
	require 'conexion.php';
	$db = conectarDB();

	$id_region = $_POST['id_region'];
	
	$queryComunas = "SELECT id_comuna, nombre_comuna FROM comunas WHERE id_region = '$id_region' ORDER BY nombre_comuna";
	
    $resultadoComunas = mysqli_query($db, $queryComunas);
	
    $html= '<option value="0">Selecciona una Comuna</option>';
	
    while ($comuna = mysqli_fetch_assoc($resultadoComunas))
	
	{
		$html.= "<option value='".$comuna['id_comuna']."'>".$comuna['nombre_comuna']."</option>";
	}
	
	echo $html;

	?>