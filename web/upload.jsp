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
        void send(String titulo,String nombre, String rutaThumbnail, String Descripcion){
            
            
            
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
        
        FileItemFactory file_factory = new DiskFileItemFactory();
 
       
        ServletFileUpload servlet_up = new ServletFileUpload(file_factory);
       
        List items = servlet_up.parseRequest(request);
 
        for(int i=0;i<items.size();i++){
           
           
            FileItem item = (FileItem) items.get(i);
            String n[] =item.getName().replace("\\","-").split("-");
            String nombreReal=n[n.length-1]; 
           
            
            if (! item.isFormField()){
                
                String nombre=item.getName().replace(" ", ""); 
                String rutaThumb="videoFolder/default.jpg";
                        
                File archivo_server = new File("C:/Users/Chelo/Documents/NetBeansProjects/JufroCMS/web/videoFolder/"+nombre);
                
                item.write(archivo_server);
                
                send( nombre,nombre,rutaThumb,"descripcion");
                 
                MiConfiguracion miweb = new MiConfiguracion();            
                
                Layout lay = new Layout("C:\\Users\\Chelo\\Documents\\NetBeansProjects\\JufroCMS\\web\\gVideo.jsp");
                miweb.setContent(lay.getWebPage(),request,session);
               
                out.print(miweb.getWebPage());
                
                
            }
        }
       
        
        
        %>
        
