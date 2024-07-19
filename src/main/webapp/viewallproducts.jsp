<%@ page import = "java.sql.*" %>
<%
try
{
	Connection con=null;
	Class.forName("com.mysql.cj.jdbc.Driver");
	System.out.println("Driver Class Loaded");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam", "root", "Root");
	System.out.println("Connection Established");
	
	PreparedStatement pstmt = con.prepareStatement("select * from product");
	ResultSet rs = pstmt.executeQuery();
	
	%>
	  <h3 align="center"><u>List of Dishes</u></h3>
	 <table align="center" border=1>
  <tr bgcolor="lightblue">
    <td>ID</td>
    <td>Name</td>
    <td>Category</td>
    <td>Description</td>
    <td>Price</td>
  </tr>

	<%
	
	while(rs.next())
	{
		%>
		<tr>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(4)%></td>
        <td><%=rs.getString(5)%></td>
        </tr>
        <%
	}
	
	%>
	</table>
	<%
	rs.close();
	pstmt.close();
	con.close();
}
catch(Exception e)
{
	out.println(e); 
}
%>