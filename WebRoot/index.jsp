<%@ page contentType="text/html; charset=utf-8" language="java"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>留言板系统</title>
		<link rel="stylesheet" type="text/css" href="css/css.css" />
		<link rel="stylesheet" type="text/css" href="css/mycss.css" />
	<style type="text/css">
<!--
body {
	margin-left: 460px;
	margin-top: 150px;
}
-->
</style></head>

	<body>
	
		
						<!-- 登陆-->
						
						<form action="<%=request.getContextPath()%>/userLogin.action"
							method="post">
							<table width="47%" height="130"
								background="pictures/loginbg.gif">
								<tr>
									<td width="34%">
										<div align="center">
											用户名：
											<br />
								  </div>									</td>
									<td width="66%">
										<div align="center">
											<input type="text" name="userName" size="15" />
								  </div>									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											密&nbsp;&nbsp;&nbsp;码：										</div>									</td>
									<td>
										<div align="center">
											<input type="password" name="userPassword" size="15" />
										</div>									</td>
								</tr>
								
								<tr>
									<td colspan="2" align="center">
									    <a href="Register.jsp">用户注册</a>
									              
									   <input type="submit" value="系统登陆">
							       	</td>
		
								
							  </tr>
						  </table>
						</form>
		
	</body>
</html>

