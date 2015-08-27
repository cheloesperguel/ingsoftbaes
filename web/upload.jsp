<%@page import="jufroweb.Video"%>
<%@page import="java.util.*" %>
<%@page import="org.apache.commons.fileupload.*" %>
<%@page import="org.apache.commons.fileupload.disk.*" %>
<%@page import="org.apache.commons.fileupload.servlet.*" %>
<%@page import="org.apache.commons.io.*" %>
<%@page import="java.io.*" %>
<%@page import="miaplicacionweb.MiConfiguracion"%>
<%@page import="jufroweb.Content"%>
<%@page import="jufroweb.Layout"%>

<%
        
        FileItemFactory file_factory = new DiskFileItemFactory();        
        ServletFileUpload servlet_up = new ServletFileUpload(file_factory);  
        
        List<FileItem> items = servlet_up.parseRequest(request);
        String nombre="";
        String rutaThumb="";
        String titulo="";
        String descripcion="";
        String categoria="";
        
        for(int i=0;i<items.size();i++){
           
            
            FileItem item = (FileItem) items.get(i);

            if (! item.isFormField()){
                
                nombre=item.getName().replace(" ", ""); 
                rutaThumb="videoFolder/default.jpg";
                
                
                File archivo_server = new File("C:/Users/Chelo/Documents/NetBeansProjects/JufroCMS/web/videoFolder/"+nombre);       
                item.write(archivo_server);
                
                
            }else{
                
                if(item.getFieldName().equals("titulo")){
                        titulo= item.getString();
                }
                
                if(item.getFieldName().equals("descripcion")){
                        descripcion= item.getString();
                }
                
                if(item.getFieldName().equals("categoria")){
                     categoria= item.getString();
                     
                }
            }
        }
        
        Video video= new Video(titulo, nombre, categoria, "videoFolder/"+nombre, rutaThumb, descripcion);
        
        video.guardarBD();

        MiConfiguracion miweb = new MiConfiguracion();            

        Layout lay = new Layout("C:\\Users\\Chelo\\Documents\\NetBeansProjects\\JufroCMS\\web\\gVideo.jsp");
        miweb.setContent(lay.getWebPage(),request,session);

        out.print(miweb.getWebPage());
        
        
        %>
        