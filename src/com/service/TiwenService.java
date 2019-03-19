package com.service;
import java.util.List;
import com.model.Tiwen;

public interface TiwenService
{
        public List<Tiwen> queryTiwenList(Tiwen tiwen) throws Exception;
 
	public int insertTiwen(Tiwen tiwen) throws Exception ;
	
	public int deleteTiwen(int id) throws Exception ;
	
	public int updateTiwen(Tiwen tiwen) throws Exception ;
	
	public Tiwen queryTiwenById(int id) throws Exception ;

}
