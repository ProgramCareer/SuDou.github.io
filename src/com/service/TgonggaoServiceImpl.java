package com.service;
import java.util.List;
import com.model.Tgonggao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.HashMap;
import java.util.Map;
import com.mapper.TgonggaoMapper;
@Service
public class TgonggaoServiceImpl implements TgonggaoService
{
        
        @Autowired
	private TgonggaoMapper tgonggaoMapper;


	public List<Tgonggao> queryTgonggaoList(Tgonggao tgonggao) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		if(tgonggao!=null){
			 
		}
		
		List<Tgonggao> getTgonggao = tgonggaoMapper.query(map);
		return getTgonggao;
	}

	public int insertTgonggao(Tgonggao tgonggao) throws Exception {
		
		return tgonggaoMapper.insertTgonggao(tgonggao);
	}

	public int deleteTgonggao(int id) throws Exception {
		return tgonggaoMapper.deleteTgonggao(id);
	}

	public int updateTgonggao(Tgonggao tgonggao) throws Exception {
		return tgonggaoMapper.updateTgonggao(tgonggao);
	}
	
	public Tgonggao queryTgonggaoById(int id) throws Exception {
		return tgonggaoMapper.queryTgonggaoById(id);
	}
 
}
