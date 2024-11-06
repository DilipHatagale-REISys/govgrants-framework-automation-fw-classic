package com.framework.automation.projectmanager;


import com.helperPackage.controller.UsersController;
import com.helperPackage.misclib.Properties_Logs;
import com.helperPackage.register.EnvironmentFactory;
import com.helperPackage.register.I;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class UsersAndURL implements UsersController {

    public UsersAndURL() {
        I.amPerforming().propertiesFileOperationsTo().saveValue("ADMIN Username", "Automation ADMIN");
        I.amPerforming().propertiesFileOperationsTo().saveValue("ADMIN1 Username", "Automation ADMIN1");
        I.amPerforming().propertiesFileOperationsTo().saveValue("EXE Username", "Automation EXE");
        I.amPerforming().propertiesFileOperationsTo().saveValue("FO Username", "Automation FO");
        I.amPerforming().propertiesFileOperationsTo().saveValue("PO Username", "Automation PO");
        I.amPerforming().propertiesFileOperationsTo().saveValue("FD Username", "Automation FD");
        I.amPerforming().propertiesFileOperationsTo().saveValue("PM Username", "Automation PM");
        I.amPerforming().propertiesFileOperationsTo().saveValue("PM1 Username", "Automation PM1");
        I.amPerforming().propertiesFileOperationsTo().saveValue("EXE1 Username", "Automation EXE1");
        I.amPerforming().propertiesFileOperationsTo().saveValue("FO1 Username", "Automation FO1");
        I.amPerforming().propertiesFileOperationsTo().saveValue("PO1 Username", "Automation PO1");
        I.amPerforming().propertiesFileOperationsTo().saveValue("FD1 Username", "Automation FD1");
        I.amPerforming().propertiesFileOperationsTo().saveValue("AUDITOR Username", "Automation AUDITOR");
        I.amPerforming().propertiesFileOperationsTo().saveValue("SPI Username", "Automation SPI");
        I.amPerforming().propertiesFileOperationsTo().saveValue("SPI3 Username", "James Hank");
        I.amPerforming().propertiesFileOperationsTo().saveValue("SPA Username", "Automation SPA");
        I.amPerforming().propertiesFileOperationsTo().saveValue("SPI4 Username", "Automation SPI4");
        I.amPerforming().propertiesFileOperationsTo().saveValue("IND Username", "Automation IND");
        I.amPerforming().propertiesFileOperationsTo().saveValue("GRANTEE ADMIN Username", "Grantee ADMIN");
        I.amPerforming().propertiesFileOperationsTo().saveValue("GRANTEE PO Username", "Grantee PO");
        I.amPerforming().propertiesFileOperationsTo().saveValue("GRANTEE FD Username", "Grantee FD");
        I.amPerforming().propertiesFileOperationsTo().saveValue("GRANTEE PM Username", "Grantee PM");
        I.amPerforming().propertiesFileOperationsTo().saveValue("GRANTEE PM1 Username", "Grantee PM1");
        I.amPerforming().propertiesFileOperationsTo().saveValue("GRANTEE FO Username", "Grantee FO");
        I.amPerforming().propertiesFileOperationsTo().saveValue("GRANTEE EXE Username", "Grantee EXE");
    }

    /**
     * @REI-Systems
     * @author nauman.shahid
     * @category Handles users based on different environments
     */

    /****
     * BELOW ARE SAMPLE METHODS TO HANDLE USERS BASED ON DIFFERENT ENVIRONEMNTS
     *******/
    /****
     * IT ALSO HANDLE ANY ADDITIONAL URL IN ADDITION TO STANDARD PROJECT
     **********/
    /****
     * SINCE THESE ARE GENERIC METHODS SO YOU MAY KEEP THE SAME WITH MODIFICATION
     ******/
    @Override
    public String getUserName(String userLevel) {
        String userName = null;
        if ((EnvironmentFactory.getEnvironmentName() != null) && (EnvironmentFactory.getEnvironmentName().contains("TEST5"))) {
            userName = getTEST5EnvironmentUser(userLevel);
        }
        else
        if ((EnvironmentFactory.getEnvironmentName() != null) && (EnvironmentFactory.getEnvironmentName().contains("QA"))) {
            userName = getQAEnvironmentUser(setUpUserLevel(userLevel));
        }else
        if ((EnvironmentFactory.getEnvironmentName() != null) && (EnvironmentFactory.getEnvironmentName().contains("PATCH"))) {
            userName = getPATCHEnvironmentUser(setUpUserLevel(userLevel));
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
            password = getTEST5EnvironmentPassword(setUpUserLevel(userType));
        } else if ((EnvironmentFactory.getEnvironmentName() != null) && (EnvironmentFactory.getEnvironmentName().contains("QA"))) {
            password = getQAEnvironmentPassword(setUpUserLevel(userType));
        }else if ((EnvironmentFactory.getEnvironmentName() != null) && (EnvironmentFactory.getEnvironmentName().contains("PATCH"))) {
            password = getPATCHEnvironmentPassword(setUpUserLevel(userType));
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
        password.put("ADMIN", "Admin@April24");
        password.put("EXE", "Framework@16April");
        password.put("PM", "Framework@apr04");
        password.put("FO", "FrameworkFo@16April");
        password.put("SPI", "FrameworkSpi@24April");
        password.put("PM1", "PM1@16April");
        if (userType.toUpperCase() != null) {
            return password.get(userType.toUpperCase());
        } else {
            return password.get("ADMIN");
        }
    }

    private String getPATCHEnvironmentUser(String userLevel) {
        Map<String, String> username = new HashMap<>();
        username.put("PO", "test8.automationpo@yopmail.com.frwpatch");
        username.put("FD", "test8.automationfd@yopmail.com.frwpatch");
        username.put("PM", "donald_pm@ggp.test7.atm.frwpatch");
        username.put("EXE", "test@gmaildemo.com.atm.frwpatch");
        username.put("EXE1", "test8.exe1.automation@yopmail.com.frwpatch");
        username.put("FO", "auto.fm@auto.com.atm.frwpatch");
        username.put("ADMIN", "automationadminpatch@yopmail.com.atm.frwpatch");
        username.put("ADMIN1", "manu.admin@ggp.test8.frwpatch");
        username.put("SPI3", "jameshanknew@yopmail.com");
        username.put("dynamicUser", "donald_pm@ggp.test7.atm.frwpatch");
        username.put("PM1", "test8.pm1.automation@yopmail.com.frwpatch");
        if (userLevel.toUpperCase() != null) {
            return username.get(userLevel.toUpperCase());
        } else {
            return username.get("ADMIN");
        }
    }

    private String getPATCHEnvironmentPassword(String userType) {
        Map<String, String> password = new HashMap<>();
        password.put("ADMIN", "Patch@02oct");
        password.put("PM", "Patch@02octo");
        password.put("PM1", "Patch@02oct");
        password.put("FO", "Patch@02oct");
        password.put("EXE", "Patch@02oct");
        password.put("SPI", "Patch@02oct");
        password.put("PO", "Patch@02oct");
        password.put("FD", "Patch@02oct");
        password.put("PM", "Patch@02octo");
        password.put("EXE", "Patch@02oct");
        password.put("EXE1", "Patch@02oct");
        password.put("FO", "Patch@02oct");
        password.put("ADMIN", "Patch@02oct");
        password.put("ADMIN1", "Patch@02oct");
        password.put("SPI3", "Patch@02oct");
        password.put("dynamicUser", "Patch@02oct");
        password.put("PM1", "Patch@02oct");
        if (userType.toUpperCase() != null) {
            return password.get(userType.toUpperCase());
        } else {
            return password.get("Admin");
        }
    }
    /**
     * setup userLevel based on jvm property or default value or as passed from feature
     *
     * @param userType dynamicUser or EXE/PM
     * @return userLevel
     * @author nauman.shahid
     */
    private String setUpUserLevel(String userType) {
        return userType.equalsIgnoreCase("dynamicUser") && System.getProperty("userType") != null ? System.getProperty("userType") : !userType.equalsIgnoreCase("dynamicUser") ? userType : "PM";
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