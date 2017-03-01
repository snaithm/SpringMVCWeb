package com.mkyong.web.model;

/**
 * Created by snaithm on 01/03/17.
 */
public class User {

    private String name;

    private String message;

    public void setName(String name) {
        this.name = name;
    }

    public String getName(){
        return this.name;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getMessage(){
        return this.message;
    }
}
