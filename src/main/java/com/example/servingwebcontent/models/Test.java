package com.example.servingwebcontent.models;

import jdk.jfr.Enabled;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.UUID;

@Entity
@Getter
@Setter
@Table(name = "test")
public class Test {
    public String test;
    public String last;
    @Id
    public Long id;

}

