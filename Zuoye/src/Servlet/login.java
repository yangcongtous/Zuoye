package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.Userinfo;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class login extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public login() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	@Override
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		response.setContentType("text/html");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		System.out.println(username);
		System.out.println(password);
        Connection ct=null;
        Statement sm=null;
        ResultSet rs=null ;
        HttpSession session=request.getSession(true);
        
        try { 
        String driverClassName = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://127.0.0.1:3306/zuoye";
        String password2 = "123456";
        String user= "root";
        Class.forName(driverClassName);
        ct = (Connection) DriverManager.getConnection(url, user, password2);
        sm=(Statement) ct.createStatement();
        rs=sm.executeQuery("select password from userinfo where username='"+username+"'");
        Userinfo info=new Userinfo();
           if(rs.next())   
   
              {
                  String dbPassword;
                 dbPassword = rs.getString(1);
                 if(dbPassword.equals(password)){
                	 ResultSet rs2=sm. executeQuery("select userid from userinfo where username='"+username+"'");
                	 if (rs2.next()){
                		 int userid=Integer.parseInt(rs2.getString(1)); 
                			
                        	info.setUserid(userid);
                        	info.setUsername(username);
                            session.setAttribute("login", info);
                        	 List list = new ArrayList();       
                        	 list.add( username);             
                     		Gson gson = new  Gson();
                    		String json = gson.toJson(list);     
                        	 System.out.println("json");   
                        	out.println(json);
                        	
                	 }
                	
                
             		//request.setAttribute("Demo1", info);		
            		//RequestDispatcher rd = request.getRequestDispatcher("../index1.jsp");
            		//rd.forward(request, response);
                     }
                  else{
                      
                  System.out.println("您输入的用户名不存在或密码错误请重新登录！");
                  System.out.println("<p align='center'><a href='user.html'>重新登录</a></p>");
              }
              }
   
        }
        catch(Exception ex)
            
        {
        	System.out.println(ex);
        	System.out.println(" 错误");
          
        }
       finally{
            try{
       if(rs!=null){
       rs.close();
       }
       if(sm!=null){
       sm.close();
       }
       if(ct!=null){
           ct.close();   
       }
        }
            catch(Exception ex){
       }
        }
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		System.out.println(username);
		System.out.println(password);
        Connection ct=null;
        Statement sm=null;
        ResultSet rs=null ;
        HttpSession session=request.getSession(true);
        
        try { 
        String driverClassName = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://127.0.0.1:3306/zuoye";
        String password2 = "123456";
        String user= "root";
        Class.forName(driverClassName);
        ct = (Connection) DriverManager.getConnection(url, user, password2);
        sm=(Statement) ct.createStatement();
        rs=sm.executeQuery("select password from userinfo where username='"+username+"'");
     
        Userinfo info=new Userinfo();
           if(rs.next())   
   
              {
                  String dbPassword;
                 dbPassword = rs.getString(1);
                 if(dbPassword.equals(password)){
                	 ResultSet rs2=sm. executeQuery("select userid from userinfo where username='"+username+"'");
                	 if (rs2.next()){
                		 int userid=Integer.parseInt(rs2.getString(1)); 
                		 
                        	info.setUserid(userid);
                        	info.setUsername(username);
                        	session.setAttribute("User",info);
                          	 List list = new ArrayList();       
                        	 list.add( username);             
                     		Gson gson = new  Gson();
                    		String json = gson.toJson(list);     
                        	 System.out.println(json);   
                        	out.println(json);
                	 }
                	
                
             		//request.setAttribute("Demo1", info);		
            		//RequestDispatcher rd = request.getRequestDispatcher("../index1.jsp");
            		//rd.forward(request, response);
                     }
                  else{
                      out.println(1);
                  System.out.println("您输入的用户名不存在或密码错误请重新登录！");
                  System.out.println("<p align='center'><a href='user.html'>重新登录</a></p>");
              }
              }
   
        }
        catch(Exception ex)
            
        {
        	System.out.println(ex);
        	System.out.println(" 错误");
          
        }
       finally{
            try{
       if(rs!=null){
       rs.close();
       }
       if(sm!=null){
       sm.close();
       }
       if(ct!=null){
           ct.close();   
       }
        }
            catch(Exception ex){
       }
        }
		
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	@Override
	public void init() throws ServletException {
		// Put your code here
	}

}
