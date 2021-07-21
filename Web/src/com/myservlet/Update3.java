package com.myservlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Update3
 */
@WebServlet("/Update3")
public class Update3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update3() {
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
		//response.getWriter().append("Served at: ").append(request.getContextPath());

		  request.setCharacterEncoding("utf-8");

  
		
			 try{
					String driverStr = "com.mysql.jdbc.Driver"; 
					String connStr = "jdbc:mysql://localhost:3306/info?characterEncoding=UTF-8";
					Class.forName(driverStr);
					Connection conn = DriverManager.getConnection(connStr, "root", "");
					String sql = "update machine1 set busy=?,state=? where id=3";
					PreparedStatement sta = conn.prepareStatement(sql);
			        sta.setInt(1, 1);
			        sta.setString(2, " π”√÷–");
				
					
			        System.out.print(sta);
			        sta.executeUpdate();
			        sta.close();
			        conn.close();	
			        String message="use successfully!!";
			        response.getWriter().write("<script>alert('"+message+"');window.location='JMlist1.jsp'</script>");
			        }
	    	catch (Exception e) {
				System.out.println(e + "use failed");
			} 
	}
}
