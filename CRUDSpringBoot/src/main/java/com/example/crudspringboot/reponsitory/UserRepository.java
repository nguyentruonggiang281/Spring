package com.example.crudspringboot.reponsitory;

import com.example.crudspringboot.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User,Long> {
}
