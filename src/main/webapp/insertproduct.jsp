<%@page import="java.sql.*" %>>
<%
//request is implicit object
String id = request.getParameter("id");
String name = request.getParameter("name");
String category = request.getParameter("category");
String description = request.getParameter("description");
String price = request.getParameter("price");

try
{
	Connection con=null;
	Class.forName("com.mysql.cj.jdbc.Driver");
	System.out.println("Driver Class Loaded");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam", "root", "Root");
	System.out.println("Connection Established");
	
	PreparedStatement pstmt = con.prepareStatement("insert into product(id,name,category,description,price) values(?,?,?,?,?)");
	pstmt.setString(1, id);
	pstmt.setString(2, name);
	pstmt.setString(3, category);
	pstmt.setString(4, description);
	pstmt.setString(5, price);
	
	pstmt.executeUpdate();
	
	response.sendRedirect("adminhome.jsp"); 
}
catch(Exception e)
{
	out.println(e);
}
%>