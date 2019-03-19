package com.mapper;
import com.model.Yuyue;
import java.util.List;
import java.util.Map;
public interface YuyueMapper
{

	public List<Yuyue> findYuyueList();
	
	public List<Yuyue> query(Map<String,Object> inputParam);
	
	public int insertYuyue(Yuyue yuyue);
	
	public int deleteYuyue(int id);
	
	public int updateYuyue(Yuyue yuyue);
	
	public Yuyue queryYuyueById(int id);

}
