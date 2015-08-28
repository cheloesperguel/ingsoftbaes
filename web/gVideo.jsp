
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
         
    </head>
    <body style="width: 100%; position: relative">
        
        <div id="gestorDiv" style="  display: block; position: static;margin:10px">
        <h1>Gestor de Videos</h1>
        
        <nav>
            <ul>
                <li><a title="Opcion 1" onclick="muestraGaleria();showGallery()" href="#">Galeria</a></li>
                <li><a title="Opcion 2" onclick="muestraAdministrar();showAdmin();"href="#">Administrar</a></li>
                <li><a title="Opcion 3" onclick="muestraSubir()" href="#">Subir Video</a></li>             
            </ul>
        </nav>
        
        
        
        
        <div id="galeriaDiv" style="display: none ">
            <h1>Galeria</h1>
            
            <div id="galeriaDinamica">
              
            </div>
           
            
        </div>  
        
        
        <div id="administrarDiv" style="display: none;">
            
            <h1>Administrar</h1>
            <div id="adminDinamico">
               
                
            </div>
           
        </div>
        
        <div id="subirDiv" style="display: block; background-color: rgb(255, 255, 255); border-radius: 10px; padding: 40px; margin-top: 30px; display: none;">
            
            <h1>Subir</h1>
            
            <form method="post" action="upload.jsp" enctype="multipart/form-data">
                
                Seleccione el video: <br>

                <input name="videoUL" type="file" />
               
                <div id="datosDiv" >
                    
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
                   <!-- Subir imagen thumbnail (opcional):<br>
                   <!--<input name="thumbUL" type="file" /><br> 
                   <img name="thumbnail" height="90" width="150" src="videoFolder/default.jpg" alt="thumbnail"><br>
                    --> 
                   <input class="button" id="subir" type="submit" value="Subir" /> 
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
            
            function muestraEditar(){
                $(document).ready(function(){ 
                        $("#editarDiv").load('editLoad.jsp');
                });
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
