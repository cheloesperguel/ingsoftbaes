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
    
    public Video(){
        
    }

    public Video(String titulo, String nombreArchivo, String categoria, String ruta, String thumbnail) {
        this.titulo = titulo;
        this.nombreArchivo = nombreArchivo;
        this.categoria = categoria;
        this.ruta = ruta;
        this.thumbnail = thumbnail;
    }
    
    
    
    public void guardarBD(){
        
         try {
              JufroCMSConnection c = new JufroCMSConnection();
              Statement s = c.createStatement();
              
              String sentencia="INSERT INTO VIDEO VALUES ( '"+nombreArchivo+"', 'videoFolder/"+nombreArchivo+"', '"+thumbnail+"', '"+titulo+"')";
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
    
    
    
    
}
