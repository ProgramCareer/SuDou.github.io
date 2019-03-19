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
@Controller
public class TeacherController
{
       

        @Autowired
	private TeacherService teacherService;
        @RequestMapping(value="/teacherMana")
        public String teacherMana(HttpServletRequest request) throws Exception
    	{
    		 
    		List teacherList=teacherService.queryTeacherList(new Teacher());
    		request.setAttribute("teacherList", teacherList);
    		return "admin/teacher/teacherMana.jsp";
    	}
        @RequestMapping(value="/teacherDetail")
    	public String teacherDetail(int id,HttpServletRequest request) throws Exception
    	{
    	 
    		Teacher teacher=teacherService.queryTeacherById(id);
    		request.setAttribute("teacher", teacher);
    		return "admin/teacher/teacherDetail.jsp";
    	}
    	
        @RequestMapping(value="/teacherDetailQian")
    	public String teacherDetailQian(int id,HttpServletRequest request) throws Exception
    	{
        	Teacher teacher=teacherService.queryTeacherById(id);
    		request.setAttribute("teacher", teacher);
    		return "qiantai/teacher/teacherDetail.jsp";
    	}
    	
        @RequestMapping(value="/teacherAdd")
    	public String teacherAdd(Teacher teacher,HttpServletRequest request) throws Exception
    	{
            HttpSession session = request.getSession();
    		Tuser user=(Tuser)session.getAttribute("user");
    		if(teacher.getId()==null){
    			teacher.setId(user.getId());
    			teacherService.insertTeacher(teacher);
    		}else{
    			teacherService.updateTeacher(teacher);
    		}
    		request.setAttribute("message","操作成功");
    		request.setAttribute("path","toPublicInfo.action");
    		return "common/succeed.jsp";
    		 
    		
    	}
        @RequestMapping(value="/teacherDel")
    	public String teacherDel(int id,HttpServletRequest request) throws Exception
    	{
        	teacherService.deleteTeacher(id);
        	request.setAttribute("message","操作成功");
    		request.setAttribute("path","teacherMana.action");
    		return "common/succeed.jsp";
    	}
        @RequestMapping(value="/toteacherEdit")
    	public String toteacherEdit(int id,HttpServletRequest request) throws Exception
    	{
        	Teacher teacher=teacherService.queryTeacherById(id);
    		request.setAttribute("teacher", teacher);
    		return "admin/teacher/teacherEdit.jsp";
    	}
        @RequestMapping(value="/teacherEdit")
    	public String teacherEdit(Teacher teacher,HttpServletRequest request) throws Exception
    	{
    		 
        	teacherService.updateTeacher(teacher);
        	request.setAttribute("message","操作成功");
    		request.setAttribute("path","teacherMana.action");
    		return "common/succeed.jsp";
    	}
	 


}
