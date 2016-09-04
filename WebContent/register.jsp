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
				document.getElementById('c_pwd').value="";
				document.getElementById('email').value="";
				document.getElementById('phoneNum').value="";
				document.getElementById('address').value="";
			}
			
			function submitForm()
			{
			    var userName = document.getElementById('username').value;
			    var pwd = document.getElementById('password').value;
			    var gender = document.getElementById('gender').value;
			    var email = document.getElementById('email').value;
			    var phoneNum = document.getElementById('phoneNum').value;
			    var address = document.getElementById('address').value;
			    
                document.getElementById("regForm").submit();
			}
			
		</script>			
	</head>
	
	<body>
	    <div>
	        <form id="regForm" action="userRegister.action" method="post">
			    <table width="30%" border="0" cellspacing="0" cellpadding="0" >
			        <tr>
					    <td width="30%">User Name:  </td>
					    <td width="70%"><input type="text" name="username" id="username" /></td>		        
			        </tr>
			        
			        <tr>
			            <td>Password:  </td>
			            <td><input type="password" name="password" id="password" /></td>
			        </tr>
			        
			        <tr>
			            <td>Confirm Password:  </td>
			            <td><input type="password" name="c_pwd" id="c_pwd" /></td>
			        </tr>	
			        
			        <tr>
			            <td>Gender:  </td>
			            <td>
			                <select name="gender" id="gender">
			                   <option value="0">-- Select --</option>
			                   <option value="1">Male</option>
			                   <option value="2">Female</option>
			                </select>
			            </td>
			        </tr>
			        
			        <tr>
			            <td>Picture:  </td>
			            <td> </td>
			        </tr>	
			        
			        <tr>
			            <td>Email:  </td>
			            <td><input type="text" name="email" id="email" /></td>
			        </tr>
			        
			        <tr>
			            <td>Phone Number:  </td>
			            <td><input type="text" name="phoneNum" id="phoneNum" /></td>
			        </tr>	
			        
			        <tr>
			            <td>Address:  </td>
			            <td><input type="text" name="address" id="address" /></td>
			        </tr>	        	        	                	                
			        
			        <tr>
			            <td><input type="button" name="sub_mit" id="sub_mit" value="Submit" onClick="submitForm()"></td>
			            <td><input type="reset" value="Reset" onClick="reSet()"></td>
			        </tr>
			    </table>
		    </form>	    
	    </div>
	    
	</body>
</html>
