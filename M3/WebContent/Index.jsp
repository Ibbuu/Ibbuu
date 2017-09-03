<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="testDB.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

Hello world 2
<% 

testDB test = new testDB();
Connection con =  test.getConnection();

PreparedStatement ps = null;
//String sql1 = "select * from STORE_ITEM_TJA294 where productid = ?";

String sq = "select * from customers";
try {
	ps = con.prepareStatement(sq);
	ResultSet rs1 = ps.executeQuery();%>
	<table cellpadding="1" cellspacing="1" border = '1' >
	<tr>
    <td> <b>ID </b></td>
     <td><b>Name</b><td>   
     </tr><%
	while(rs1.next())
	{
		%>
		 
		

      <tr>
     <td><%=rs1.getString(1) %></td>
      <td><%=rs1.getString(2) %><td>   
      </tr>
      
  
		<%
	}
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>
</table> 
</body>
</html>