package com.web.control;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Teacher;
import com.model.Tuser;
import com.model.Yuyue;
import com.service.TeacherService;
import com.service.YuyueService;
@Controller
public class YuyueController
{
       

        @Autowired
	private YuyueService yuyueService;
        @Autowired
    	private TeacherService teacherService;
        @RequestMapping(value="/yuyueMana")
        public String yuyueMana(HttpServletRequest request) throws Exception
    	{
        	HttpSession session = request.getSession();
    		Tuser user = (Tuser) session.getAttribute("user");
    		Yuyue yuyue = new Yuyue();
    		yuyue.setTid(user.getId());
    		 
    		List yuyueList=yuyueService.queryYuyueList(yuyue);
    		request.setAttribute("yuyueList", yuyueList);
    		return "admin/yuyue/yuyueMana.jsp";
    	}
    	 
    	
        @RequestMapping(value="/yuyueMe")
    	public String yuyueMe(HttpServletRequest request) throws Exception
    	{
        	HttpSession session = request.getSession();
        	Tuser user = (Tuser) session.getAttribute("user");
        	Yuyue yuyue = new Yuyue();
    		yuyue.setUid(user.getId());
    		 
    		List yuyueList=yuyueService.queryYuyueList(yuyue);
    		request.setAttribute("yuyueList", yuyueList);
    		return "qiantai/order/myOrder.jsp";
    	}
    	
        @RequestMapping(value="/yuyueDetail")
    	public String yuyueDetail(int id,HttpServletRequest request) throws Exception
    	{
    		 
    		Yuyue yuyue=yuyueService.queryYuyueById(id);
    		request.setAttribute("yuyue", yuyue);
    		return "admin/yuyue/yuyueDetail.jsp";
    	}
        @RequestMapping(value="/yuyueAdd")
    	public String yuyueAdd(Yuyue yuyue,HttpServletRequest request) throws Exception
    	{
        	HttpSession session = request.getSession();
        	Tuser user = (Tuser) session.getAttribute("user");
    		Teacher teacher = teacherService.queryTeacherById(yuyue.getTid());
    		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    		String xdsj = format.format(new Date());
    		yuyue.setXdsj(xdsj);
    		yuyue.setTname(teacher.getName());
    		yuyue.setUid(user.getId());
    		yuyue.setUname(user.getUserrealname());
    		yuyue.setTel(teacher.getTel());
    		yuyueService.insertYuyue(yuyue);
    		return "qiantai/teacher/yuyuesuccess.jsp";
    		
    	}
        @RequestMapping(value="/yuyueDel")
    	public String yuyueDel(int id,HttpServletRequest request) throws Exception
    	{
        	yuyueService.deleteYuyue(id);
        	
        	request.setAttribute("message","删除成功");
			request.setAttribute("path","yuyueMana.action");
			 return "common/succeed.jsp";
			  
    	}
        @RequestMapping(value="/yuyueDelQian")
    	public String yuyueDelQian(int id,HttpServletRequest request) throws Exception
    	{
        	yuyueService.deleteYuyue(id);
        	
        	request.setAttribute("message","操作成功");
			request.setAttribute("path","yuyueMe.action");
			 return "common/succeed.jsp";
			 
    	}
    	 
        @RequestMapping(value="/toyuyueEdit")
    	public String toyuyueEdit(int id,HttpServletRequest request) throws Exception
    	{
    		 
    		Yuyue yuyue=yuyueService.queryYuyueById(id);
    		request.setAttribute("yuyue", yuyue);
    		return "admin/yuyue/yuyueEdit.jsp";
    	}
        @RequestMapping(value="/yuyueEdit")
    	public String yuyueEdit(Yuyue yuyue,HttpServletRequest request) throws Exception
    	{
        	yuyueService.updateYuyue(yuyue);
        	
        	request.setAttribute("message","操作成功");
			request.setAttribute("path","yuyueMana.action");
			 return "common/succeed.jsp";
    	}
 
	 


}
