
package miaplicacionweb;
import jufroweb.*;


public class MiConfiguracion extends JufroApplication {
    
    public MiConfiguracion(){
        this.setLayout("C:\\Users\\Chelo\\Documents\\NetBeansProjects\\JufroCMS\\web\\layout.html");
        this.addWidgetFromFile("C:\\Users\\Chelo\\Documents\\NetBeansProjects\\JufroCMS\\web\\widget1.html");
        this.addWidgetFromFile("C:\\Users\\Chelo\\Documents\\NetBeansProjects\\JufroCMS\\web\\widget2.html");
        this.setFooter("Zhurdazo Productions Co.<br>+562345321, Techmuco EcoSoftware Space<br>Powered by &copy; JUFRO");
        this.setHeader("Can&iacute;bales del Tiempo, RAD to your life");
        JufroMenu mimenu = new JufroMenu();
        
        mimenu.addMenuItemFromContent("Home",1);
        mimenu.addMenuItemFromContent("Servicios",2);
        mimenu.addMenuItemFromHtml("Productos","C:\\Users\\Chelo\\Documents\\NetBeansProjects\\JufroCMS\\web\\estatico.html");
        mimenu.addMenuItemFromJSP("Servicios","dinamico.jsp");
        mimenu.addMenuItemFromHtml("Video","C:\\Users\\Chelo\\Documents\\NetBeansProjects\\JufroCMS\\web\\gVideo.jsp");
        //C:\\Users\\Chelo\\Documents\\NetBeansProjects\\JufroCMS\\web\\gVideo.jsp
        //JufroMenu subMenu = new JufroMenu();
        
        //subMenu.addMenuItemFromJSP("Servicios","dinamico.jsp");
        //subMenu.addMenuItemFromJSP("Servicios","dinamico.jsp");
        
        //mimenu.setSubMenu(subMenu);
        
        
        //mimenu.addMenuItemFromJSP("Video JSP","Gestor de videos/container.jsp");

        this.setMenu(mimenu);
        
    }
}
