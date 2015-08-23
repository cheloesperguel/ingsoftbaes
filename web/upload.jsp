<%@page import="java.util.*" %>
<%@page import="org.apache.commons.fileupload.*" %>
<%@page import="org.apache.commons.fileupload.disk.*" %>
<%@page import="org.apache.commons.fileupload.servlet.*" %>
<%@page import="org.apache.commons.io.*" %>
<%@page import="java.io.*" %>
<%@page import="jufroweb.JufroCMSConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="miaplicacionweb.MiConfiguracion"%>
<%@page import="jufroweb.Content"%>
<%@page import="jufroweb.Layout"%>


        <%!
        void asd(String titulo,String nombre, String rutaThumbnail, String Descripcion){
            
            
            
            try {
              JufroCMSConnection c = new JufroCMSConnection();
              Statement s = c.createStatement();
              
              String sentencia="INSERT INTO VIDEO VALUES ( '"+titulo+"', 'videoFolder/"+nombre+"', '"+rutaThumbnail+"')";
              s.execute(sentencia);
              //Ejemplo s.execute("INSERT INTO VIDEO VALUES ('Taiwan', 'TW', 'Asia')");
              ResultSet r = s.getResultSet();
              if (r!=null){
              
                }
            }
            catch(Exception e){
          
            }  
        }
      
        
        
%>

<%
        /*FileItemFactory es una interfaz para crear FileItem*/
        FileItemFactory file_factory = new DiskFileItemFactory();
 
        /*ServletFileUpload esta clase convierte los input file a FileItem*/
        ServletFileUpload servlet_up = new ServletFileUpload(file_factory);
        /*sacando los FileItem del ServletFileUpload en una lista */
        List items = servlet_up.parseRequest(request);
 
        for(int i=0;i<items.size();i++){
            /*FileItem representa un archivo en memoria que puede ser pasado al disco duro*/
            FileItem item = (FileItem) items.get(i);
            String n[] =item.getName().replace("\\","-").split("-");
            String nombreReal=n[n.length-1]; //nombre real del archivo para guardar
            /*item.isFormField() false=input file; true=text field*/
            
            if (! item.isFormField()){
                /*cual sera la ruta al archivo en el servidor*/
                String nombre=item.getName().replace(" ", ""); //quito espacios del nombre
                
                File archivo_server = new File("C:/Users/Chelo/Documents/NetBeansProjects/JufroCMS/web/videoFolder/"+nombre);
                /*y lo escribimos en el servido*/
                item.write(archivo_server);
                asd( nombre,nombre,"ruta thumbnail","descripcion");
                 
                MiConfiguracion miweb = new MiConfiguracion();
                //JufroPage mipagina = new JufroPage(mic,request,session);
                
                Layout lay = new Layout("C:\\Users\\Chelo\\Documents\\NetBeansProjects\\JufroCMS\\web\\gVideo.jsp");
                miweb.setContent(lay.getWebPage(),request,session);
               
                out.print(miweb.getWebPage());
                
                
            }
        }
       
        
        
        %>
        
