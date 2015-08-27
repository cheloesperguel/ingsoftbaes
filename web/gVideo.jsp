
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
         
    </head>
    <body style="width: 100%; position: relative">
        
        <div id="gestorDiv" style="  display: block; position: static;top:170px;left:240px;width:560px">
        <h1>Gestor de Videos</h1>
               
        <input type="button" onclick="muestraGaleria();showGallery()" value="Galeria" >
            <input type="button" onclick="muestraAdministrar();showAdmin();" value="Administrar">
            <input type="button" onclick="muestraSubir()" value="Subir">     
 
        </div>
        
        
        <div id="galeriaDiv" style="display: none ">
            <h1>Galeria</h1>
            
            <div id="galeriaDinamica" style="text-align: center">
              
            </div>
           
            
        </div>  
        
        <div id="administrarDiv" style="display: none;">
            
            <h1>Administrar</h1>
            <div id="adminDinamico">
               
                
            </div>
           
        </div>
        
        <div id="subirDiv" style="display: none;">
            
            <h1>Subir</h1>
            
            <form method="post" action="upload.jsp" enctype="multipart/form-data">
                
                Seleccione el video: <br>

                <input name="videoUL" type="file" />
               
                <div id="datosDiv" >
                    
                    <br>Nombre de archivo: video.mp4 <br>
                    Ingrese Titulo: 
                    <br><input type="text" name="titulo"  >
                    <br>Categoria: 
                    <br>
                      
                    <Select name="categoria"  id="categoria">
                        <option value = "Musica" selected>Musica</option>
                        <option value = "Entretencion">Entretencion</option>
                        <option value = "Juegos">Juegos</option>
                        <option value = "Peliculas">Peliculas</option>
                        <option value = "Deportes">Deportes</option>                       
                    </Select>
                    
                    
                    <br>
                    Ingrese Descripción:
                    <br>
                    <textarea name="descripcion" rows="10" cols="40"></textarea>
                    <br>
                    Subir imagen thumbnail (opcional):<br>
                   <!--<input name="thumbUL" type="file" /><br>-->  
                   <img name="thumbnail" height="90" width="150" src="videoFolder/default.jpg" alt="thumbnail"><br>

                    <input type="submit" value="Subir" /> 
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
            
            function showGallery(){
                
                $(document).ready(function(){ 
                        $("#galeriaDinamica").load('galleryLoad.jsp');
                });

            }
            
            function showAdmin(){
                
                $(document).ready(function(){ 
                        $("#adminDinamico").load('adminLoad.jsp');
                });

            }

        </script>
        
        
        
    </body>
</html>
