package com.example.servingwebcontent.repos;

import com.example.servingwebcontent.models.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface RoleRepo extends JpaRepository<Role, Long> {
}
