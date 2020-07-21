package com.example.testspringboot.jpaTest;


import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.RepositoryDefinition;

import javax.validation.constraints.Max;

import java.util.List;

@RepositoryDefinition(domainClass = UserEnity.class, idClass = String.class)
public interface UserRepository extends JpaRepository<UserEnity,String> {
    List<UserEnity> findByEmail(String email);

    List<UserEnity> findByEmail(String email,Pageable pageable);
}
