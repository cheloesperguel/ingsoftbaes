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
            int i=1;
        while (rs.next()){
            String thumb=rs.getObject("RUTA_THUMB").toString();
            String titulo=rs.getObject("TITULO").toString();
            String desc=rs.getObject("DESCRIPCION").toString();
            String categ=rs.getObject("CATEGORIA").toString();
            i=rs.getInt("ID");
            boolean visible=rs.getBoolean("ESTADO");
            String check;
            if(visible){
                check="checked";
            }else{
                check="";
            }
            
            String stringThumb;
            String stringDatos;
            
            stringThumb="<img src=\"";
            stringThumb+=thumb;
            stringThumb+="\" style=\"margin-bottom: 15px; margin-left: 15px;\" width=\"400\">";
            
            stringDatos="<div style=\"display: inline-flex; margin: 10px; position: absolute;\" > "
                    + "Titulo: "+titulo+""
                    + "<br>"
                    + "Descripcion: "+ desc+""
                    + "<br>"
                    + "Categoria: "+categ+""
                    + "<br>"
                    + "Visible: "               
                    + "<input type=\"checkbox\" name=\"visible\" value=\"Visible\" style=\"position:inherit\" "+check+">"
                    + "<br>"      
                    + "<a href=\"editLoad.jsp?id="+i+"\" onclick=\"muestraEditar();\" style=\"position: inherit;\" ><p>Editar<p></a>"
                    + "</div>";
           
           
            //////////////////////
            
            out.println("<div style=\"background-color: cadetblue; border-radius: 10px; margin: 10px;\">");
            out.println("<h3 style=\"padding-top: 10px; text-align: center;\">"+rs.getObject("NOMBRE").toString()+"</h3>");
            out.println(stringThumb);
            out.println(stringDatos);        
            out.println("</div>");
            
            i++;
        }
        
    }catch(Exception e){
       out.println("Excepcion "+e);
       e.printStackTrace();
    }  
 
    %>