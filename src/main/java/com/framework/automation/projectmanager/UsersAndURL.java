package com.framework.automation.projectmanager;


import com.helperPackage.controller.UsersController;
import com.helperPackage.misclib.Properties_Logs;
import com.helperPackage.register.EnvironmentFactory;

import java.io.IOException;
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
        }else
        if ((EnvironmentFactory.getEnvironmentName() != null) && (EnvironmentFactory.getEnvironmentName().contains("PATCH"))) {
            userName = getPATCHEnvironmentUser(userLevel);
        }
        else {
            userName = getQAEnvironmentUser(userLevel);
        }

        return userName;
    }

    @Override
    public String getPassword(String userType) {
        String password = null;
        if ((EnvironmentFactory.getEnvironmentName() != null) && (EnvironmentFactory.getEnvironmentName().contains("TEST5"))) {
            password = getTEST5EnvironmentPassword(userType);
        } else if ((EnvironmentFactory.getEnvironmentName() != null) && (EnvironmentFactory.getEnvironmentName().contains("QA"))) {
            password = getQAEnvironmentPassword(userType);
        }else if ((EnvironmentFactory.getEnvironmentName() != null) && (EnvironmentFactory.getEnvironmentName().contains("PATCH"))) {
            password = getPATCHEnvironmentPassword(userType);
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
                password = "Automation@2024";
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
        password.put("ADMIN", "Admin@jan2024");
        password.put("EXE", "Framework@dec23");
        password.put("PM", "Framework@dec23");
        password.put("FO", "FrameworkFo@jan24");
        password.put("SPI", "FrameworkSpi@dec23");
        password.put("PM1", "FrameworkAuto@24");
        if (userType.toUpperCase() != null) {
            return password.get(userType.toUpperCase());
        } else {
            return password.get("ADMIN");
        }
    }

    private String getPATCHEnvironmentUser(String userLevel) {
        Map<String, String> username = new HashMap<>();
        username.put("ADMIN", "automationadminpatch@yopmail.com.atm.frwpatch");
        username.put("PM", "donald_pm@ggp.test7.atm.frwpatch");
        username.put("PM1", "test8.pm1.automation@yopmail.com.frwpatch");
        username.put("FO", "auto.fm@auto.com.atm.frwpatch");
        username.put("EXE", "test@gmaildemo.com.atm.frwpatch");
        if (userLevel.toUpperCase() != null) {
            return username.get(userLevel.toUpperCase());
        } else {
            return username.get("ADMIN");
        }
    }

    private String getPATCHEnvironmentPassword(String userType) {
        Map<String, String> password = new HashMap<>();
        password.put("ADMIN", "Admin@March2024");
        password.put("PM", "PM@11March");
        password.put("PM1", "PM1@AutoMarch");
        password.put("FO", "AutoPatch@08March");
        password.put("EXE", "Exe@11March");
        if (userType.toUpperCase() != null) {
            return password.get(userType.toUpperCase());
        } else {
            return password.get("Admin");
        }
    }

    public Map<String, String> getUserCredentialsForMailNotification(String userType) {
        Map<String, String> credentials = new HashMap();
        String userAndPassword;
        String env = System.getProperty("env");
        if (env == null || "".equalsIgnoreCase(env)) {
            env = "QA";
        }
        try {
            userAndPassword = (new Properties_Logs()).ReadPropertyFile("mail.properties", env.toUpperCase() + userType.toUpperCase());
            credentials.put("username", userAndPassword.split(":")[0]);
            credentials.put("password", userAndPassword.split(":")[1]);
        } catch (IOException e) {
            e.printStackTrace();
            throw new RuntimeException("Property file mail.properties is not present");
        }
        return credentials;
    }

}