package com.framework.automation.projectmanager;


import java.io.IOException;

import com.automation.rei.handlers.Properties_Logs;
import com.cucumber.listener.Reporter;

public class UsersAndURL {
    
    /**
     * @REI-Systems
     * @author nauman.shahid
     * @category Handles users based on different environments
     */    
    
    public String handleUsersForEnv(String userLevel) {
        String userName = null;
        if (System.getProperty("env").equalsIgnoreCase("qa")) {
            userName = performLoginQAEnvironment(userLevel);
        } else if (System.getProperty("env").equalsIgnoreCase("uat")) {
            userName = performLoginUATEnvironment(userLevel);
        }
        return userName;
    }

    public String performLoginQAEnvironment(String userLevel) {
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
        default:
            username = "qa_automation@ggp.test5";
        }
        return username;
    }

    private String performLoginUATEnvironment(String userLevel) {
        String username;
        switch ("") {
        case "EXE":
            username = "To be implemented";
        default:
            username = "To be implemented";
            break;
        }
        return username;
    }
    
    public static String navigateToAnyUrl(String urlName) throws IOException {
        String url=null;
        switch(urlName.toUpperCase()) {
        case "QA":
            url = new Properties_Logs().ReadPropertyFile("environment.properties", "QA");
            Reporter.addScenarioLog("Scenario is running using External Link" + " & Url is " + url);
            break;
        }
        return url;
            }
}
