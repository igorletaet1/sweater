package com.example.servingwebcontent.controllers;

import com.example.servingwebcontent.models.Test;
import com.example.servingwebcontent.services.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller

public class TestController {
    @Autowired
    TestService testService;
    @GetMapping("/test")
    public String test(Model model){
        model.addAttribute("test", testService.find(1L));
        return "test";
    }
    @PostMapping("/test")
    public String testSave(@RequestParam Long id,
                           @RequestParam String name,
                           @RequestParam String last,  Model model){
        Test test = new Test();
        test.setTest(name);
        switch (test.getTest()){
            case "да":
                model.addAttribute("yes", "yes");
                break;
            case "нет":
                model.addAttribute("no", "no");
                break;
        }
        if(test.getTest() == "да"){
            model.addAttribute("yes", "yes");
            return "test";
        }else if(test.getTest() == "нет"){
            model.addAttribute("no", "no");
            return "test";
        }
        if(test.getTest() == ""){
            model.addAttribute("error", "Не заполнено поле!");
            return "test";
        }
        test.setLast(last);
        if (test.getLast() == ""){
            model.addAttribute("error", "Не заполнено поле!");
            return "test";
        }

        test.setId(id);
        testService.saveTest(test);

        return "redirect:/testfind";
    }
    @GetMapping("/testfind")
    public String test1(Model model){

        model.addAttribute("test", testService.findAll());
        return "testfind";
    }
    @GetMapping("/success")
    public String success(Model model){

        return "success";
    }
    @GetMapping("/fail")
    public String fail(Model model){

        return "fail";
    }
}