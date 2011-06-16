<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
						
						<form action="<%=request.getContextPath()%>/addUser.action"
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
									<td>
										<div align="center">
											邮&nbsp;&nbsp;&nbsp;箱：										</div>									</td>
									<td>
										<div align="center">
											<input type="text" name="userEmail" size="15" />
										</div>									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											电&nbsp;&nbsp;&nbsp;话：										</div>									</td>
									<td>
										<div align="center">
											<input type="text" name="userPhone" size="15" />
										</div>									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											Q&nbsp;Q：										</div>									</td>
									<td>
										<div align="center">
											<input type="text" name="userQq" size="15" />
										</div>									</td>
								</tr>
								<tr>
                   		 			<td><div align="center">
											头&nbsp;&nbsp;&nbsp;像：										
											</div>									
									</td>
									<td>
									<div align="center">
									
					 <img id="face" src="pictures/head/01.gif" width="32" height="32" alt="个人形象代表" />
                      <select  name="userImage" onChange="document.images['face'].src='pictures/head/'+options[selectedIndex].value+'.gif';" size="1">
                        <option selected value="01" select>头像1</option>
                        <option value="02">头像2</option>
                        <option value="03">头像3</option>
                        <option value="04">头像4</option>
                        <option value="05">头像5</option>
                        <option value="06">头像6</option>
                        <option value="07">头像7</option>
                        <option value="08">头像8</option>
                        <option value="09">头像9</option>
                        
                      </select>
					  </div>	
					  </td>
						</tr>
								<tr>
									<td colspan="2" align="center">
									    <input type="submit" value="用户注册">
									            
							       	</td>
		
								
							  </tr>
						  </table>
						</form>
		
	</body>
</html>

