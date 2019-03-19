package com.service;
import java.util.List;
import com.model.Tgonggao;

public interface TgonggaoService
{
        public List<Tgonggao> queryTgonggaoList(Tgonggao tgonggao) throws Exception;
 
	public int insertTgonggao(Tgonggao tgonggao) throws Exception ;
	
	public int deleteTgonggao(int id) throws Exception ;
	
	public int updateTgonggao(Tgonggao tgonggao) throws Exception ;
	
	public Tgonggao queryTgonggaoById(int id) throws Exception ;

}
