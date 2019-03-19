package com.web.control;

import com.model.Tgonggao;
import com.service.TgonggaoService;

import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class TgonggaoController
{
       

        @Autowired
	private TgonggaoService tgonggaoService;
	 
 
        @RequestMapping(value="/gonggaoAdd")
        public String gonggaoAdd(Tgonggao tgonggao,HttpServletRequest request) throws Exception
    	{
        	tgonggao.setGonggaodata(new Date().toLocaleString());
        	tgonggaoService.insertTgonggao(tgonggao);
        	request.setAttribute("message","操作成功");
    		request.setAttribute("path","gonggaoMana.action");
    		return "common/succeed.jsp";
    	}
    	
        @RequestMapping(value="/gonggaoMana")
    	public String gonggaoMana(HttpServletRequest request) throws Exception
    	{
    		List gonggaoList =tgonggaoService.queryTgonggaoList(new Tgonggao());
    		request.setAttribute("gonggaoList", gonggaoList);
    		return "admin/gonggao/gonggaoMana.jsp";
    	}
    	
        @RequestMapping(value="/gonggaoList")
    	public String gonggaoList(HttpServletRequest request) throws Exception
    	{
        	List gonggaoList =tgonggaoService.queryTgonggaoList(new Tgonggao());
    		request.setAttribute("gonggaoList", gonggaoList);
    		return "qiantai/gonggao/gonggaoList.jsp";
    	}
        @RequestMapping(value="/gonggaoDel")
    	public String gonggaoDel(int gonggaoId,HttpServletRequest request) throws Exception
    	{
        	tgonggaoService.deleteTgonggao(gonggaoId);
        	request.setAttribute("message","操作成功");
    		request.setAttribute("path","gonggaoMana.action");
    		return "common/succeed.jsp";
    	}
    	
        @RequestMapping(value="/gonggaoDetail")
    	public String gonggaoDetail(int gonggaoId,HttpServletRequest request) throws Exception
    	{
    		Tgonggao gonggao=tgonggaoService.queryTgonggaoById(gonggaoId);
    		request.setAttribute("gonggao", gonggao);
    		return "admin/gonggao/gonggaoDetail.jsp";
    	}
        @RequestMapping(value="/gonggaoDetailQian")
    	public String gonggaoDetailQian(int gonggaoId,HttpServletRequest request) throws Exception
    	{
        	Tgonggao gonggao=tgonggaoService.queryTgonggaoById(gonggaoId);
    		request.setAttribute("gonggao", gonggao);
    		return "qiantai/gonggao/gonggaoDetailQian.jsp";
    	}


}
