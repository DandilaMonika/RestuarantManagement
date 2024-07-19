<%@ page import = "java.sql.*" %>
<%
try
{
	Connection con=null;
	Class.forName("com.mysql.cj.jdbc.Driver");
	System.out.println("Driver Class Loaded");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam", "root", "Root");
	System.out.println("Connection Established");
	
	PreparedStatement pstmt = con.prepareStatement("select * from chef");
	ResultSet rs = pstmt.executeQuery();
	
	%>
	  <h3 align="center"><u>Delete Products</u></h3>
	 <table align="center" border=1>
  <tr bgcolor="lightblue">
    <td>ID</td>
    <td>Name</td>
    <td>DOB</td>
    <td>Email</td>
    <td>Phno</td>
    <td>Speciality</td>
    <td>Yoe</td>
    <td>Delete</td>
  </tr>

	<%
	
	while(rs.next())
	{
		%>
		<tr>
        <td><%=rs.getInt(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(4)%></td>
        <td><%=rs.getString(5)%></td>
        <td><%=rs.getString(6)%></td>
        <td><%=rs.getString(7)%></td>
        <td>
        <a href="chefdeletion.jsp?id=<%=rs.getInt(1)%>">Delete</a>
        </td>
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