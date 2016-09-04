<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
		<title>Car Rent</title>
		
		<script type="text/javascript">
			function reSet()
			{
				document.getElementById('username').value="";
				document.getElementById('password').value="";
			}
			
			function login()
			{
			    document.getElementById("loginForm").submit();
			}
		</script>		
	</head>
	
	<body>
	    <div>
	        <form id="loginForm" action="userLogin.action" method="post">
			    <table width="30%" border="0" cellspacing="0" cellpadding="0">
					<tr>
					    <td width="30%">User Name: </td>
					    <td width="70%"><input type="text" name="username" id="username" /></td>	        
			        </tr>
			        
			        <tr>
					    <td>Password:  </td>
					    <td><input type="password" name="password" id="password" /></td>		        
			        </tr>
			        
			        <tr>
			            <td><input type="button" value="Login" onClick="login()"></td>
			            <td>
			                <input type="reset" value="Reset" onclick="reSet()">
			                <a href="register.jsp">Register</a>
			            </td>
			        </tr>
			    </table>
			</form>
	    </div>
	    
	    <div>
	        <input type ="hidden" name="status" value="Successful !">
	    </div>	    
	</body>
</html>
