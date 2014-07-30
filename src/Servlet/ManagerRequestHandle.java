package Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sql.DatabaseConnection;
import datastructure.Employee;
import datastructure.Manager;

/**
 * Servlet implementation class ManagerRequestHandle
 */
@WebServlet("/ManagerRequestHandle")
public class ManagerRequestHandle extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	Connection cn;
	Statement st;
	ResultSet rs;
	HttpSession session;
	Manager user;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerRequestHandle() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		cn=new DatabaseConnection().getConnection();
		float salary=Float.parseFloat(request.getParameter("Salary"));
		int phone=Integer.parseInt(request.getParameter("Phone"));
		String email=request.getParameter("email");
		
		session=request.getSession();
		user=(Manager)session.getAttribute("user_m");
		String name=user.getName();
		String department=user.getDepartment()+",";
		int id=user.getEmp_id();
		try{
			st=cn.createStatement();
			rs=st.executeQuery("select * from request where emp_name='"+name+"'");
			if(rs.next()) st.executeUpdate("delete from request where emp_name='"+name+"'");
			System.out.println(name+"\t"+salary+"\t"+phone+"\t"+email+"\t");
			st.executeUpdate("insert into request values( "+id+", '"+name+"',"+salary+","+phone+",'"+email+"','"+department +"')");
		}catch(Exception e){
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/m_info.jsp");
		dispatcher.forward(request, response);
	}

}
