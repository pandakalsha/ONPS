package com.pro;
// Generated 5 Dec, 2014 10:59:35 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * State generated by hbm2java
 */
public class State  implements java.io.Serializable {


     private Integer sid;
     private String name;
     private Set constituencies = new HashSet(0);

    public State() {
    }

	
    public State(String name) {
        this.name = name;
    }
    public State(String name, Set constituencies) {
       this.name = name;
       this.constituencies = constituencies;
    }
   
    public Integer getSid() {
        return this.sid;
    }
    
    public void setSid(Integer sid) {
        this.sid = sid;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public Set getConstituencies() {
        return this.constituencies;
    }
    
    public void setConstituencies(Set constituencies) {
        this.constituencies = constituencies;
    }




}


