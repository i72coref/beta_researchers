var btnAbrirPopup = document.getElementById('btn-abrir-popup'),
	overlay = document.getElementById('overlay'),
    btnCerrarPopup = document.getElementById('btn-cerrar-popup'),
    btnCerrarPopup2 = document.getElementById('btn-cerrar-popup2');;
    
btnAbrirPopup.addEventListener('click', function(){
        overlay.classList.add('active');
    });

    btnCerrarPopup.addEventListener('click', function(e){
        e.preventDefault();
        overlay.classList.remove('active');
        popup.classList.remove('active');
    });
    btnCerrarPopup2.addEventListener('click', function(e){
        e.preventDefault();
        overlay.classList.remove('active');
        popup.classList.remove('active');
    });