package com.framework.automation.steps;

import java.io.IOException;

import org.springframework.context.annotation.Description;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.projectmanager.GovGrantsManager;
import com.framework.automation.projectmanager.ProjectWebServices;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;

public class ConfigurationSteps {
    GovGrantsManager govGrantsManager;
    ProjectWebServices projectAPI;

    public ConfigurationSteps(Controller controller, Handlers handler, ProjectWebServices projectAPI) {
        govGrantsManager = new GovGrantsManager(controller, handler);
        this.projectAPI = projectAPI;
    }

    @Description("Set up filter clause to grab ID")
    @Given("^I setup filter clause for \"([^\"]*)\" in \"([^\"]*)\" for field \"([^\"]*)\" having value \"([^\"]*)\"$")
    public void setUpFilterClause(String componentName, String ComponentCoreFieldName, String fieldName, String value) {
        projectAPI.initilizeSalesForceIdFilter(componentName, ComponentCoreFieldName, fieldName, value);
    }

    @Description("Setting up configuration back to default")
    @Given("^I have default configuration for \"([^\"]*)\" field \"([^\"]*)\" as \"([^\"]*)\" with filter \"([^\"]*)\"$")
    public void setComponentToDefault(String componentName, String fieldName, String orignalValue, String newFilterValue)
            throws IOException {
        if(newFilterValue.contains("Automation Program")) {
            projectAPI.setUpDefaultProgramParameters(componentName, fieldName, orignalValue, newFilterValue);
        }else {
        projectAPI.setUpDefaultParameters(componentName, fieldName, orignalValue, newFilterValue);
        }
    }

    @Description("Setting up configuration for test")
    @Given("^I reconfigure \"([^\"]*)\" field \"([^\"]*)\" as \"([^\"]*)\"$")
    public void configurecomponent(String componentName, String fieldName, String value) throws IOException {
        projectAPI.setConfigurationTest(componentName, fieldName, value);
    }

    @Description("Setting up configuration for programs")
    @Given("^I setup \"([^\"]*)\" field \"([^\"]*)\" as \"([^\"]*)\" with filter clause on field \"([^\"]*)\"$")
    public void setUpProgramStatus(String componentName, String fieldName, String value, String filterField)
            throws IOException {
        projectAPI.initilizeSalesForceIdFilter_Program(componentName, filterField, "", "");
        projectAPI.setConfigurationForProgram(componentName, fieldName, value);
    }
}
