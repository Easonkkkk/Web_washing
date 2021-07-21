package com.myservlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  request.setCharacterEncoding("utf-8");
			String name=request.getParameter("name");
			String password=request.getParameter("password");
			
		    try{
				String driverStr = "com.mysql.jdbc.Driver"; 
				String connStr = "jdbc:mysql://localhost:3306/info?characterEncoding=UTF-8";
				
				Class.forName(driverStr);
				Connection conn = DriverManager.getConnection(connStr, "root", "");
				
				String sql="select * from userinfo";
				PreparedStatement sta = conn.prepareStatement(sql);
		        System.out.print(sta);
		        ResultSet rs=sta.executeQuery(sql);
				while(rs.next()) {
				String name1=rs.getString("name");
				String password1=rs.getString("password");
				if(name1.equals(name)&&password1.equals(password)) {
					 String message="Login successfully!!";
					 response.getWriter().write("<script>alert('"+message+"');window.location='Loading.jsp'</script>");
		       }
				else {
					System.out.println(e + "Login failed");
				}
				}
				sta.close();
		        conn.close();}
  	catch (Exception e) {
			System.out.println(e + "Login failed");
		} 
    }
}
