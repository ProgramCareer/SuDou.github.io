package com.web.control;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Tliuyan;
import com.model.Tuser;
import com.service.TliuyanService;
@Controller
public class TliuyanController
{
       

        @Autowired
	private TliuyanService tliuyanService;
	 
        @RequestMapping(value="/liuyanMana")
        public String liuyanMana(HttpServletRequest request) throws Exception
    	{
    		List liuyanList=tliuyanService.queryTliuyanList(new Tliuyan());
    		request.setAttribute("liuyanList", liuyanList);
    		return "admin/liuyan/liuyanMana.jsp";
    	}
        @RequestMapping(value="/liuyanAdd")
    	public String liuyanAdd(Tliuyan liuyan,HttpServletRequest request) throws Exception
    	{
    		 
    		liuyan.setLiuyandate(new Date().toLocaleString());
    		HttpSession session = request.getSession();
    		
    		if(session.getAttribute("user")!=null)
    		{
    			Tuser user=(Tuser)session.getAttribute("user");
    			liuyan.setLiuyanuser(user.getUsername());
    		}
    		
    		
    		tliuyanService.insertTliuyan(liuyan);
    		request.setAttribute("message","留言成功");
    		request.setAttribute("path","liuyanAll.action");
    		return "common/succeed.jsp";
    		
    	}
    	
        @RequestMapping(value="/liuyanDel")
    	public String liuyanDel(int liuyanId,HttpServletRequest request) throws Exception
    	{
        	 
        	tliuyanService.deleteTliuyan(liuyanId);
        	
        	request.setAttribute("message","留言删除成功");
    		request.setAttribute("path","liuyanMana.action");
    		return "common/succeed.jsp";
    		 
    	}
    	
        @RequestMapping(value="/liuyanAll")
    	public String liuyanAll(HttpServletRequest request) throws Exception
    	{
        	List liuyanList=tliuyanService.queryTliuyanList(new Tliuyan());
        	request.setAttribute("liuyanList", liuyanList);
    		return "qiantai/liuyan/liuyanAll.jsp";
    	}
    	
	 
 


}
