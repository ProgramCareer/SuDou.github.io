package com.service;
import java.util.List;
import com.model.Tuser;

public interface TuserService
{
        public List<Tuser> queryTuserList(Tuser tuser) throws Exception;
 
	public int insertTuser(Tuser tuser) throws Exception ;
	
	public int deleteTuser(int id) throws Exception ;
	
	public int updateTuser(Tuser tuser) throws Exception ;
	
	public Tuser queryTuserById(int id) throws Exception ;

}
