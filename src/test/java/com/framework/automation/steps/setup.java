package com.framework.automation.steps;


import com.automation.rei.controller.SetupController;
import com.framework.automation.projectmanager.ProjectWebServices;
import com.framework.automation.projectmanager.UsersAndURL;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import eyethink.automation.bots.Report.CSS;
import eyethink.automation.bots.controller.Controller;
import eyethink.automation.bots.controller.CoreHandlers;
import io.cucumber.core.api.Scenario;

import java.awt.*;
import java.io.IOException;

/**
 * @author nauman.shahid
 * @for REI-Systems
 * @category Handle browser initialization , appium , hooks and environments
 */

public class setup {
    private SetupController setupController;
    private ProjectWebServices api;
    private static CSS report;
    private CoreHandlers eyeThink;

    public setup(Controller controller, CoreHandlers eyeThink) {
        this.setupController = new SetupController(controller);
        this.eyeThink=eyeThink;
        if(report == null) {
            this.report = new CSS();
            report.reportConfigWriteUp(System.getProperty("user.dir"),"GovGrants Framework Test Automation");
        }
    }

    @Before
    public void startUp(Scenario scenario) throws IOException, AWTException {
        setupController.getAccessToSetup().initializer(scenario,eyeThink);
        setupController.getAccessToSetup().usersController(new UsersAndURL());
    }

    @After
    public void wrapUp(Scenario scenario) throws IOException {
        try {
            ProjectWebServices.thisValue.postDefaultConfigCall();
            ProjectWebServices.thisValue = null;
        } catch (Exception e) {
            ProjectWebServices.thisValue = null;
            System.out.println("Exception is " + e.getStackTrace());
        }
        setupController.getAccessToSetup().theEnd(scenario);
    }

}
