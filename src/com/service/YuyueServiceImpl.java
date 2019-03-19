package com.service;
import java.util.List;
import com.model.Yuyue;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.HashMap;
import java.util.Map;
import com.mapper.YuyueMapper;
@Service
public class YuyueServiceImpl implements YuyueService
{
        
        @Autowired
	private YuyueMapper yuyueMapper;


	public List<Yuyue> queryYuyueList(Yuyue yuyue) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		if(yuyue!=null){
			 map.put("tid", yuyue.getTid());
			 map.put("uid", yuyue.getUid());
		}
		
		List<Yuyue> getYuyue = yuyueMapper.query(map);
		return getYuyue;
	}

	public int insertYuyue(Yuyue yuyue) throws Exception {
		
		return yuyueMapper.insertYuyue(yuyue);
	}

	public int deleteYuyue(int id) throws Exception {
		return yuyueMapper.deleteYuyue(id);
	}

	public int updateYuyue(Yuyue yuyue) throws Exception {
		return yuyueMapper.updateYuyue(yuyue);
	}
	
	public Yuyue queryYuyueById(int id) throws Exception {
		return yuyueMapper.queryYuyueById(id);
	}
 
}
