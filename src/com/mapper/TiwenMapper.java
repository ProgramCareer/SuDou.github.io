package com.mapper;
import com.model.Tiwen;
import java.util.List;
import java.util.Map;
public interface TiwenMapper
{

	public List<Tiwen> findTiwenList();
	
	public List<Tiwen> query(Map<String,Object> inputParam);
	
	public int insertTiwen(Tiwen tiwen);
	
	public int deleteTiwen(int id);
	
	public int updateTiwen(Tiwen tiwen);
	
	public Tiwen queryTiwenById(int id);

}
