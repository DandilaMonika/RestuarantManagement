<%@page import="java.sql.*" %>
<%
int id = Integer.parseInt(request.getParameter("id"));
double price = Double.parseDouble(request.getParameter("price"));

try
{
	Connection con=null;
	Class.forName("com.mysql.cj.jdbc.Driver");
	System.out.println("Driver Class Loaded");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam", "root", "Root");
	System.out.println("Connection Established");
	
	String qry = "update product set price=? where id=? ";
	PreparedStatement pstmt = con.prepareStatement(qry);
	pstmt.setDouble(1, price);
	pstmt.setInt(2, id);
	
	int n = pstmt.executeUpdate();
	
	if(n>0)
	{
		response.sendRedirect("adminhome.jsp");
	}
	else
	{
		response.sendRedirect("updateproduct.jsp");
	}
	
	pstmt.close();
	con.close();
	
	
}
catch(Exception e)
{
	out.println(e);
}

%>