package com.sr.taxWebPage.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.sr.taxWebPage.models.UserForm;
import com.sr.taxWebPage.repos.UserFormRepository;

@Service
public class UserFormService {

	private final UserFormRepository userFormRepository;
	
	public UserFormService(UserFormRepository userFormRepository) {
		this.userFormRepository = userFormRepository;
	}
	
	public List<UserForm> allUserForms() {
		return userFormRepository .findAll();		
	}
	
	public UserForm createUserForm(UserForm u) {
		return userFormRepository.save(u);
	}
	
	public UserForm findUserForm(Long id) {
		Optional<UserForm> optionalUserForm = userFormRepository.findById(id);
		if(optionalUserForm.isPresent()) {
			return optionalUserForm.get();
		} else {
			return null;
		}
	}
	
	public UserForm updateUserForm(UserForm u) {
		return userFormRepository.save(u);
	}
}
