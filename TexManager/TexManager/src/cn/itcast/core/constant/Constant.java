package cn.itcast.core.constant;

import java.util.HashMap;
import java.util.Map;

public class Constant {
	
	//系统中用户在session中的标识符
	public static String USER = "SYS_USER";
	
	/*----------------------系统权限集合--------------------------*/
	public static String PRIVILEGE_TJBB = "tjbb"; 
	public static String PRIVILEGE_XWZC = "xwzc"; 
	/*public static String PRIVILEGE_ZXXX = "zxxx"; */
	public static String PRIVILEGE_NSFW = "nsfw"; 
	public static String PRIVILEGE_SPACE = "spaces"; 

	public static Map<String, String> PRIVILEGE_MAP;
	static {
		PRIVILEGE_MAP = new HashMap<String, String>();
		PRIVILEGE_MAP.put(PRIVILEGE_TJBB, "统计报表");
		PRIVILEGE_MAP.put(PRIVILEGE_XWZC, "新闻政策");
		/*PRIVILEGE_MAP.put(PRIVILEGE_ZXXX, "在线学习");*/
		PRIVILEGE_MAP.put(PRIVILEGE_NSFW, "纳税服务");
		PRIVILEGE_MAP.put(PRIVILEGE_SPACE, "我的空间");
	}
}
