<%@page import="java.sql.*" %>
<%
int id = Integer.parseInt(request.getParameter("id"));
String email = request.getParameter("email");
String phno = request.getParameter("phno");
int yoe = Integer.parseInt(request.getParamater("yoe"));
try
{
	Connection con=null;
	Class.forName("com.mysql.cj.jdbc.Driver");
	System.out.println("Driver Class Loaded");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam", "root", "Root");
	System.out.println("Connection Established");
	
	String qry = "update chef set email=?,phno=?,yoe=? where id=? ";
	PreparedStatement pstmt = con.prepareStatement(qry);
	pstmt.SetString(1, email);
	pstmt.SetString(2, phno);
	pstmt.SetInt(3, yoe);
	pstmt.setInt(4, id);
	
	int n = pstmt.executeUpdate();
	
	if(n>0)
	{
		response.sendRedirect("adminhome.jsp");
	}
	else
	{
		response.sendRedirect("updatechef.jsp");
	}
	
	pstmt.close();
	con.close();
	
	
}
catch(Exception e)
{
	out.println(e);
}

%>