

var modificar = document.getElementById("modificar");
modificar.addEventListener('mouseover', over);

function over(){
    document.getElementById("foto-modificar").style.width = "35px";
    document.getElementById("foto-modificar").src = "./../img/modificar2.png";

    document.getElementById("modificar").style.color = "#0600ff";
    document.getElementById("modificar").style.fontWeight = 800;
}

function out(){
    document.getElementById("foto-modificar").src = "./../img/modificar.png";
    document.getElementById("foto-modificar").style.width = "30px";
    document.getElementById("modificar").style.color = "black";
    document.getElementById("modificar").style.fontWeight = 400;
}

function over1(id){
    document.getElementById(id).style.width = "35px";
    document.getElementById(id).src = "./../img/modificar2.png";
}

function out1(id){
    document.getElementById(id).src = "./../img/modificar.png";
    document.getElementById(id).style.width = "30px";
}
