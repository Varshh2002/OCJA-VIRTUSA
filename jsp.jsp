<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*,java.util.*,java.sql.*"%>
    <%
    int t=Integer.valueOf(request.getParameter("sofa1"));
    int t1=Integer.valueOf(request.getParameter("sofa2"));
    int t10=Integer.valueOf(request.getParameter("desk1"));
    int t11=Integer.valueOf(request.getParameter("desk2"));

    int t2=Integer.valueOf(request.getParameter("chair1"));
    int t3=Integer.valueOf(request.getParameter("chair2"));
    int t4=Integer.valueOf(request.getParameter("bed1"));
    int t5=Integer.valueOf(request.getParameter("bed2"));
    int t6=Integer.valueOf(request.getParameter("pillow1"));
    int t7=Integer.valueOf(request.getParameter("pillow2"));
    int t8=Integer.valueOf(request.getParameter("table1"));
    int t9=Integer.valueOf(request.getParameter("table2"));
       
   try{
	   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE","logistics","varsha2002");
	   PreparedStatement ps=con.prepareStatement("insert into WAREHOUSE1 values(?,?,?,?,?,?,?,?,?,?,?,?)");
	   ps.setInt(1,t);
	   ps.setInt(2,t1);
	   ps.setInt(3,t2);
	   ps.setInt(4,t3);
	   ps.setInt(5,t4);
	   ps.setInt(6,t5);
	   ps.setInt(7,t6);
	   ps.setInt(8,t7);
	   ps.setInt(9,t8);
	   ps.setInt(10,t9);
	   ps.setInt(11,t10);
	   ps.setInt(12,t11);
	   ps.executeUpdate();
	   
	   
   }
   catch(Exception e){
	   out.println(e);
   }
   
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
  <style>
   body{
   
   margin:0;
   padding:0;
   }
    td{
   padding-right:50px;
   
   } 
   table,tr,td{
   border:3px solid white;
         border-collapse: collapse; 
   }
   tr,td{
        background-color: #96D4D4;
    }
    div {
  column-count: 3;
  /* margin-top:4rem;*/
 margin-left:7rem; 
}


</style>
<body>

</body>
<%
try{
	out.println("<div>");
	out.println("<table>");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE","logistics","varsha2002");
	 String sql="select sum(SELECTION_SOFA) From WAREHOUSE1";
	PreparedStatement ps1=con.prepareStatement(sql);
	ResultSet rs=ps1.executeQuery();
	if(rs.next()){
		String sum=rs.getString("sum(SELECTION_SOFA)");
		out.println("<tr>");
		out.print("<td><h4>SELECTION_SOFA</h4></td>");
		out.print("<td>"+sum+"</td>");
		out.println("</tr>");
	} 
	String sql1="select sum(WOOD_SOFA) From WAREHOUSE1";
	PreparedStatement ps2=con.prepareStatement(sql1);
	ResultSet rs1=ps2.executeQuery();
	if(rs1.next()){
		String sum=rs1.getString("sum(WOOD_SOFA)");
		out.println("<tr>");
		out.print("<td><h4>WOOD_SOFA</h4><td>");
		out.print("<td>"+sum+"</td>");
		out.println("</tr>");
	}
	

	String sql2="select sum(READING_CHAIR) From WAREHOUSE1";
	PreparedStatement ps3=con.prepareStatement(sql2);
	ResultSet rs2=ps3.executeQuery();
	if(rs2.next()){
		out.println("<tr>");
		String sum=rs2.getString("sum(READING_CHAIR)");
		out.print("<td><h4>READING-CHAIR</h4></td>");
		out.print("<td>"+sum+"</td>");
		out.println("</tr>");
	}
	
	String sql3="select sum(ARM_CHAIR) From WAREHOUSE1";
	PreparedStatement ps4=con.prepareStatement(sql3);
	ResultSet rs3=ps4.executeQuery();
	if(rs3.next()){
		out.println("<tr>");
		String sum=rs3.getString("sum(ARM_CHAIR)");
		out.print("<td><h4>ARM-CHAIR</h4></td>");
		out.print("<td>"+sum+"</td>");
		out.println("</tr>");
	}
	String sql4="select sum(MATTRESSES) From WAREHOUSE1";
	PreparedStatement ps5=con.prepareStatement(sql4);
	ResultSet rs4=ps5.executeQuery();
	if(rs4.next()){
		out.println("<tr>");
		String sum=rs4.getString("sum(MATTRESSES)");
		out.print("<td><h4>MATTRESSES</h4></td>");
		out.print("<td>"+sum+"</td>");
		out.println("</tr>");
	}
	String sql5="select sum(QUEEN_BED) From WAREHOUSE1";
	PreparedStatement ps6=con.prepareStatement(sql5);
	ResultSet rs5=ps6.executeQuery();
	if(rs5.next()){
		out.println("</tr>");
		String sum=rs5.getString("sum(QUEEN_BED)");
		out.print("<td><h4>QUEEN-BED</h4></td>");
		out.print("<td>"+sum+"</td>");
		out.println("</tr>");
	}
	String sql6="select sum(PILLOWS) From WAREHOUSE1";
	PreparedStatement ps7=con.prepareStatement(sql6);
	ResultSet rs6=ps7.executeQuery();
	if(rs6.next()){
		out.println("</tr>");
		String sum=rs6.getString("sum(PILLOWS)");
		out.print("<td><h4>PILLOWS</h4></td>");
		out.print("<td>"+sum+"</td>");
		out.println("</tr>");
	}
	String sql7="select sum(FEATHER_PILLOWS) From WAREHOUSE1";
	PreparedStatement ps8=con.prepareStatement(sql7);
	ResultSet rs7=ps8.executeQuery();
	if(rs7.next()){
		out.println("</tr>");
		String sum=rs7.getString("sum(FEATHER_PILLOWS)");
		out.print("<td><h4>FEATHER-PILLOWS</h4></td>");
		out.print("<td>"+sum+"</td>");
		out.println("</tr>");
	}
	String sql8="select sum(ACCENT_TABLE) From WAREHOUSE1";
	PreparedStatement ps9=con.prepareStatement(sql8);
	ResultSet rs8=ps9.executeQuery();
	if(rs8.next()){
		out.println("</tr>");
		String sum=rs8.getString("sum(ACCENT_TABLE)");
		out.print("<td><h4>ACCENT-TABLE</h4></td>");
		out.print("<td>"+sum+"</td>");
		out.println("</tr>");
	}
	String sql9="select sum(DINING_TABLE) From WAREHOUSE1";
	PreparedStatement ps10=con.prepareStatement(sql9);
	ResultSet rs9=ps10.executeQuery();
	if(rs9.next()){
		out.println("<tr>");
		String sum=rs9.getString("sum(DINING_TABLE)");
		out.print("<td><h4>DINING-TABLE</h4></td>");
		out.print("<td>"+sum+"</td>");
		out.println("</tr>");
	}
	String sql10="select sum(WRITING_DESK) From WAREHOUSE1";
	PreparedStatement ps11=con.prepareStatement(sql10);
	ResultSet rs10=ps11.executeQuery();
	if(rs10.next()){
		out.println("<tr>");
		String sum=rs10.getString("sum(WRITING_DESK)");
		out.print("<td><h4>WRITING-DESK</h4></td>");
		out.print("<td>"+sum+"</td>");
		out.println("</tr>");
	} 
	String sql11="select sum(CORNER_DESK) From WAREHOUSE1";
	PreparedStatement ps12=con.prepareStatement(sql11);
	ResultSet rs12=ps12.executeQuery();
	if(rs12.next()){
		out.println("<tr>");
		String sum=rs12.getString("sum(CORNER_DESK)");
		out.print("<td><h4>CORNER-DESK</h4></td>");
		out.print("<td>"+sum+"</td>");
		out.println("</tr>");
	}
	
	}
catch(Exception ex){
	
}
out.println("</table>");
out.println("<div>");
%>
</html>