package com.framework.automation.steps;

import com.framework.automation.projectmanager.ProjectWebServices;
import com.framework.automation.projectmanager.UsersAndURL;
import eyethink.automation.bots.Register.AuthorizedProject;
import eyethink.automation.bots.Register.EyeThink;
import eyethink.automation.bots.Report.CSS;
import eyethink.automation.bots.controller.TestSetupController;
import io.cucumber.core.api.Scenario;
import io.cucumber.java.After;
import io.cucumber.java.Before;

import java.awt.*;
import java.io.IOException;


/**
 * @author nauman.shahid
 * @for REI-Systems
 * @category Handle browser initialization , appium , hooks and environments
 */

public class setup {
    private ProjectWebServices api;
    private TestSetupController userController;
    private static CSS report;

    public setup(TestSetupController userController) {
        this.userController = userController;
        EyeThink.setRegister(AuthorizedProject.SAAS_GOVGRANTS_GGF);
        if (report == null) {
            this.report = new CSS();
            report.reportConfigWriteUp(System.getProperty("user.dir"), "GovGrants Framework Test Automation");
        }
    }

    @Before(order = 2)
    public void setUpUsers() throws IOException, AWTException {
        userController.usersController(new UsersAndURL());
    }

    @After(order = 1)
    public void wrapUp(Scenario scenario) throws IOException {
        try {
            ProjectWebServices.thisValue.postDefaultConfigCall();
            if (!ProjectWebServices.dynamicApi.equalsIgnoreCase("None")) {
                if (ProjectWebServices.dynamicApi.equalsIgnoreCase("lightningLookUp")) {
                    ProjectWebServices.thisValue.updateEnableLightningLookup(false, null, "a0b1C00000M9lj4QAB", "SessionEnableManagement", "SessionEnableManagement");
                    ProjectWebServices.thisValue.updateEnableLightningLookup(false, null, "a0b1C00000OGDD0QAP", "Lightning lookup updated", "enableLightningLookup");
                    ProjectWebServices.thisValue.updateEnableLightningLookup(false, 3, "a0b1C00000M9ljEQAR", "Value for session timeout in a minute", "SessionTimeoutValue");
                    ProjectWebServices.thisValue.updateEnableLightningLookup(true, null, "a0b1C00000M9ljOQAR", "Session Enable Reminder", "SessionEnableReminder");
                    ProjectWebServices.thisValue.updateEnableLightningLookup(false, 2, "a0b1C00000M9lj9QAB", "SessionTimeoutReminderValue", "SessionTimeoutReminderValue");
                    ProjectWebServices.thisValue.updateEnableLightningLookup(true, null, "a0b1C00000M9ljTQAR", "Session Enable DialogBox", "SessionEnableDialogBox");
                    ProjectWebServices.thisValue.updateEnableLightningLookup(false, 1, "a0b1C00000LaBhVQAV", "SessionDialogTimeoutLimit", "SessionDialogTimeoutLimit");
                }
                if (ProjectWebServices.dynamicApi.equalsIgnoreCase("localeOrTimeZone")) {
                    ProjectWebServices.thisValue.updateLocalAndTimeZone("en_IN",
                            "America/New_York");
                }
                ProjectWebServices.dynamicApi = "None";
            }
            ProjectWebServices.thisValue = null;
        } catch (Exception e) {
            ProjectWebServices.thisValue = null;
            ProjectWebServices.dynamicApi = "None";
            System.out.println("Exception is " + e.getStackTrace());
        }
    }
}