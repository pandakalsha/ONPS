package com.pro;
// Generated 5 Dec, 2014 10:59:35 AM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * User generated by hbm2java
 */
public class User  implements java.io.Serializable {


     private int userId;
     private String name;
     private Date dob;
     private String mobNo;
     private int cid;
     private String pass;
     private String voted;
     private String active;
     private String new_;

    public User() {
    }

    public User(int userId, String name, Date dob, String mobNo, int cid, String pass, String voted, String active, String new_) {
       this.userId = userId;
       this.name = name;
       this.dob = dob;
       this.mobNo = mobNo;
       this.cid = cid;
       this.pass = pass;
       this.voted = voted;
       this.active = active;
       this.new_ = new_;
    }
   
    public int getUserId() {
        return this.userId;
    }
    
    public void setUserId(int userId) {
        this.userId = userId;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public Date getDob() {
        return this.dob;
    }
    
    public void setDob(Date dob) {
        this.dob = dob;
    }
    public String getMobNo() {
        return this.mobNo;
    }
    
    public void setMobNo(String mobNo) {
        this.mobNo = mobNo;
    }
    public int getCid() {
        return this.cid;
    }
    
    public void setCid(int cid) {
        this.cid = cid;
    }
    public String getPass() {
        return this.pass;
    }
    
    public void setPass(String pass) {
        this.pass = pass;
    }
    public String getVoted() {
        return this.voted;
    }
    
    public void setVoted(String voted) {
        this.voted = voted;
    }
    public String getActive() {
        return this.active;
    }
    
    public void setActive(String active) {
        this.active = active;
    }
    public String getNew_() {
        return this.new_;
    }
    
    public void setNew_(String new_) {
        this.new_ = new_;
    }




}


