package com.framework.automation.steps;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.projectmanager.GovGrantsManager;
import com.framework.automation.projectmanager.ProjectWebServices;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;

public class ConfigurationSteps {
    GovGrantsManager govGrantsManager;
    ProjectWebServices projectAPI;
    int myCount = 0;

    public ConfigurationSteps(Controller controller, Handlers handler, ProjectWebServices projectAPI) {
        govGrantsManager = new GovGrantsManager(controller, handler);
        this.projectAPI = projectAPI;
    }

    @And("^I reconfigure \"([^\"]*)\" with \"([^\"]*)\" for \"([^\"]*)\" as \"([^\"]*)\"$")
    public void configurecomponent(String componentName, String componentCoreFieldName, String fieldLabel,
            String value) {
        projectAPI.setConfiguration(componentName, componentCoreFieldName, fieldLabel, value);
    }

    @Given("^I have default configuration of \"([^\"]*)\" with \"([^\"]*)\" for \"([^\"]*)\" as \"([^\"]*)\"$")
    public void recofnigureComponentToDefault(String componentName, String componentCoreFieldName, String fieldLabel,
            String value) {
        projectAPI.setUpDefaultParameters(componentName, componentCoreFieldName, fieldLabel, value);
    }
}
