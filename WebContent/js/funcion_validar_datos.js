        function go(){
                if (document.getElementById("log").value=='usuario@gmail.com' && document.getElementById("pass").value=='pass'){ 
                        alert("Datos correctos");
                        location.href="../index.html";
                    }
                if (document.getElementById("log").value=='admin@gmail.com' && document.getElementById("pass").value=='pass'){ 
                        alert("Datos correctos");
                        location.href="../index-admin.html";
                    }
                else{ 
                         alert("Porfavor ingrese, nombre de usuario y contraseña correctos."); 
                    } 
                } 