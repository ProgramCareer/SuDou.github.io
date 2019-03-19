package com.mapper;
import com.model.Tgonggao;
import java.util.List;
import java.util.Map;
public interface TgonggaoMapper
{

	public List<Tgonggao> findTgonggaoList();
	
	public List<Tgonggao> query(Map<String,Object> inputParam);
	
	public int insertTgonggao(Tgonggao tgonggao);
	
	public int deleteTgonggao(int id);
	
	public int updateTgonggao(Tgonggao tgonggao);
	
	public Tgonggao queryTgonggaoById(int id);

}
