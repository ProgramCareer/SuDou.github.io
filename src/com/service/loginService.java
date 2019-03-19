package com.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.directwebremoting.WebContext;
import org.directwebremoting.WebContextFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.Tadmin;
import com.model.Tuser;
@Service
public class loginService
{
	@Autowired
	private TadminService tadminService;
	@Autowired
    private TuserService tuserService;
	 
	public static final String RANDOMCODEKEY = "RANDOMVALIDATECODEKEY";
	 
	
	
	public String login(String userName,String userPw,String randomCode,int userType)
	{
		System.out.println("userType"+userType);
		String result="no";
		try
		{
			Thread.sleep(700);
		
		
		
		
		if(userType==0)//系统管理员登陆
		{
			WebContext ctx = WebContextFactory.get(); 
			HttpSession session=ctx.getSession(); 
			String code=(String) session.getAttribute(RANDOMCODEKEY);
 
			Tadmin admin = new Tadmin();
			admin.setUsername(userName);
			admin.setUserpw(userPw);
			List adminList=tadminService.queryTadminList(admin);
			if(adminList.size()==0)
			{
				 result="no";
			}
			else
			{
				 
				 
				 Tadmin admins=(Tadmin)adminList.get(0);
				 session.setAttribute("userType", 0);
	             session.setAttribute("admin", admins);
	             result="yes";
			}
		}
		} catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

    public String adminPwEdit(String userPwNew)
    {
		System.out.println("DDDD");
    	try 
		{
			Thread.sleep(700);
			WebContext ctx = WebContextFactory.get(); 
			HttpSession session=ctx.getSession(); 
			 
			Tadmin admin=(Tadmin)session.getAttribute("admin");
			admin.setUserpw(userPwNew);
			
			tadminService.updateTadmin(admin);
			session.setAttribute("admin", admin);
		} 
		catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return "yes";
    }
	
    public String jiance(String userName)
    {
    	System.out.println("DDDD");
    	try 
		{
			Thread.sleep(700);
			Tuser user = new Tuser();
			user.setUsername(userName);
			List list=  tuserService.queryTuserList(user);
			if(list.size()>0)
			{
				return "no";
			}
			else
			{
				return "yes";
			}
		} 
		catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 
		return "no";
    }
    
    
}
