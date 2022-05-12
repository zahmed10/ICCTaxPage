package com.sr.taxWebPage.repos;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sr.taxWebPage.models.UserForm;

@Repository
public interface UserFormRepository extends CrudRepository<UserForm, Long> {
	List<UserForm> findAll();

}
