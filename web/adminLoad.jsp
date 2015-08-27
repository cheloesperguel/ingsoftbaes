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


<% 
    try {
        JufroCMSConnection c = new JufroCMSConnection();
            Statement s = c.createStatement();
            ResultSet rs = s.executeQuery("select * from VIDEO" );

        while (rs.next()){
            String thumb=rs.getObject("RUTA_THUMB").toString();
            String titulo=rs.getObject("TITULO").toString();
            String desc=rs.getObject("DESCRIPCION").toString();
            
            String stringThumb="<img src=\"";
            String stringDatos;
            
            stringThumb="<img src=\"";
            stringThumb+=thumb;
            stringThumb+="\" width=\"400\">";
            
            stringDatos="<div style=\"display: inline-flex; margin: 10px; position: absolute;\" > "
                    + "Titulo: "+titulo+""
                    + "<br>"
                    + "Descripcion: "+ desc+""
                    + "</div>";
           
           
            //////////////////////
            
            out.println("<div>");
            out.println(rs.getObject("NOMBRE").toString()+"<br>");
            out.println(stringThumb);
            out.println(stringDatos);        
            out.println("</div>");
            
            
        }
        
    }catch(Exception e){
       out.println("Excepcion "+e);
       e.printStackTrace();
    }  
 
    %>