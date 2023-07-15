import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/registerInput")


public class registerInput extends HttpServlet {
	
       
	String name, address, email, password;
	int cID;
	private static int idCounter = 1;
	

	public static synchronized int createID()
	{
	    return idCounter++;
	}    
	
	
    
	public registerInput() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
	}

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
	
		name=request.getParameter("name");
		
		password=request.getParameter("password");
		
		address=request.getParameter("address");
	
		email=request.getParameter("email");
		
		
		response.setContentType("text/html");  
		
		          
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			
			Connection con=DriverManager.getConnection(  
				"jdbc:mysql://localhost:3306/foodorderdb","root","");  
		   
			PreparedStatement ps=con.prepareStatement(  
					"insert into customer values(?,?,?,?,?)");  
			cID=createID();
			
				ps.setInt(1, cID); 
				ps.setString(2, name);				
				ps.setString(3, email);
				ps.setString(4, password);
				ps.setString(5, address);
		 
		          
		int i=ps.executeUpdate();  
		 
//		out.print("You are successfully registered...");  
		if(i>0) 
		{
		response.sendRedirect("index.html");  
		}
		}catch (Exception e2) {System.out.println(e2);}  
		          
		out.close();  
		}  

	}
	
			 


