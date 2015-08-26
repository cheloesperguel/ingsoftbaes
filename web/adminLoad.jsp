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
            String thumb;
            String string;
            out.println("<div>");
            string="<img src=\"";
            
            thumb=rs.getObject("RUTA_THUMB").toString();
            
            string=string+thumb;
            string=string+"\" width=\"400\">";
            
            out.println(rs.getObject("NOMBRE").toString()+"<br>");
            out.println(string);  
            out.println("<div style=\"display: inline-flex; margin: 10px; position: absolute;\" > asd </div>");
            
            out.println("</div>");
        }
        
    }catch(Exception e){
       out.println("Excepcion "+e);
       e.printStackTrace();
    }  
 
    %>