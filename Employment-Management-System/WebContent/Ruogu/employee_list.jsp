<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<td><h3>Name</h3></td>
<td><h3>Name</h3></td>
<td><h3>Name</h3></td>
<td><h3>Name</h3></td>
</tr>
<tr>
<td><p>a</p></td>
<td><p>b</p></td>
<td><p>c</p></td>
<td><p>d</p></td>
</tr>
</table>
</div>
<div class=info_box>
<form action=change.jsp method=post name=emp >
<input type="button" name="change" class="btn-style" value="Add" onclick="javascript:emp.submit();"/>
</div>
</form>
</body>
</html>




