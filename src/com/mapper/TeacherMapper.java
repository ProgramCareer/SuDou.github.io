package com.mapper;
import com.model.Teacher;
import java.util.List;
import java.util.Map;
public interface TeacherMapper
{

	public List<Teacher> findTeacherList();
	
	public List<Teacher> query(Map<String,Object> inputParam);
	
	public int insertTeacher(Teacher teacher);
	
	public int deleteTeacher(int id);
	
	public int updateTeacher(Teacher teacher);
	
	public Teacher queryTeacherById(int id);

}
