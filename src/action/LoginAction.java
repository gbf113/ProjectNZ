/**
 * 
 */
package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;

import dao.UserInfoDAO;
import vo.UserInfo;

/**
 * @author Administrator
 *
 */
public class LoginAction implements Action
{
    private HttpServletResponse response;
    private HttpServletRequest request;
    UserInfoDAO userInfoDao = new UserInfoDAO();
    String userName= "";
    String pwd = "";
    String test = "";
    
	@Override
	public String execute() throws Exception
	{
        return SUCCESS;
	}	
	
	public String userLogin() throws Exception
	{
		request = ServletActionContext.getRequest();
		
		try
		{
			UserInfo userInfo = new UserInfo();
			
    		userName = request.getParameter("username");
    		pwd = request.getParameter("password");
    		
    		userInfo.setUserName(userName);
    		userInfo.setUserPwd(pwd);
    		
    		List<UserInfo> list = userInfoDao.userLogin(userInfo);
    		
    		if(list.size() == 1)
    		{
    			return "success";
    		}
    		else
    		{
    			return "error";
    		}
		}
		
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    	
    	return null;
	}
}
