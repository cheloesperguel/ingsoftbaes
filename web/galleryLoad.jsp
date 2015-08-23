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

<%


                MiConfiguracion miweb = new MiConfiguracion();
                //JufroPage mipagina = new JufroPage(mic,request,session);
                
                Layout lay = new Layout("C:\\Users\\Chelo\\Documents\\NetBeansProjects\\JufroCMS\\web\\gVideo.jsp");
                miweb.setContent(lay.getWebPage(),request,session);
               
                out.print(miweb.getWebPage());
                
%>