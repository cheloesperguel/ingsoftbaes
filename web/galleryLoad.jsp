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
            String string="<video src=";
            
            String ruta=rs.getObject("RUTA").toString();
            
            string=string+ruta;
            string=string+" poster=\"videoFolder/default.jpg\" width=\"400\" controls></video><br>";
            
            out.println(rs.getObject("NOMBRE").toString()+"<br>");
            out.println(string);  
        }
        
    }catch(Exception e){
       out.println("Excepcion "+e);
       e.printStackTrace();
    }  
    
    
    
    %>
    
    