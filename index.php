<?php 
require 'conexion.php';

$db = conectarDB();

$query = "SELECT * FROM REGIONES";
$resultadoConsulta = mysqli_query($db, $query);

$queryCandidatos = "SELECT * FROM CANDIDATOS";
$resultadoCandidatos = mysqli_query($db, $queryCandidatos);

?>

<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prueba Desis</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link href="style.css" rel="stylesheet">
    <script src="validacion.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-7 centrado">
           
                <h4 style="text-align: center; margin-top: 15px;">FORMULARIO VOTACIÓN DESIS</h4>
                <hr class="bg-info">

                <form id="votacionForm" method="POST" action="guardarDatos.php" onsubmit="return validarFormulario()">
                
               <div class="row form-group my-2">
                    <label for="nombre" class="col-form-label col-md-4">Nombre y Apellido:</label>
                    <div class="col-md-8">
                        
                        <input type="text" name="nombre" value="" id="nombre" class="form-control">
                    </div>
               </div>
               <div class="row form-group my-2">
                    <label for="alias" class="col-form-label col-md-4">Alias:</label>
                    <div class="col-md-8">
                        <input type="text" name="alias" value="" id="alias" class="form-control">
                    </div>
               </div>
                <div class="row form-group my-2">
                    <label for="rut" class="col-form-label col-md-4">RUT:</label>
                    <div class="col-md-8">
                    <div class="control-group error">
              <div class="controls">
                <input type="text" id="rut" name="rut" class="form-control" placeholder="Ingresa tu RUT">
                
              </div>
            </div>
                    </div>
                </div>
                <div class="row form-group my-2">
                    <label for="email" class="col-form-label col-md-4">Email:</label>
                    <div class="col-md-8">
                        <input type="text" name="email" value="" id="email" class="form-control">
                    </div>
                </div>
                <div class="row form-group my-2">
                    <label for="region" class="col-form-label col-md-4">Región:</label>
                    <div class="col-md-8">
                    <select name="regiones" class="form-select" id="regiones">
                    <option value="0">Selecciona una Región</option>
                    <?php while ($region = mysqli_fetch_assoc($resultadoConsulta)):?>
                    <option value="<?php echo $region['id_region'];?>"><?php echo $region['nombre_region'];?></option>
                    <?php endwhile; ?>
                    </select>
                    </div>
                </div>
                <div class="row form-group my-2">
                    <label for="comuna" class="col-form-label col-md-4">Comuna:</label>
                    <div class="col-md-8">
                    <select class="form-select" name="comuna" id="comuna"></select>
                   
                    </div>
                </div>
                <div class="row form-group my-2">
                    <label for="candidato" class="col-form-label col-md-4">Candidato:</label>
                    <div class="col-md-8">
                    <select class="form-select" name= "candidato" id="candidato">
                    <?php while ($candidato = mysqli_fetch_assoc($resultadoCandidatos)):?>
                    <option value="<?php echo $candidato['nombre_candidato'];?>"><?php echo $candidato['nombre_candidato'];?></option>
                    <?php endwhile; ?>
                    </select>
                    </div>
                </div>
                <div class="row form-group alineado">
                <label for="conocio" class="col-form-label col-md-4">Como se enteró de nosotros:</label>
                <div class="col-md-8">
                <div class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" value="web" name="conocio[]" checked="checked">
                <label class="form-check-label">Web</label>
                </div>
                <div class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" value="tv" name="conocio[]">
                <label class="form-check-label">TV</label>
                </div>
                <div class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" value="rrss" name="conocio[]">
                <label class="form-check-label">Redes Sociales</label>
                </div>
                <div class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" value="amigo" name="conocio[]">
                <label class="form-check-label">Amigo</label>
                </div>
                </div>
                </div>
<button type="submit" name="submit" id="btnSubmit" class="btn btn-primary mibtn">Realizar Votación</button>
</form>

            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.11.7/umd/popper.min.js" integrity="sha512-uaZ0UXmB7NHxAxQawA8Ow2wWjdsedpRu7nJRSoI2mjnwtY8V5YiCWavoIpo1AhWPMLiW5iEeavmA3JJ2+1idUg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

</body>
<script>
			$(document).ready(function(){
				$("#regiones").change(function () {
					
					$("#regiones option:selected").each(function () {
						id_region = $(this).val();
						$.post("getComunas.php", { id_region: id_region }, function(data){
							$("#comuna").html(data);
						});            
					});
				});
			});
  
</script>

</html>