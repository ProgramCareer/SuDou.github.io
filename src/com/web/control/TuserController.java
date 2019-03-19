package com.web.control;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Teacher;
import com.model.Tuser;
import com.service.TeacherService;
import com.service.TuserService;
@Controller
public class TuserController
{
       

        @Autowired
	    private TuserService tuserService;
        @Autowired
    	private TeacherService teacherService;
        @RequestMapping(value="/userReg")
        public String userReg(Tuser user,HttpServletRequest request) throws Exception
    	{
        	tuserService.insertTuser(user);
        	
        	request.setAttribute("message","注册成功");
    		request.setAttribute("path","qiantai/default.jsp");
    		return "common/succeed.jsp";
    		
    		 
    	}
        
        @RequestMapping(value="/userEdit")
    	public String userEdit(Tuser user,HttpServletRequest request) throws Exception
    	{
    	 
        	tuserService.updateTuser(user);
        	 HttpSession session = request.getSession();
    		session.setAttribute("user", user);
    		
    		request.setAttribute("message","修改成功");
    		request.setAttribute("path","qiantai/userinfo/userXinxi.jsp");
    		return "common/succeed.jsp";
    		 
    	}
    	
        @RequestMapping(value="/userInfoUpdate")
    	public String userInfoUpdate(Tuser user,HttpServletRequest request) throws Exception
    	{
        	 tuserService.updateTuser(user);
			 HttpSession session = request.getSession();
			session.setAttribute("user", user);
			request.setAttribute("message","修改成功");
			request.setAttribute("path","admin/user/userInfo.jsp");
			return "common/succeed.jsp";
    		 
    	}
    	
    	
        @RequestMapping(value="/userLogin")
    	public String userLogin(HttpServletRequest request) throws Exception
    	{
        	String userName = request.getParameter("userName");
        	String userPw = request.getParameter("userPw");
        	Tuser user = new Tuser();
        	user.setUsername(userName);
        	user.setUserpw(userPw);
    		 
    		List userList=tuserService.queryTuserList(user);
    		if(userList.size()==0)
    		{
    			request.setAttribute("message","用户名或密码错误");
    			request.setAttribute("path","qiantai/default.jsp");
    		}
    		else
    		{
    			 HttpSession session = request.getSession();
    			 user=(Tuser)userList.get(0);
    			 session.setAttribute("user", user);
    			
    			 if(user.getUtype()==1){
    				 
    				 session.setAttribute("userType",  user.getUtype());
    				 request.setAttribute("path","admin/index.jsp");
    				 
    			 }else{
    				 session.setAttribute("userType",  "23");
    				 request.setAttribute("path","qiantai/default.jsp");
    			 }
    			 
    			 
    			
    		}
    		return "common/succeed.jsp";
    	}
    	
        @RequestMapping(value="/userLogout")
    	public String userLogout(HttpServletRequest request) throws Exception
    	{
        	 HttpSession session = request.getSession();
    		
    		int  userType =  Integer.parseInt(session.getAttribute("userType")==null?"0":session.getAttribute("userType")+"");
    		 if(userType==1 || userType==23){
    			 request.setAttribute("path","qiantai/default.jsp");
    		 }else{
    			 request.setAttribute("path","admin/login.jsp");
    		 }
    		 session.setAttribute("userType",  null);
    		 session.setAttribute("user",  null);
    	 
    		 return "common/succeed.jsp";
    	}
    	
    	
    	
    	
    	
        @RequestMapping(value="/userDel")
    	public String userDel(int userId,HttpServletRequest request) throws Exception
    	{
        	tuserService.deleteTuser(userId);
        	
        	request.setAttribute("message","删除成功");
			request.setAttribute("path","userMana.action");
			 return "common/succeed.jsp";
    	}
    	
        @RequestMapping(value="/userXinxi")
    	public String userXinxi(int userId,HttpServletRequest request) throws Exception
    	{
    		Tuser user=tuserService.queryTuserById(userId);
    		 
    		request.setAttribute("user", user);
    		return "admin/order/userXinxi.jsp";
    	}
    	
        @RequestMapping(value="/userMana")
    	public String userMana(HttpServletRequest request) throws Exception
    	{
        	Tuser user = new Tuser();
        	user.setUtype(0);
    		List userList=tuserService.queryTuserList(user);
    	 
    		request.setAttribute("userList", userList);
    		return "admin/user/userMana.jsp";
    	}
    	
        @RequestMapping(value="/toPublicInfo")
    	public String toPublicInfo(HttpServletRequest request) throws Exception
    	{
        	HttpSession session = request.getSession();
    		Tuser user = (Tuser) session.getAttribute("user");
    		Teacher teacher = teacherService.queryTeacherById(user.getId());
    		 
    		if(teacher==null){
    			teacher = new Teacher();
    			teacher.setName(user.getUserrealname());
    			teacher.setTel(user.getUsertel());
    		}
    		request.setAttribute("teacher", teacher);
    		return "admin/teacher/teacherAdd.jsp";
    	}
    	
    
 


}
