<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="datastructure.*,java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%!ArrayList<Employee> emp=new ArrayList<Employee>();
%>
<%emp=(ArrayList<Employee>)session.getAttribute("Employee");
%>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Welcome_Admin</title>
  <link rel="stylesheet" type="text/css" href="css/user_info.css" />
  <link rel="stylesheet" type="text/css" href="css/button_style.css" />
</head>
<body>
<div> <jsp:include page="admin_header.jsp"/></div>
<div class=info_box>
<table width="100%">
<col width="80%"><col width="20%">
<tr>
<td><input type='text' name='epysearchcontent' size="75"/></td>
<td><input type=button value=Search  class="btn-style" onclick="" /></td>
</tr>
</table>
</div>
<div class=info_box>
<table width="100%">
<col width="25%"><col width="25%"><col width="25%"><col width="25%">

<tr>
<td><a href="admin_employee_info.jsp" class=link_name>a</a></td>
<td><a href="employee_info.jsp" class=link_name>b</a></td>
<td><a href="employee_info.jsp" class=link_name>c</a></td>
<td><a href="employee_info.jsp" class=link_name>d</a></td>
</tr>
</table>
</div>
<div class=info_box>
<input type="button" name="add" class="btn-style" value="Add" onclick="window.location.href('addform.jsp')"/>
</div>

</body>
</html>




