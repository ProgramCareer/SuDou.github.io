package com.service;
import java.util.List;
import com.model.Tiwen;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.HashMap;
import java.util.Map;
import com.mapper.TiwenMapper;
@Service
public class TiwenServiceImpl implements TiwenService
{
        
        @Autowired
	private TiwenMapper tiwenMapper;


	public List<Tiwen> queryTiwenList(Tiwen tiwen) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		if(tiwen!=null){
			map.put("tid", tiwen.getTid());
			map.put("uid", tiwen.getUid());
		}
		List<Tiwen> getTiwen = tiwenMapper.query(map);
		return getTiwen;
	}

	public int insertTiwen(Tiwen tiwen) throws Exception {
		
		return tiwenMapper.insertTiwen(tiwen);
	}

	public int deleteTiwen(int id) throws Exception {
		return tiwenMapper.deleteTiwen(id);
	}

	public int updateTiwen(Tiwen tiwen) throws Exception {
		return tiwenMapper.updateTiwen(tiwen);
	}
	
	public Tiwen queryTiwenById(int id) throws Exception {
		return tiwenMapper.queryTiwenById(id);
	}
 
}
