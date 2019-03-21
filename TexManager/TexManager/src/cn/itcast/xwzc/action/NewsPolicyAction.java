package cn.itcast.xwzc.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

import cn.itcast.core.action.BaseAction;
import cn.itcast.core.constant.Constant;
import cn.itcast.core.util.QueryHelper;
import cn.itcast.nsfw.info.entity.Info;
import cn.itcast.nsfw.info.service.InfoService;
import cn.itcast.nsfw.user.entity.User;
/**
 * 
 * 新闻政策模块的查询
 * @author 胡涵睿
 *
 */

public class NewsPolicyAction extends BaseAction {

	@Resource
	private InfoService infoService;
	
	public String newsUI(){
	  //加载信息列表
	  //加载分类集合
       ActionContext.getContext().getContextMap().put("infoTypeMap", Info.INFO_TYPE_MAP);
	   QueryHelper queryHelper1 = new QueryHelper(Info.class, "i");
	  //对信息集合进行筛选,得到非通知公告类型的信息
	   queryHelper1.addCondition("type != ?", Info.INFO_TYPE_TZGG);
				
	   queryHelper1.addOrderByProperty("i.createTime", QueryHelper.ORDER_BY_DESC);
	   List<Info> infoList = infoService.getPageResult(queryHelper1, 1, 10).getItems();
	   ActionContext.getContext().getContextMap().put("infoList", infoList);
				
	   User user = (User) ServletActionContext.getRequest().getSession().getAttribute(Constant.USER);
	   pageResult = infoService.getPageResult(queryHelper1, getPageNo(), getPageSize());
		return "newsUI";
	}
	
}
