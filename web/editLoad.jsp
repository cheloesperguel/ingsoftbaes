<%@page import="java.util.*" %>
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


<%
    
    int id= Integer.parseInt(request.getParameter("id"));
    JufroCMSConnection c = new JufroCMSConnection();
    Statement s = c.createStatement();
    ResultSet rs = s.executeQuery("SELECT * FROM VIDEO WHERE ID="+id );
    String cadena="";
    String titulo="";
    String descripcion="";
    String categoria="";
    String rutaVideo="";
    String thumb="";
    String nombre="";
    
    rs.next();
    
    nombre=rs.getObject("NOMBRE").toString();
    titulo=rs.getObject("TITULO").toString();
    descripcion=rs.getObject("DESCRIPCION").toString();
    categoria=rs.getObject("CATEGORIA").toString();
    rutaVideo=rs.getObject("RUTA").toString();
    thumb=rs.getObject("RUTA_THUMB").toString();
    
    cadena=cadena+""
            + "<h1>Editando: "+titulo+"</h1>"
            + "<br>"
            + "<video src="+rutaVideo+" poster="+thumb+" width=\"400\" controls></video>"
            + "<br><br>"
            + "<form method=\"post\" action=\"edita.jsp?id="+id+"&ruta="+rutaVideo+"&thumb="+thumb+"&cat="+categoria+"&nom="+nombre+"\">"
            + "<input type=\"text\" name=\"titulo\" value=\""+titulo+"\" >"
            + "<br> "
            + "<textarea name=\"descripcion\" rows=\"10\" cols=\"40\">"+descripcion+"</textarea>"
            + "<br>"
            + "<Select name=\"categoria\"  id=\"categoria\">"
            +       "<option value = \"Musica\" selected>Musica</option>"
            +       "<option value = \"Entretencion\">Entretencion</option>"
            +       "<option value = \"Juegos\">Juegos</option>"
            +       "<option value = \"Peliculas\">Peliculas</option>"
            +       "<option value = \"Deportes\">Deportes</option>"
            +       "</Select>"
            + "<br>"                
            + "<input class=\"button\" type=\"submit\" value=\"Editar\" />"
            + "<a href=elimina.jsp?id="+id+" style=\"float: right; margin-right: 30px;\">Eliminar Video</a>"
            + "</form>";
    
    
    
        MiConfiguracion miweb = new MiConfiguracion();            

        //Layout lay = new Layout("C:\\Users\\Chelo\\Documents\\NetBeansProjects\\JufroCMS\\web\\gVideo.jsp");
        miweb.setContent( cadena,request,session);

        out.print(miweb.getWebPage());
%>

