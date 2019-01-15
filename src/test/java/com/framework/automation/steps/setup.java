package com.framework.automation.steps;

import java.awt.AWTException;
import java.io.IOException;

import com.automation.rei.controller.Controller;
import com.automation.rei.controller.SetupController;
import com.framework.automation.projectmanager.ProjectWebServices;
import com.framework.automation.projectmanager.UsersAndURL;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;

/**
 * @for REI-Systems
 * @author nauman.shahid
 * @category Handle browser initialization , appium , hooks and environments
 */

public class setup {
    private SetupController setupController;
    private ProjectWebServices projectAPI;

    public setup(Controller controller, ProjectWebServices projectAPI) {
        this.setupController = new SetupController(controller);
        this.projectAPI = projectAPI;
        this.projectAPI.setupIdBucket();
    }

    @Before(order = 1)
    public void beforeAll() {
        setupController.callDocker();
    }

    @Before
    public void startUp() throws IOException, AWTException {
        setupController.initializer();
        setupController.usersController(new UsersAndURL());
    }

    @After
    public void wrapUp(Scenario scenario) throws IOException {
        try {
            projectAPI.postDefaultConfigCall();
        } catch (Exception e) {
            System.out.println("Exception is "+e.getStackTrace());
        }
        setupController.theEnd(scenario);
    }

}
