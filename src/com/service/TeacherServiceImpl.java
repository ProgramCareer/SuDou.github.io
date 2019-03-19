package com.service;
import java.util.List;
import com.model.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.HashMap;
import java.util.Map;
import com.mapper.TeacherMapper;
@Service
public class TeacherServiceImpl implements TeacherService
{
        
        @Autowired
	private TeacherMapper teacherMapper;


	public List<Teacher> queryTeacherList(Teacher teacher) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		if(teacher!=null){
			 
		}
		
		List<Teacher> getTeacher = teacherMapper.query(map);
		return getTeacher;
	}

	public int insertTeacher(Teacher teacher) throws Exception {
		
		return teacherMapper.insertTeacher(teacher);
	}

	public int deleteTeacher(int id) throws Exception {
		return teacherMapper.deleteTeacher(id);
	}

	public int updateTeacher(Teacher teacher) throws Exception {
		return teacherMapper.updateTeacher(teacher);
	}
	
	public Teacher queryTeacherById(int id) throws Exception {
		return teacherMapper.queryTeacherById(id);
	}
 
}
