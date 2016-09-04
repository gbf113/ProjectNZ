/**
 * 
 */
package action;

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
public class RegisterAction implements Action
{
    private HttpServletResponse response;
    private HttpServletRequest request;
    UserInfoDAO userInfoDao = new UserInfoDAO();
    String userName= "";
    String pwd = "";
    int gender;
    String email = "";
    String phoneNum = "";
    String address = "";
	
	public HttpServletResponse getResponse() {
		return response;
	}

	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	@Override
	public String execute() throws Exception
	{
        return SUCCESS;
	}	
	
    public String userRegister() throws Exception
    {
    	request = ServletActionContext.getRequest();
    	
    	try
    	{
    		userName = request.getParameter("username");
    		pwd = request.getParameter("password");
    		gender = Integer.valueOf(request.getParameter("gender"));
    		email = request.getParameter("email");
    		phoneNum = request.getParameter("phoneNum");
    		address = request.getParameter("address");
    		
    		UserInfo userInfo = new UserInfo();
    		userInfo.setUserName(userName);
    		userInfo.setUserPwd(pwd);
    		userInfo.setGender(gender);
    		userInfo.setEmail(email);
    		userInfo.setPhoneNum(phoneNum);
    		userInfo.setAddress(address);
    		
    		userInfoDao.save(userInfo);
    		userInfoDao.getSession().beginTransaction().commit();
    		//userInfoDao.saveUser(userInfo);
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    	
    	return "success";
    }
}
