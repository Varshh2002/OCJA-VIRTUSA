<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import = "java.io.*,java.util.*,java.sql.*"%>
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
  margin-top:4rem;
 margin-left:7rem;
} 
</style>
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
	out.println("<h1 style='text-align: center; margin-top:40px;'>TOTAL STOCKS</h1>");
	out.println("<div>");
	out.println("<table>");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE","logistics","varsha2002");
	 String sql="select sum(SELECTION_SOFA) From WAREHOUSE1";
	PreparedStatement ps1=con.prepareStatement(sql);
	ResultSet rs=ps1.executeQuery();
	if(rs.next()){
		String sum=rs.getString("sum(SELECTION_SOFA)");
		int n=Integer.valueOf(sum);
		int sum1=n-t;
		out.println("<tr>");
		out.print("<td style='text-align:right;'><h4>SELECTION_SOFA</h4><td>");
		out.print("<td style='padding:20px;'>"+sum1+"</td>");
		out.println("</tr>");
	} 
	String sql1="select sum(WOOD_SOFA) From WAREHOUSE1";
	PreparedStatement ps2=con.prepareStatement(sql1);
	ResultSet rs1=ps2.executeQuery();
	if(rs1.next()){
		String sum=rs1.getString("sum(WOOD_SOFA)");
		int n=Integer.valueOf(sum);
		int sum1=n-t1;
		out.println("<tr>");
		out.print("<td style='text-align:center;'><h4>WOOD_SOFA</h4></td>");
		out.print("<td style='padding:20px;'>"+sum1+"</td>");
		out.println("</tr>");
	}
	

	String sql2="select sum(READING_CHAIR) From WAREHOUSE1";
	PreparedStatement ps3=con.prepareStatement(sql2);
	ResultSet rs2=ps3.executeQuery();
	if(rs2.next()){
		String sum=rs2.getString("sum(READING_CHAIR)");
		int n=Integer.valueOf(sum);
		int sum1=n-t2;
		out.println("<tr>");
		out.print("<td style='text-align:right;'><h4>READING-CHAIR</h4></td>");
		out.print("<td style='padding:20px;'>"+sum1+"</td>");
		out.println("</tr>");
	}
	
	String sql3="select sum(ARM_CHAIR) From WAREHOUSE1";
	PreparedStatement ps4=con.prepareStatement(sql3);
	ResultSet rs3=ps4.executeQuery();
	if(rs3.next()){
		String sum=rs3.getString("sum(ARM_CHAIR)");
		int n=Integer.valueOf(sum);
		int sum1=n-t3;
		out.println("<tr>");
		out.print("<td style='text-align:center;'><h4>ARM-CHAIR</h4></td>");
		out.print("<td style='padding:20px;'>"+sum1+"</td>");
		out.println("</tr>");
	}
	String sql4="select sum(MATTRESSES) From WAREHOUSE1";
	PreparedStatement ps5=con.prepareStatement(sql4);
	ResultSet rs4=ps5.executeQuery();
	if(rs4.next()){
		String sum=rs4.getString("sum(MATTRESSES)");
		int n=Integer.valueOf(sum);
		int sum1=n-t4;
		out.println("<tr>");
		out.print("<td style='text-align:center;'><h4>MATTRESSES</h4></td>");
		out.print("<td style='padding:20px;'>"+sum1+"</td>");
		out.println("</tr>");
	}
	String sql5="select sum(QUEEN_BED) From WAREHOUSE1";
	PreparedStatement ps6=con.prepareStatement(sql5);
	ResultSet rs5=ps6.executeQuery();
	if(rs5.next()){
		String sum=rs5.getString("sum(QUEEN_BED)");
		int n=Integer.valueOf(sum);
		int sum1=n-t5;
		out.println("<tr>");
		out.print("<td style='text-align:center;'><h4>QUEEN-BED</h4></td>");
		out.print("<td style='padding:20px;'>"+sum1+"</td>");
		out.println("</tr>");
	}
	String sql6="select sum(PILLOWS) From WAREHOUSE1";
	PreparedStatement ps7=con.prepareStatement(sql6);
	ResultSet rs6=ps7.executeQuery();
	if(rs6.next()){
		String sum=rs6.getString("sum(PILLOWS)");
		int n=Integer.valueOf(sum);
		int sum1=n-t6;
		out.println("<tr>");
		out.print("<td style='text-align:center;'><h4>PILLOWS</h4></td>");
		out.print("<td style='padding:20px;'>"+sum1+"</td>");
		out.println("</tr>");
	}
	String sql7="select sum(FEATHER_PILLOWS) From WAREHOUSE1";
	PreparedStatement ps8=con.prepareStatement(sql7);
	ResultSet rs7=ps8.executeQuery();
	if(rs7.next()){
		String sum=rs7.getString("sum(FEATHER_PILLOWS)");
		int n=Integer.valueOf(sum);
		int sum1=n-t7;
		out.println("<tr>");
		out.print("<td style='text-align:right;'><h4>FEATHER-PILLOWS</h4></td>");
		out.print("<td style='padding:20px;'>"+sum1+"</td>");
		out.println("</tr>");
	}
	String sql8="select sum(ACCENT_TABLE) From WAREHOUSE1";
	PreparedStatement ps9=con.prepareStatement(sql8);
	ResultSet rs8=ps9.executeQuery();
	if(rs8.next()){
		String sum=rs8.getString("sum(ACCENT_TABLE)");
		int n=Integer.valueOf(sum);
		int sum1=n-t8;
		out.println("<tr>");
		out.print("<td style='text-align:center;'><h4>ACCENT-TABLE</h4></td>");
		out.print("<td style='padding:20px;'>"+sum1+"</td>");
		out.println("</tr>");
	}
	String sql9="select sum(DINING_TABLE) From WAREHOUSE1";
	PreparedStatement ps10=con.prepareStatement(sql9);
	ResultSet rs9=ps10.executeQuery();
	if(rs9.next()){
		String sum=rs9.getString("sum(DINING_TABLE)");
		int n=Integer.valueOf(sum);
		int sum1=n-t9;
		out.println("<tr>");
		out.print("<td style='text-align:center;'><h4>DINING-TABLE</h4></td>");
		out.print("<td style='padding:20px;'>"+sum1+"</td>");
		out.println("</tr>");
	}
	String sql10="select sum(WRITING_DESK) From WAREHOUSE1";
	PreparedStatement ps11=con.prepareStatement(sql10);
	ResultSet rs10=ps11.executeQuery();
	if(rs10.next()){
		String sum=rs10.getString("sum(WRITING_DESK)");
		int n=Integer.valueOf(sum);
		int sum1=n-t10;
		out.println("<tr>");
		out.print("<td style='text-align:center;'><h4>WRITING-DESK</h4></td>");
		out.print("<td style='padding:20px;'>"+sum1+"</td>");
		out.println("</tr>");
	}
	String sql11="select sum(CORNER_DESK) From WAREHOUSE1";
	PreparedStatement ps12=con.prepareStatement(sql11);
	ResultSet rs12=ps12.executeQuery();
	if(rs12.next()){
		String sum=rs12.getString("sum(CORNER_DESK)");
		int n=Integer.valueOf(sum);
		int sum1=n-t11;
		out.println("<tr>");
		out.print("<td style='text-align:center;'><h4>CORNER-DESK</h4></td>");
		out.print("<td style='padding:20px;'>"+sum1+"</td>");
		out.println("</tr>");
	}
	
	}
catch(Exception ex){
	
}
out.println("</table>");
out.println("</div>");
%>
<body>

</body>
<% 


%>
</html>