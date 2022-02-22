package com.samhein.loginreg.repositories;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.samhein.loginreg.models.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {

	Optional<User> findByEmail(String email); // must be optional for findby
	Optional<User> findById(Long id); // must be optional for findby
}
