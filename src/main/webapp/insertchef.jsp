<%@page import="java.sql.*" %>>
<%
//request is implicit object
String id = request.getParameter("id");
String name = request.getParameter("name");
String dob = request.getParameter("dob");
String email = request.getParameter("email");
String phno = request.getParameter("phno");
String speciality = request.getParameter("speciality");
String yoe = request.getParameter("yoe");
String pwd = request.getParameter("pwd");

try
{
	Connection con=null;
	Class.forName("com.mysql.cj.jdbc.Driver");
	System.out.println("Driver Class Loaded");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam", "root", "Root");
	System.out.println("Connection Established");
	
	PreparedStatement pstmt = con.prepareStatement("insert into chef(id,name,dob,email,phno,speciality,yoe,pwd) values(?,?,?,?,?,?,?,?)");
	pstmt.setString(1, id);
	pstmt.setString(2, name);
	pstmt.setString(3, dob);
	pstmt.setString(4, email);
	pstmt.setString(5, phno);
	pstmt.setString(6, speciality);
	pstmt.setString(7, yoe);
	pstmt.setString(8, pwd);
	
	pstmt.executeUpdate();
	
	response.sendRedirect("adminhome.jsp"); 
}
catch(Exception e)
{
	out.println(e);
}
%>