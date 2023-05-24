package com.library.services;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.library.dtos.RegisterDTO;
import com.library.entities.Student;
import com.library.entities.User;
import com.library.repository.StudentRepository;

@Service
public class StudentService {

	@Autowired private StudentRepository repo;
	@Autowired private UserService service;
	
	public String saveStudent(Student student) {
		student=repo.save(student);
		String userid=String.format("student%03d", student.getId());
		User user=new User();
		user.setUserid(userid);
		user.setUname(student.getName());
		user.setStudent(student);
		service.saveUser(user);
		return userid;
	}
	
	public Student findById(int id) {
		return repo.findById(id).orElse(null);
	}
}
