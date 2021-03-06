package com.pro;
// Generated 5 Dec, 2014 10:59:35 AM by Hibernate Tools 4.3.1



/**
 * Candidate generated by hbm2java
 */
public class Candidate  implements java.io.Serializable {


     private int voterId;
     private Constituency constituency;
     private Party party;
     private String name;
     private String agenda;
     private String asset;
     private String qualification;
     private int voteN;
     private String active;
     private String new_;
     private String pass;
     private int ftime;

    public Candidate() {
    }

    public Candidate(int voterId, Constituency constituency, Party party, String name, String agenda, String asset, String qualification, int voteN, String active, String new_, String pass, int ftime) {
       this.voterId = voterId;
       this.constituency = constituency;
       this.party = party;
       this.name = name;
       this.agenda = agenda;
       this.asset = asset;
       this.qualification = qualification;
       this.voteN = voteN;
       this.active = active;
       this.new_ = new_;
       this.pass = pass;
       this.ftime = ftime;
    }
   
    public int getVoterId() {
        return this.voterId;
    }
    
    public void setVoterId(int voterId) {
        this.voterId = voterId;
    }
    public Constituency getConstituency() {
        return this.constituency;
    }
    
    public void setConstituency(Constituency constituency) {
        this.constituency = constituency;
    }
    public Party getParty() {
        return this.party;
    }
    
    public void setParty(Party party) {
        this.party = party;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getAgenda() {
        return this.agenda;
    }
    
    public void setAgenda(String agenda) {
        this.agenda = agenda;
    }
    public String getAsset() {
        return this.asset;
    }
    
    public void setAsset(String asset) {
        this.asset = asset;
    }
    public String getQualification() {
        return this.qualification;
    }
    
    public void setQualification(String qualification) {
        this.qualification = qualification;
    }
    public int getVoteN() {
        return this.voteN;
    }
    
    public void setVoteN(int voteN) {
        this.voteN = voteN;
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
    public String getPass() {
        return this.pass;
    }
    
    public void setPass(String pass) {
        this.pass = pass;
    }
    public int getFtime() {
        return this.ftime;
    }
    
    public void setFtime(int ftime) {
        this.ftime = ftime;
    }




}


