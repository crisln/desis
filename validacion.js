function validarFormulario() {
   
    var nombre = document.getElementById("nombre").value;
    if(nombre === ""|| nombre.length<3){
    
        swal(" ", "Nombre y Apellido son obligatorios!!", "error");
        return false;
    }
    var alias = document.getElementById("alias").value;
    if(alias === ""|| alias.length<5){
    
        swal(" ", "Campo ALIAS debe tener minimo 5 caracteres!!", "error");
        return false;
    }

    var rut = document.getElementById("rut").value;
    if (!validarRut(rut)) {
        //alert("El RUT ingresado no es válido.");
        swal(" ", "Debe ingresar un RUT valido!!", "error");
        return false;
    }

    var email = document.getElementById("email").value;
    if (!validarEmail(email)) {
        swal(" ", "EMAIL no puede estar vacío y debe ser un correo válido!!", "error");
        return false;
    }
    var region = document.getElementById("regiones").value;
    if(region === "0"){
    
        swal(" ","Debes seleccionar una Region!!", "error");
        return false;
    }
    var comuna = document.getElementById("comuna").value;
    if(comuna === "0"){
        swal(" ","Debes seleccionar una Comuna!!", "error");
        return false;
    }
    if (!validarCheckboxConocio()) {
        swal(" ","Debes seleccionar mínimo 2 opciones en Como se enteró de nosotros!!", "error");
        return false;
      }

    return true;
}

function validarRut(rut) {
    rut = rut.replace(/[^0-9kK]/g, '');
    if (rut.length < 2) {
      return false;
    }
    var cuerpo = rut.slice(0, -1);
    var dv = rut.slice(-1).toUpperCase();
  
    var suma = 0;
    var multiplo = 2;
    for (var i = cuerpo.length - 1; i >= 0; i--) {
      suma += multiplo * parseInt(cuerpo.charAt(i), 10);
      multiplo++;
      if (multiplo > 7) {
        multiplo = 2;
      }
    }
  
    var resultado = suma % 11;
    var dvCalculado = 11 - resultado;
    if (dvCalculado === 10) {
      dvCalculado = 'K';
    } else if (dvCalculado === 11) {
      dvCalculado = '0';
    } else {
      dvCalculado = dvCalculado.toString();
    }
  
    return dv === dvCalculado;

    return true;
}

function validarEmail(email) {

    var exre = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return exre.test(email);
}
function validarCheckboxConocio() {
    var checkboxes = document.getElementsByName("conocio[]");
    var seleccionados = 0;
  
    for (var i = 0; i < checkboxes.length; i++) {
      if (checkboxes[i].checked) {
        seleccionados++;
      }
    }
  
    return seleccionados >= 2;
  }

  
