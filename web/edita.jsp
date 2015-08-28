<%@page import="jufroweb.Video"%>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%@page import="miaplicacionweb.MiConfiguracion"%>
<%@page import="jufroweb.Content"%>
<%@page import="jufroweb.Layout"%>


<%
    int id= Integer.parseInt(request.getParameter("id"));
    String ruta=request.getParameter("ruta");
    String thumb=request.getParameter("thumb");
    String cat=request.getParameter("cat");
 
    String titulo=request.getParameter("titulo");
    String nom=request.getParameter("nom");
    
    String descripcion=request.getParameter("descripcion"); 
    Video video= new Video(titulo, nom, cat, ruta, thumb, descripcion);
    
    video.editaBD(id);
    
    MiConfiguracion miweb= new MiConfiguracion();
    Layout lay = new Layout("C:\\Users\\Chelo\\Documents\\NetBeansProjects\\JufroCMS\\web\\gVideo.jsp");
    miweb.setContent(lay.getWebPage(),request,session);
    
    out.println(miweb.getWebPage());
    //out.println(titulo+ " "+ cat+" "+ ruta+" "+ thumb+" "+ descripcion+" "+nom);
    
    %>