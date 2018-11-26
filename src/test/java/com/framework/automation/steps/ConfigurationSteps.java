package com.framework.automation.steps;

import java.io.IOException;
import java.util.Map;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.CoreHandlers;
import com.automation.rei.handlers.GovGrantsHandler;
import com.framework.automation.projectmanager.ConfigurationParameters;
import com.framework.automation.projectmanager.GovGrantsManager;
import com.framework.automation.projectmanager.ProjectWebServices;

import cucumber.api.DataTable;
import cucumber.api.java.en.Given;

public class ConfigurationSteps {
    GovGrantsManager govGrantsManager;
    ProjectWebServices projectAPI;

    public ConfigurationSteps(Controller controller, CoreHandlers handler, ProjectWebServices projectAPI, GovGrantsHandler govgrants) {
        govGrantsManager = new GovGrantsManager(controller, handler, govgrants);
        this.projectAPI = projectAPI;
    }

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
