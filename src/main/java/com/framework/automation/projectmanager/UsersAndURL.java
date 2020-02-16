package com.framework.automation.projectmanager;

import eyethink.automation.bots.Register.EnvironmentFetcher;
import eyethink.automation.bots.controller.UsersController;

public class UsersAndURL implements UsersController {

    /**
     * @REI-Systems
     * @author nauman.shahid
     * @category Handles users based on different environments
     */
    @Override
    public String getUserName(String userLevel) {
        String userName = null;
        if ((EnvironmentFetcher.getEnvironmentName() != null) && (EnvironmentFetcher.getEnvironmentName().contains("QA"))) {
            userName = getQAEnvironmentUser(userLevel);
        } else if ((EnvironmentFetcher.getEnvironmentName() != null) && (EnvironmentFetcher.getEnvironmentName().contains("UAT"))) {
            /* TO DO */
        } else {
            userName = getQAEnvironmentUser(userLevel);
        }

        return userName;
    }

    @Override
    public String getPassword(String userLevel) {
        return getQAEnvironmentPassword(userLevel);
    }

    /**
     * Switches based on the user type passed.
     *
     * @param userType
     * @return the password for the passed in user type.
     */
    private String getQAEnvironmentPassword(String userType) {
        String password;
        switch (userType.toUpperCase()) {
            case "AUTOMATION":
                password = "Automation@12345";
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
                password = "Automation@12345678";
                break;
            default:
                password = "Automation@12345";
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
    private String getQAEnvironmentUser(String userLevel) {
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
            default:
                username = "qa_automation@ggp.test5";
        }
        return username;
    }
}