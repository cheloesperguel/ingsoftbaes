<%@page import="java.util.*" %>
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
            String categ=rs.getObject("CATEGORIA").toString();
            String stringVideo="<video src=";
            String stringDatos;

            String ruta=rs.getObject("RUTA").toString();
            
            stringVideo=stringVideo+ruta;
            stringVideo=stringVideo+" poster="+thumb+" style=\"margin-bottom: 15px; margin-left: 15px;\" width=\"400\" controls></video>";
            
            stringDatos="<div style=\"display: inline-flex; margin: 10px; position: absolute;\" > "
                    + "Titulo: "+titulo+""
                    + "<br>"
                    + "Descripcion: "+ desc+""
                    + "<br>"
                    + "Categoria: "+categ+""
                    + "</div>";
           
           
            //////////////////////
            
            out.println("<div style=\"background-color: cadetblue; border-radius: 10px; margin: 10px;\">");
            out.println("<h3 style=\"padding-top: 10px; text-align: center;\">"+rs.getObject("NOMBRE").toString()+"</h3>");
            out.println(stringVideo);
            out.println(stringDatos);        
            out.println("</div>");
            
            
        }
        
    }catch(Exception e){
       out.println("Excepcion "+e);
       e.printStackTrace();
    }  
    
    
    
    %>
    
