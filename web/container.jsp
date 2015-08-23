    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@page import="miaplicacionweb.MiConfiguracion"%>      
    <%@page import="jufroweb.Content"%>
    <%@page import="jufroweb.Layout"%>
    
        <%
        
        MiConfiguracion miweb = new MiConfiguracion();
        //JufroPage mipagina = new JufroPage(mic,request,session);
        Content gestor = new Content();
        Layout lay = new Layout("C:\\Users\\Chelo\\Documents\\NetBeansProjects\\JufroCMS\\web\\Gestor de videos\\gVideo.jsp");
        String pag = lay.getWebPage();
        //miweb.setLayout("C:\\Users\\Chelo\\Documents\\NetBeansProjects\\JufroCMS\\web\\Gestor de videos\\gVideo.jsp");
        miweb.setContent(pag,request,session);
        out.print(miweb.getWebPage());
        
        
        %>