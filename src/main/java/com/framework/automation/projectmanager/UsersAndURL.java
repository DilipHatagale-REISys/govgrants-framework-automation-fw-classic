package com.framework.automation.projectmanager;


import com.testingblaze.controller.UsersController;
import com.testingblaze.register.EnvironmentFactory;

import java.util.HashMap;
import java.util.Map;

public class UsersAndURL implements UsersController {

    /**
     * @REI-Systems
     * @author nauman.shahid
     * @category Handles users based on different environments
     */
    @Override
    public String getUserName(String userLevel) {
        String userName = null;
        if ((EnvironmentFactory.getEnvironmentName() != null) && (EnvironmentFactory.getEnvironmentName().contains("TEST5"))) {
            userName = getTEST5EnvironmentUser(userLevel);
        }
         else
            if ((EnvironmentFactory.getEnvironmentName() != null) && (EnvironmentFactory.getEnvironmentName().contains("QA"))) {
            userName = getQAEnvironmentUser(userLevel);
        }else {
            userName = getQAEnvironmentUser(userLevel);
        }

        return userName;
    }

    @Override
    public String getPassword(String userType) {
        String password = null;
        if ((EnvironmentFactory.getEnvironmentName() != null) && (EnvironmentFactory.getEnvironmentName().contains("TEST5"))) {
            password = getTEST5EnvironmentPassword(userType);
        }
           else if ((EnvironmentFactory.getEnvironmentName() != null) && (EnvironmentFactory.getEnvironmentName().contains("QA"))) {
            password = getQAEnvironmentPassword(userType);
        }else {
            password = getQAEnvironmentPassword(userType);
        }

        return password;
    }

    /**
     * Switches based on the user type passed.
     *
     * @param userType
     * @return the password for the passed in user type.
     */
    private String getTEST5EnvironmentPassword(String userType) {
        String password;
        switch (userType.toUpperCase()) {
            case "AUTOMATION":
                password = "Automation@12345678";
                break;
            case "AUTOMATION-EXE":
                password = "Automation@12345";
                break;
            case "AUTOMATION-PM":
                password = "Automation@12345";
                break;
            case "AUTOMATION-REVIEWER":
                password = "Automation@12345";
                break;
            case "AUTOMATION-APPLICANT":
                password = "Automation@12345";
                break;
            case "AUTOMATION-SPI":
                password = "Automation@2023";
                break;
            case "AUTOMATION-ADMIN":
                password = "Automation@2023";
                break;
            case "AUTOMATION-SPI2":
                password = "Automation@123456";
                break;
            case "AUTOMATION-PO":
                password = "Automation@12345";
                break;
            default:
                password = "Automation@123";
        }

        return password;
    }

    /**
     * Switches based on the user type passed in and returns the username for the
     * type. Used for the SPQA environment.
     *
     * @param userLevel
     * @return
     */
    private String getTEST5EnvironmentUser(String userLevel) {
        String username;

        switch (userLevel.toUpperCase()) {
            case "AUTOMATION":
                username = "qa_automation@ggp.test5";
                break;
            case "AUTOMATION-EXE":
                username = "automationexe@reisystems.com";
                break;
            case "AUTOMATION-PM":
                username = "automationpm@reisystems.com";
                break;
            case "AUTOMATION-REVIEWER":
                username = "monukumar.mr20@gmail.com";
                break;
            case "AUTOMATION-APPLICANT":
                username = "automation-applicant@ggptest5.com";
                break;
            case "AUTOMATION-SPI":
                username = "Monu.Kumar@ggp.test5.com";
                break;
            case "AUTOMATION-ADMIN":
                username = "frameworkqa@ggp.test5";
                break;
            case "AUTOMATION-SPI2":
                username = "automation-spi@ggp.test5";
                break;
            case "AUTOMATION-PO":
                username = "automationpo.test5@yopmail.com";
                break;
            default:
                username = "qa_automation@ggp.test5";
        }
        return username;
    }



    private String getQAEnvironmentUser(String userLevel) {
        Map<String, String> username = new HashMap<>();
        username.put("ADMIN", "automationadmin@ggp.test8.atm.fwautomat");
        username.put("EXE", "automationexe@ggp.test8.fwautomat");
        username.put("PM", "automationpm@ggp.test8.atm.fwautomat");
        username.put("FO", "automationfo@ggp.test8.atm.fwautomat");
        username.put("SPI", "automationspi@yopmail.com.fwautomat");
        username.put("PM1", "frameworkpm1@ggp.test8.atm.fwautomat");

        if (userLevel.toUpperCase() != null) {
            return username.get(userLevel.toUpperCase());
        } else {
            return username.get("ADMIN");
        }
    }

    private String getQAEnvironmentPassword(String userType) {
        Map<String, String> password = new HashMap<>();
        password.put("ADMIN", "Automation@2024");
        password.put("EXE", "FrameworkAuto@2022");
        password.put("PM", "Automation@2023");
        password.put("FO", "Automation@2023");
        password.put("SPI", "AUTOMATION@2023");
        password.put("PM1", "FrameworkAuto@2023");
        if (userType.toUpperCase() != null) {
            return password.get(userType.toUpperCase());
        } else {
            return password.get("ADMIN");
        }
    }
}