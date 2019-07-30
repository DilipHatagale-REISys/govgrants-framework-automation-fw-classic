package com.framework.automation.steps;


import com.automation.florida.projectmanager.UsersAndURL;
import eyethink.automation.bots.Report.CSS;
import eyethink.automation.bots.controller.CoreHandlers;
import eyethink.automation.bots.controller.TestSetupController;
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
    private CoreHandlers eyeThink;

    public setup(TestSetupController userController) {
        this.userController = userController;
        if(report == null) {
            this.report = new CSS();
            report.reportConfigWriteUp(System.getProperty("user.dir"),"GovGrants Framework Test Automation");
        }
    }

    @Before(order = 1)
    public void setUpUsers() throws IOException, AWTException {
        userController.usersController(new UsersAndURL());
    }

    @After(order = 1)
    public void wrapUp(Scenario scenario) throws IOException {
        try {
            ProjectWebServices.thisValue.postDefaultConfigCall();
            ProjectWebServices.thisValue = null;
        } catch (Exception e) {
            ProjectWebServices.thisValue = null;
            System.out.println("Exception is " + e.getStackTrace());
        }
    }
}
