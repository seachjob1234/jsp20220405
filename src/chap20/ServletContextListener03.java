package chap20;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class ServletContextListener03
 *
 */
//@WebListener
public class ServletContextListener03 implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public ServletContextListener03() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
       System.out.println("앱 3리스너 종료");
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
     System.out.println("앱3 시작");
    }
	
}
