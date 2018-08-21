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

    @Given("^I reconfigure \"([^\"]*)\" with \"([^\"]*)\" for \"([^\"]*)\" as \"([^\"]*)\" from \"([^\"]*)\"$")
    public void configurecomponent(String componentName, String componentCoreFieldName, String fieldLabel,
            String value,String subCCFieldName) {
        projectAPI.setConfiguration(componentName, componentCoreFieldName, fieldLabel, value,subCCFieldName);
    }

    @Given("^I have default configuration of \"([^\"]*)\" with \"([^\"]*)\" for \"([^\"]*)\" as \"([^\"]*)\" from \"([^\"]*)\"$")
    public void setComponentToDefault(String componentName, String componentCoreFieldName, String fieldLabel,
            String value,String subCCFieldName) {
        projectAPI.setUpDefaultParameters(componentName, componentCoreFieldName, fieldLabel, value,subCCFieldName);
    }
}
