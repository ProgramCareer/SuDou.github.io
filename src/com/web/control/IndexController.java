package com.web.control;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Teacher;
import com.service.TeacherService;
@Controller
public class IndexController
{
       

        @Autowired
	private TeacherService teacherService;
        @RequestMapping(value="/index")
        public String index(HttpServletRequest request) throws Exception
    	{
    	 
    		List teacherList = teacherService.queryTeacherList(new Teacher());
    		if(teacherList!=null && teacherList.size()>5)
    		{
    			teacherList=teacherList.subList(0, 5);
    		}
    		request.setAttribute("teacherList", teacherList);
    		return "qiantai/index.jsp";
    	}
        @RequestMapping(value="/listteacher")
    	public String listteacher(HttpServletRequest request) throws Exception
    	{
        	List teacherList = teacherService.queryTeacherList(new Teacher());
    		request.setAttribute("teacherList", teacherList);
    		return "qiantai/teacher/teacherlist.jsp";
    	}
     
    	
    	 


}
