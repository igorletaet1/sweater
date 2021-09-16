package com.example.servingwebcontent.services;

import com.example.servingwebcontent.models.Test;
import com.example.servingwebcontent.repos.TestRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class TestService {
    @Autowired
    TestRepo testrepo;
    public void saveTest(Test test){
        testrepo.save(test);
    }
    public Optional<Test> find(Long id){
        return testrepo.findById(id);
    }
    public List<Test> findAll(){
        return testrepo.findAll();
    }
}
