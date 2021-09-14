package com.example.servingwebcontent.services;

import com.example.servingwebcontent.models.Test;
import com.example.servingwebcontent.repos.TestRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TestService {
    @Autowired
    TestRepo testrepo;
    public void saveTest(Test test){
        testrepo.save(test);
    }
    public Test find(Long id){
        return testrepo.findById(id).orElseThrow();
    }
    public List<Test> findAll(){
        return testrepo.findAll();
    }
}
