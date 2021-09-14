package com.example.servingwebcontent.repos;

import com.example.servingwebcontent.models.Test;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface TestRepo extends JpaRepository<Test, Long> {
    public Optional<Test> findById(Long id);
}
