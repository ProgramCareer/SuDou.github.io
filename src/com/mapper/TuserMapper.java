package com.mapper;
import com.model.Tuser;
import java.util.List;
import java.util.Map;
public interface TuserMapper
{

	public List<Tuser> findTuserList();
	
	public List<Tuser> query(Map<String,Object> inputParam);
	
	public int insertTuser(Tuser tuser);
	
	public int deleteTuser(int id);
	
	public int updateTuser(Tuser tuser);
	
	public Tuser queryTuserById(int id);

}
