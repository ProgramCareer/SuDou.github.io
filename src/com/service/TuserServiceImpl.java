package com.service;
import java.util.List;
import com.model.Tuser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.HashMap;
import java.util.Map;
import com.mapper.TuserMapper;
@Service
public class TuserServiceImpl implements TuserService
{
        
        @Autowired
	private TuserMapper tuserMapper;


	public List<Tuser> queryTuserList(Tuser tuser) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		if(tuser!=null){
			 map.put("username", tuser.getUsername());
			 map.put("userpw", tuser.getUserpw());
			 map.put("utype", tuser.getUtype());
		}
		
		List<Tuser> getTuser = tuserMapper.query(map);
		return getTuser;
	}

	public int insertTuser(Tuser tuser) throws Exception {
		
		return tuserMapper.insertTuser(tuser);
	}

	public int deleteTuser(int id) throws Exception {
		return tuserMapper.deleteTuser(id);
	}

	public int updateTuser(Tuser tuser) throws Exception {
		return tuserMapper.updateTuser(tuser);
	}
	
	public Tuser queryTuserById(int id) throws Exception {
		return tuserMapper.queryTuserById(id);
	}
 
}
