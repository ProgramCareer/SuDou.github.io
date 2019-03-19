package com.web.control;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Tadmin;
import com.service.TadminService;
@Controller
public class TadminController
{
       

    @Autowired
	private TadminService tadminService;
	 
 
    @RequestMapping(value="/adminAdd")
    public String adminAdd(Tadmin admin,HttpServletRequest request) throws Exception
	{
    	tadminService.insertTadmin(admin);
    	request.setAttribute("message","操作成功");
		request.setAttribute("path","adminManage.action");
		return "common/succeed.jsp";
	}
	
	
    @RequestMapping(value="/adminManage")
	public String adminManage(HttpServletRequest request) throws Exception
	{
		List adminList=tadminService.queryTadminList(new Tadmin());
		request.setAttribute("adminList", adminList);
		return "admin/index/adminManage.jsp";
	}
	
    @RequestMapping(value="/adminDel")
	public String adminDel(int userId,HttpServletRequest request) throws Exception
	{
    	tadminService.deleteTadmin(userId);
    	request.setAttribute("message","操作成功");
		request.setAttribute("path","adminManage.action");
		return "common/succeed.jsp";
	}
	
	
	
	
	@RequestMapping(value="/tadminList")
	public String tadminList(HttpServletRequest request) throws Exception
	{
		Tadmin tadmin = new Tadmin();
		List tadminList=tadminService.queryTadminList(tadmin);
		request.setAttribute("tadminList", tadminList);
		return "/admin/tadmin/tadmin_list.jsp";
	}
 
	@RequestMapping(value="/tadminAdd")
	public String tadminAdd(Tadmin tadmin,HttpServletRequest request) throws Exception
	{
	    tadminService.insertTadmin(tadmin);
		request.setAttribute("message","操作成功");
		request.setAttribute("path","tadminList.action");
		return "common/succeed.jsp";
	}
	@RequestMapping(value="/tadminDel")
	public String tadminDel(HttpServletRequest request) throws Exception
	{
		int id = Integer.parseInt(request.getParameter("id"));
		 
		tadminService.deleteTadmin(id);
		request.setAttribute("message","操作成功");
		request.setAttribute("path","tadminList.action");
		 
		return "common/succeed.jsp";
	}
	
	@RequestMapping(value="/tadminEditPre")
	public String tadminEditPre(HttpServletRequest request) throws Exception
	{
		int id = Integer.parseInt(request.getParameter("id"));
		Tadmin tadmin=tadminService.queryTadminById(id);
	    request.setAttribute("tadmin", tadmin);
		return "/admin/tadmin/tadmin_edit.jsp";
	}
	
	@RequestMapping(value="/tadminEdit")
	public String tadminEdit(Tadmin tadmin,HttpServletRequest request) throws Exception
	{
		tadminService.updateTadmin(tadmin);
		request.setAttribute("message","操作成功");
		request.setAttribute("path","tadminList.action");
		return "common/succeed.jsp";
	}

 


}
