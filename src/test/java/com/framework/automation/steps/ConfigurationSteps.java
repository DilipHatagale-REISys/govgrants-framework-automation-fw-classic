package com.framework.automation.steps;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.projectmanager.GovGrantsManager;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;

public class ConfigurationSteps {
    GovGrantsManager govGrantsManager;

    public ConfigurationSteps(Controller controller, Handlers handler) {
        govGrantsManager = new GovGrantsManager(controller, handler);
    }

    @Given("^I configure \"([^\"]*)\" with \"([^\"]*)\" for \"([^\"]*)\" as \"([^\"]*)\"$")
    public void configurecomponent(String componentName, String componentCoreFieldName, String fieldLabel,
            String value) {
        govGrantsManager.initializeConfiguration(componentName, componentCoreFieldName, fieldLabel, value);
    }

    @And("^I reconfigure \"([^\"]*)\" with \"([^\"]*)\" for \"([^\"]*)\" as \"([^\"]*)\"$")
    public void recofnigureComponentToDefault(String componentName, String componentCoreFieldName, String fieldLabel,
            String value) {
        govGrantsManager.initializeConfiguration(componentName, componentCoreFieldName, fieldLabel, value);
    }
}
