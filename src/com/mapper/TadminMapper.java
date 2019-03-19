package com.mapper;
import com.model.Tadmin;
import java.util.List;
import java.util.Map;
public interface TadminMapper
{

	public List<Tadmin> findTadminList();
	
	public List<Tadmin> query(Map<String,Object> inputParam);
	
	public int insertTadmin(Tadmin tadmin);
	
	public int deleteTadmin(int id);
	
	public int updateTadmin(Tadmin tadmin);
	
	public Tadmin queryTadminById(int id);

}
