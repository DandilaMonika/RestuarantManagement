<%@page import = "java.sql.*" %>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");

try
{
	Connection con=null;
	Class.forName("com.mysql.cj.jdbc.Driver");
	System.out.println("Driver Class Loaded");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam", "root", "Root");
	System.out.println("Connection Established");
	
	String qry = "select * from admin where username=? and password=?";
	PreparedStatement pstmt = con.prepareStatement(qry);
	pstmt.setString(1, username);
	pstmt.setString(2, password);
	ResultSet rs = pstmt.executeQuery();
	if(rs.next())
	{
		response.sendRedirect("adminhome.jsp");
	}
	
	else
	{
		out.println("Login Failed");
		response.sendRedirect("loginfailed.jsp");
	}
		
	
}
catch(Exception e)
{
	out.println(e);
}

%>