/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.model;

/**
 *
 * @author Praneeth Madusanka
 */
public class RegObject {

    private String firstName;
    private String lastName;
    private String userName;
    private String email;
    private String setuserrole;
    private String[] userrole = {"Users", "Experts"};

    /**
     * @return the firstName
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * @param firstName the firstName to set
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    /**
     * @return the lastName
     */
    public String getLastName() {
        return lastName;
    }

    /**
     * @param lastName the lastName to set
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    /**
     * @return the userName
     */
    public String getUserName() {
        return userName;
    }

    /**
     * @param userName the userName to set
     */
    public void setUserName(String userName) {
        this.userName = userName;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the setuserrole
     */
    public String getSetuserrole() {
        return setuserrole;
    }

    /**
     * @param setuserrole the setuserrole to set
     */
    public void setSetuserrole(String setuserrole) {
        this.setuserrole = setuserrole;
    }

    /**
     * @return the userrole
     */
    public String[] getUserrole() {
        return userrole;
    }

    /**
     * @param userrole the userrole to set
     */
    public void setUserrole(String[] userrole) {
        this.userrole = userrole;
    }

}
