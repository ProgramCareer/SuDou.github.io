package cn.itcast.core.util;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.List;

/**
 * 得到接口API的json数据
 * @author 胡涵睿
 * 
 */
public class HttpTest {

	public static void main(String[] args) throws IOException {
		 
		post( );
		//System.out.println("结束");
	}
	 
	
	public static String post() {
		 // 将url 以 open方法返回的urlConnection  连接强转为HttpURLConnection连接  (标识一个url所引用的远程对象连接)  
		HttpURLConnection connection = null;
		// 连接发起请求,处理服务器响应  (从连接获取到输入流并包装为bufferedReader)  
		BufferedReader bf = null;
		StringBuilder sb = null;
		String sb2 = null;
		try {
			URL url = new URL("http://120.76.63.59:8080/BankLeader/getContextTimes");  
			 
			 connection = (HttpURLConnection) url.openConnection();
			   
			 // 设置连接输出流为true,默认false (post 请求是以流的方式隐式的传递参数)  
			 connection.setDoOutput(true);  
			   
			 // 设置连接输入流为true  
			 connection.setDoInput(true);  
			   
			 // 设置请求方式为post  
			 connection.setRequestMethod("POST");  
			   
			 // post请求缓存设为false  
			 connection.setUseCaches(false);  
			   
			 // 设置该HttpURLConnection实例是否自动执行重定向  
			 connection.setInstanceFollowRedirects(true);  
			   
			 // 设置请求头里面的各个属性 (以下为设置内容的类型,设置为经过urlEncoded编码过的from参数)  
			 // application/x-javascript text/xml->xml数据 application/x-javascript->json对象 application/x-www-form-urlencoded->表单数据  
			 // ;charset=utf-8 必须要，不然妙兜那边会出现乱码【★★★★★】  
			 connection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");     
			   
			 // 建立连接 (请求未开始,直到connection.getInputStream()方法调用时才发起,以上各个参数设置需在此方法之前进行)  
			 connection.connect();  
			   
			 // 创建输入输出流,用于往连接里面输出携带的参数,(输出内容为?后面的内容)  
			 DataOutputStream dataout = new DataOutputStream(connection.getOutputStream());  
			   
			 String app_key = "search="+ URLEncoder.encode("喜欢", "utf-8");        // 已修改【改为错误数据，以免信息泄露】  
			 String agt_num = "&number"+ URLEncoder.encode("1", "utf-8");              // 已修改【改为错误数据，以免信息泄露】  
			
			   
			 // 格式 parm = aaa=111&bbb=222&ccc=333&ddd=444  
			 String parm = app_key+ agt_num;  
			   
			 // 将参数输出到连接  
			 dataout.writeBytes(parm);  
			   
			 // 输出完成后刷新并关闭流  
			 dataout.flush();  
			 dataout.close(); // 重要且易忽略步骤 (关闭流,切记!)   
			   
//         System.out.println(connection.getResponseCode());  
			   
			 bf = new BufferedReader(new InputStreamReader(connection.getInputStream(), "UTF-8"));   
			 String line;  
			 sb = new StringBuilder();
			   
			 // 循环读取流,若不到结尾处  
			 while ((line = bf.readLine()) != null) {  
//             sb.append(bf.readLine());  
			     sb.append(line).append(System.getProperty("line.separator"));  
			 }
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (ProtocolException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			try {
				bf.close();
			} catch (IOException e) {
				e.printStackTrace();
			connection.disconnect(); // 销毁连接  
		}
		 String sb1 =sb.substring(sb.indexOf("[", 17), sb.length());
         //System.out.println(sb.substring(sb.indexOf("[", 17), sb.length())); 
        // System.out.println(sb1.substring(sb1.indexOf("["), sb1.lastIndexOf("}")));
		  sb2 =sb1.substring(sb1.indexOf("["), sb1.lastIndexOf("}"));
         System.out.println(sb2);
   
     }
		return sb2.toString();  
 
	}

}
