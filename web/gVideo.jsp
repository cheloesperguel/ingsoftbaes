
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       
         
    </head>
    <body style="width: 100%; position: relative">
        <h1>Gestor de Videos</h1>
        
        <div> 
            
            <input type="button" onclick="muestraGaleria()" value="Galeria" >
            <input type="button" onclick="muestraAdministrar()" value="Administrar">
            <input type="button" onclick="muestraSubir()" value="Subir">     
 
        </div>
        
        
        <div id="galeriaDiv" style="  display: none ">
            <h1>Galeria</h1>
            
            <script>
                
            show();
           
            </script>
            
            <div id="hola">
                
                
            </div>
            <video src="videoFolder/test.mp4" poster="videoFolder/default.jpg" width="400" controls></video> 
            
        </div>  
        
        <div id="administrarDiv" style="display: none">
            
            <h1>Administrar</h1>
        </div>
        
        <div id="subirDiv" style="display: none">
            
            <h1>Subir</h1>
            
            <form method="post" action="upload.jsp" enctype="multipart/form-data">
                
                Seleccione el video: <br>

                <input name="videoUL" type="file" />
               
                <div id="datosDiv" style="display: block">
                    
                    
                     <br>
                    <img name="thumbnail" height="90" width="150" src="videoFolder/default.jpg" alt="thumbnail"><br>
                    <br>Nombre de archivo: video.mp4 <br>

                    <!-- Nombre: <input name="nombreVideoTf" type="text" > -->
                    <br>Categoria: 

                     <select>
                        <option value="Musica">Musica</option>
                        <option value="Entretencion">Entretencion</option>
                        <option value="Juegos">Juegos</option>
                        <option value="Peliculas">Peliculas</option>
                        
                       
                        
                      </select>  
                    <br>
                    <br>Subir imagen thumbnail (opcional):<br>
                   <!-- <input name="videoUL" type="file" /><br>-->
                    <br><input type="submit" value="Subir" /> 
                </div>
                
                
            </form>
        </div>
        
        
        <script >
            
            function muestraGaleria(){
                    
                document.getElementById("galeriaDiv").style.display = "block";
                document.getElementById("administrarDiv").style.display = "none";
                document.getElementById("subirDiv").style.display = "none";
                
                
            }
             
                
            function muestraAdministrar(){
                    
                document.getElementById("galeriaDiv").style.display = "none";
                document.getElementById("administrarDiv").style.display = "block";
                document.getElementById("subirDiv").style.display = "none";
            }
                
            function muestraSubir(){
                    
                document.getElementById("galeriaDiv").style.display = "none";
                document.getElementById("administrarDiv").style.display = "none";
                document.getElementById("subirDiv").style.display = "block";
            }
            
            function show(){
                document.getElementById("subirDiv").style.display = "block";
                document.write("asd");
                for (i = 0; i < 10; i++) {
                    
                    a=document.getElementById("hola");  
                    a.innerHTML('<video src="videoFolder/test.mp4" poster="videoFolder/default.jpg" width="400" controls></video>');
                    document.write('<video src="videoFolder/test.mp4" poster="videoFolder/default.jpg" width="400" controls></video>'); 

                }

               
            }
           
            
    
        </script>
        
        
        
    </body>
</html>
