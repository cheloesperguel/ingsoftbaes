package jufroweb;

import java.sql.ResultSet;
import java.sql.Statement;


/**
 *
 * @author Chelo
 */
public class Video {
    
    private String titulo;
    private String nombreArchivo;
    private String categoria;
    private String ruta;
    private String thumbnail;
    private String descripcion;
    
    public Video(){
        
    }

    public Video(String titulo, String nombreArchivo, String categoria, String ruta, String thumbnail, String descripcion) {
        this.titulo = titulo;
        this.nombreArchivo = nombreArchivo;
        this.categoria = categoria;
        this.ruta = ruta;
        this.thumbnail = thumbnail;
        this.descripcion=descripcion;
    }
    
    
    
    public void guardarBD(){
        
         try {
              JufroCMSConnection c = new JufroCMSConnection();
              Statement s = c.createStatement();
              
              String sentencia="INSERT INTO VIDEO (NOMBRE,RUTA,RUTA_THUMB,TITULO,DESCRIPCION,CATEGORIA,ESTADO) "
                      + "VALUES ( '"+nombreArchivo+"', 'videoFolder/"+nombreArchivo+"', '"+thumbnail+"', '"+titulo+"', '"+descripcion+"', '"+categoria+"', '"+true+"')";
              s.execute(sentencia);
              //Ejemplo s.execute("INSERT INTO VIDEO VALUES ('Taiwan', 'TW', 'Asia')");  
              ResultSet r = s.getResultSet();
              if (r!=null){
              
                }
            }
            catch(Exception e){
          
            }  
    }
    
    public void editaBD(int id){
        try {
             JufroCMSConnection c = new JufroCMSConnection();
             Statement s = c.createStatement();

             String sentencia="UPDATE VIDEO SET TITULO='"+titulo+"', DESCRIPCION='"+descripcion+"', CATEGORIA='"+categoria+"'"
                     + " WHERE ID="+id;
             s.execute(sentencia);
             //Ejemplo s.execute("INSERT INTO VIDEO VALUES ('Taiwan', 'TW', 'Asia')");  
             ResultSet r = s.getResultSet();
             if (r!=null){

               }
           }
           catch(Exception e){

        }  
    }
    
    public void eliminaBd(int id){
        try {
             JufroCMSConnection c = new JufroCMSConnection();
             Statement s = c.createStatement();

             String sentencia="DELETE FROM VIDEO WHERE ID="+id;
             s.execute(sentencia);
             //Ejemplo s.execute("INSERT INTO VIDEO VALUES ('Taiwan', 'TW', 'Asia')");  
             ResultSet r = s.getResultSet();
             if (r!=null){

               }
           }
           catch(Exception e){

        }  
    }
    
    public String getNombreArchivo() {
        return nombreArchivo;
    }

    public void setNombreArchivo(String nombreArchivo) {
        this.nombreArchivo = nombreArchivo;
    }
    
    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getRuta() {
        return ruta;
    }

    public void setRuta(String ruta) {
        this.ruta = ruta;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }
    
    /*
    public void setVisibilidadBd(String Nombre, boolean valor){
        
        try{
            
            JufroCMSConnection c = new JufroCMSConnection();
            Statement s = c.createStatement();

            String sentencia=" UPDATE VIDEO SET ESTADO ="+valor+ "WHERE NOMBRE = "+Nombre;
            s.execute(sentencia);
            
        }catch(Exception e){
            
        }
        
        
     
    }
    
    */
    
}
