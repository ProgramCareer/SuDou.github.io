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
import com.model.Tiwen;
import com.model.Tuser;
import com.service.TeacherService;
import com.service.TiwenService;
@Controller
public class TiwenController
{
       

        @Autowired
	private TiwenService tiwenService;
        @Autowired
    	private TeacherService teacherService;
 
        @RequestMapping(value="/totiwenQian")
        public String totiwenQian(int tid,HttpServletRequest request) throws Exception
    	{
        
            HttpSession session = request.getSession();
    		Tuser user=(Tuser)session.getAttribute("user");
    		Tiwen tiwen = new Tiwen();
    		tiwen.setTid(tid);
    		tiwen.setUid(user.getId());
    		List tiwenList=tiwenService.queryTiwenList(tiwen);
    		request.setAttribute("tiwenList", tiwenList);
    		request.setAttribute("tid", tid);
    		return "qiantai/teacher/tiwen.jsp";
    	}
    	
        @RequestMapping(value="/tiwenMana")
    	public String tiwenMana(HttpServletRequest request) throws Exception
    	{
        	 HttpSession session = request.getSession();
        	Tuser user=(Tuser)session.getAttribute("user");
        	Tiwen tiwen = new Tiwen();
    		tiwen.setTid(user.getId());
    		List tiwenList=tiwenService.queryTiwenList(tiwen);
    		request.setAttribute("tiwenList", tiwenList);
    		return "admin/tiwen/tiwenMana.jsp";
    	}
        @RequestMapping(value="/tiwenDetail")
    	public String tiwenDetail(int id,HttpServletRequest request) throws Exception
    	{
    	 
    		Tiwen tiwen=tiwenService.queryTiwenById(id);
    		request.setAttribute("tiwen", tiwen);
    		return "admin/tiwen/tiwenDetail.jsp";
    	}
        @RequestMapping(value="/tiwenAdd")
    	public String tiwenAdd(Tiwen tiwen,HttpServletRequest request) throws Exception
    	{
    		 
        	HttpSession session = request.getSession();
      		Tuser user=(Tuser)session.getAttribute("user");
    		Teacher teacher = teacherService.queryTeacherById(tiwen.getTid());
    		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    		String twsj = format.format(new Date());
    		tiwen.setTname(teacher.getName());
    		tiwen.setUname(user.getUserrealname());
    		tiwen.setUid(user.getId());
    		tiwen.setTwsj(twsj);
    		tiwenService.insertTiwen(tiwen);
    		
    		request.setAttribute("message","操作成功");
    		request.setAttribute("path","totiwenQian.action?tid=" + tiwen.getTid());
    		return "common/succeed.jsp";
    	}
        @RequestMapping(value="/tiwenDel")
    	public String tiwenDel(int id,HttpServletRequest request) throws Exception
    	{
        	tiwenService.deleteTiwen(id);
        	
        	request.setAttribute("message","操作成功");
    		request.setAttribute("path","tiwenMana.action");
    		return "common/succeed.jsp";
    	}
        @RequestMapping(value="/totiwenEdit")
    	public String totiwenEdit(int id,HttpServletRequest request) throws Exception
    	{
        	Tiwen tiwen=tiwenService.queryTiwenById(id);
    		request.setAttribute("tiwen", tiwen);
    		return "admin/tiwen/tiwenEdit.jsp";
    	}
        @RequestMapping(value="/tiwenEdit")
    	public String tiwenEdit(Tiwen tiwen,HttpServletRequest request) throws Exception
    	{
    		 
    		Tiwen otiwen=tiwenService.queryTiwenById(tiwen.getId());
    		otiwen.setReplays(tiwen.getReplays());
    		tiwenService.updateTiwen(otiwen);
    		
    		request.setAttribute("message","操作成功");
    		request.setAttribute("path","tiwenMana.action");
    		return "common/succeed.jsp";
    	}
    	
    	
 


}
