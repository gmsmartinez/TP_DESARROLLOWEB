function validarForm() {

    var regex = new RegExp('^[A-Z\u00E0-\u00FC]+$', 'i'); //expresion regular para validar solo letras y acentos
    var regex2 = new RegExp(/(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])/)//expresion regular para validar correo
    var regex3 = new RegExp(/^[0-9]{7,8}$/); //expresion regular para validar solo números


    function validaApellido() {

        var your_surname = document.getElementById("txtapellido").value;

        if (regex.test(your_surname) && (your_surname != "null")) {
            return true;
        }
        else {
            alert("Ingrese un apellido válido");
            return false;
        }
    }

    function validaNombre() {

        var your_name = document.getElementById("txtnombre").value;

        if (regex.test(your_name) && (your_name != "null")) {
            return true;
        }
        else {
            alert("Ingrese un nombre válido");
            return false;
        }
    }

    function validaDni() {

        var your_dni = document.getElementById("txtdni").value;

        if (regex3.test(your_dni) && (your_dni != "null") && (your_dni > 0 && your_dni <= 99999999)) {
            return true;
        }
        else {
            alert("Ingrese un documento válido");
            return false;
        }
    }

    function validaMail() {

        var your_email = document.getElementById("txtemail").value;

        if (regex2.test(your_email) && (your_email != "null")) {
            return true;
        }
        else {
            alert("Ingrese una dirección de correo válida");
            return false;
        }
    }

    function validaTurno() {

        var your_turno = document.getElementById("turno").value;

        if ((your_turno == "Mañana" || your_turno == "Tarde" || your_turno == "Noche")) {
            return true;
        }
        else {
            alert("Debe elegir un turno");
            return false;
        }
    }

    if ((validaApellido() == true) && (validaNombre() == true) && (validaDni() == true) && (validaMail() == true) && (validaTurno() == true)) {
        return true;
    }
    else
        return false;
}

function validarComentario() {
    var commentElement = document.getElementById("txtcomentario")


    if (commentElement.value.trim() === "") {
        alert("El campo comentario no puede estar vacío.")
        return false
    }
}