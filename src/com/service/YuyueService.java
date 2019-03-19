package com.service;
import java.util.List;
import com.model.Yuyue;

public interface YuyueService
{
        public List<Yuyue> queryYuyueList(Yuyue yuyue) throws Exception;
 
	public int insertYuyue(Yuyue yuyue) throws Exception ;
	
	public int deleteYuyue(int id) throws Exception ;
	
	public int updateYuyue(Yuyue yuyue) throws Exception ;
	
	public Yuyue queryYuyueById(int id) throws Exception ;

}
