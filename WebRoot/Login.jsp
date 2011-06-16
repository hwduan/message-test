<%@ page contentType="text/html; charset=utf-8" language="java"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>留言板系统</title>
		<link rel="stylesheet" type="text/css" href="css/css.css" />
		<link rel="stylesheet" type="text/css" href="css/mycss.css" />
</head>

	<body leftmargin="0" bottommargin="0">
	<table border="0" cellspacing=0 cellpadding=0 align="center" width="838" class="grayline">
			<tr>
				<td width="838"><img border="0" width="758" src="${pageContext.request.contextPath}/images/tops.gif"></td>
			</tr>
	</table>
	<table border="0" cellspacing=0 cellpadding=0 align="center" width="758" height="233"" >
      <tr>
        <td width="758" height="196" align="center"><p>
        <a href=""><img src="${pageContext.request.contextPath}/images/read.gif" border="0"></a> 
        <a href=""><img src="${pageContext.request.contextPath}/images/write.gif" border="0"></a>
        <a href=""><img src="${pageContext.request.contextPath}/images/loginout.gif" border="0"></a></p>
     <table width="760" height="467" border="1">
              <tr>
                <td width="204" height="389">
                <form action="<%=request.getContextPath()%>/getUserByID.action"
							method="post">
                    <input type="image" name="imageField" src="file:///E|/阿里巴巴/参考资料/guestbook/guestbook/WebRoot/images/face/pic6.gif">
                    <br>
                      用户
                      <input type="text" name="textfield">
                      <br>
                      <br>
                      邮箱
                      <input type="text" name="textfield2">
                      <br>
                      <br>
                      <br>
                    
                </form></td>
                <td width="540"> 欢迎使用留言版系统！</td>
              </tr>
          </table></td>
      </tr>
      <tr>
        <td height=37 background="${pageContext.request.contextPath}/images/down.gif"> Copyright © 2011 dhw版权所有 </td>
      </tr>
    </table>
	</body>
</html>

