
            addEventListener('load',inicio,false);
          
            function inicio()
            {
              document.getElementById('miembros').addEventListener('change',cambiarNumero,false);
            }
          
            function cambiarNumero()
            {    
              document.getElementById('miemb').innerHTML=document.getElementById('miembros').value;
            }