<%@ page import = "java.sql.*" %>
<%

int id = Integer.parseInt(request.getParameter("id")); //id is taken from deleteuser


try
{
	Connection con=null;
	Class.forName("com.mysql.cj.jdbc.Driver");
	System.out.println("Driver Class Loaded");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam", "root", "Root");
	System.out.println("Connection Established");
	
	String qry = "delete from chef where id=?";
	PreparedStatement pstmt = con.prepareStatement(qry);
	pstmt.setInt(1, id);
	
	int n = pstmt.executeUpdate();
	//check if n>0 then display user deletion success message otherwise display user id not found
	
	response.sendRedirect("adminhome.jsp");
	
}
catch(Exception e)
{
	out.println(e);
}
%>