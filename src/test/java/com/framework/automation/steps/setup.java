package com.framework.automation.steps;

import java.io.IOException;
import com.automation.rei.controller.Controller;
import com.automation.rei.controller.EnvironmentFetcher;
import com.automation.rei.controller.SetupController;
import com.framework.automation.projectmanager.ProjectWebServices;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;

/**
 * @for REI-Systems
 * @author nauman.shahid
 * @category Handle browser initialization , appium , hooks and environments
 */

public class setup {
    private Controller controller;
    private SetupController setupController;
    private ProjectWebServices projectAPI;

    public setup(Controller controller, ProjectWebServices projectAPI) {
        this.controller = controller;
        this.setupController = new SetupController(controller);
        this.projectAPI = projectAPI;
    }

    @Before(order = 1)
    public void beforeAll() {
        setupController.callDocker();
    }

    @Before
    public void startUp() throws IOException {
        setupController.initializer();
    }

    @After
    public void wrapUp(Scenario scenario) {
        try {
            projectAPI.postReConfigCall();
        } catch (Exception e) {

        }
        setupController.theEnd(scenario);
    }

}
