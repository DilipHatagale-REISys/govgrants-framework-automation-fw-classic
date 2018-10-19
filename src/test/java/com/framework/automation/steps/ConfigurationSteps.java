package com.framework.automation.steps;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.context.annotation.Description;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.projectmanager.ConfigurationParameters;
import com.framework.automation.projectmanager.GovGrantsManager;
import com.framework.automation.projectmanager.ProjectWebServices;

import cucumber.api.DataTable;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;

public class ConfigurationSteps {
    GovGrantsManager govGrantsManager;
    ProjectWebServices projectAPI;

    public ConfigurationSteps(Controller controller, Handlers handler, ProjectWebServices projectAPI) {
        govGrantsManager = new GovGrantsManager(controller, handler);
        this.projectAPI = projectAPI;
    }

    @Description("Setting up configuration back to default")
    @Given("^I have default configuration for \"([^\"]*)\" field \"([^\"]*)\" as \"([^\"]*)\" with filter \"([^\"]*)\" for field \"([^\"]*)\"$")
    public void setComponentToDefault(String componentName, String fieldName, String orignalValue,
            String newFilterComponentCoreFieldName, String newFilterLabelValue) throws IOException {
        if (newFilterLabelValue.contains("Automation Program")) {
            projectAPI.setUpDefaultProgramParameters(componentName, fieldName, orignalValue, newFilterLabelValue);
        } else {

        }
    }

    @Description("Setting up configuration for programs")
    @Given("^I setup \"([^\"]*)\" field \"([^\"]*)\" as \"([^\"]*)\" with filter clause on field \"([^\"]*)\"$")
    public void setUpProgramStatus(String componentName, String fieldName, String value, String filterField)
            throws IOException {
        projectAPI.initilizeSalesForceIdFilter_Program(componentName, filterField, "", "");
        projectAPI.setConfigurationForProgram(componentName, fieldName, value);
    }

    /////////// New Config steps//////////////////
    @Given("^I have default configuration as below:$")
    public void defaultConfigurationSetUp(DataTable defaultParameters) throws IOException {
        ConfigurationParameters.setDefaultConfigurationParameters(defaultParameters.asMaps(String.class, String.class));
    }

    @Given("^I setup test configuration as below:$")
    public void setupTestCofniguration(DataTable testConfigParameters) throws IOException {
        for (Map<String, String> parameters : testConfigParameters.asMaps(String.class, String.class)) {
            projectAPI.setupConfigurationForTest(parameters.get("configurationCategory"), parameters.get("fieldName"),
                    parameters.get("fieldNewValue"), parameters.get("coreComponentField"),
                    parameters.get("coreCOmponentSubFieldName"), parameters.get("coreComponentSubFieldValue"));
        }
    }
}
