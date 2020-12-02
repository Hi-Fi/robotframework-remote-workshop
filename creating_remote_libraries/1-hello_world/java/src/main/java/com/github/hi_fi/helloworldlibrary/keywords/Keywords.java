package com.github.hi_fi.helloworldlibrary.keywords;

import org.robotframework.javalib.annotation.ArgumentNames;
import org.robotframework.javalib.annotation.RobotKeyword;
import org.robotframework.javalib.annotation.RobotKeywords;

@RobotKeywords
public class Keywords {
    
    @RobotKeyword
    @ArgumentNames({ "name=world" })
    public String hello(String name) {
        return "Hello "+name;
    }
}
