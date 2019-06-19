package com.framework.automation.steps;

import com.automation.rei.controller.SetupController;
import com.framework.automation.projectmanager.ProjectWebServices;
import com.framework.automation.projectmanager.UsersAndURL;
import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import eyethink.automation.bots.controller.Controller;

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

    public setup(Controller controller) {
        this.setupController = new SetupController(controller);
    }

    @Before
    public void startUp(Scenario scenario) throws IOException, AWTException {
        setupController.getAccessToSetup().initializer(scenario);
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
