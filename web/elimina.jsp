<%@page import="jufroweb.Video"%>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%@page import="miaplicacionweb.MiConfiguracion"%>
<%@page import="jufroweb.Content"%>
<%@page import="jufroweb.Layout"%>


<%
    int id= Integer.parseInt(request.getParameter("id"));

    Video video= new Video();
    
    video.eliminaBd(id);
    
    MiConfiguracion miweb= new MiConfiguracion();
    Layout lay = new Layout("C:\\Users\\Chelo\\Documents\\NetBeansProjects\\JufroCMS\\web\\gVideo.jsp");
    miweb.setContent(lay.getWebPage(),request,session);
    
    out.println(miweb.getWebPage());
    
    %>