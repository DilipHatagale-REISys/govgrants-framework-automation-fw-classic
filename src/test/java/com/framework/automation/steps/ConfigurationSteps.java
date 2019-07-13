package com.framework.automation.steps;

import com.framework.automation.objects.ConfigurationDataTable;
import com.framework.automation.projectmanager.ConfigurationParameters;
import com.framework.automation.projectmanager.ProjectWebServices;
import cucumber.api.java.en.Given;
import io.cucumber.datatable.DataTable;

import java.io.IOException;
import java.util.List;
import java.util.Map;

public class ConfigurationSteps {
    ProjectWebServices projectAPI;
    private Map<String, ConfigurationDataTable> configurationDataTableMap;

    public ConfigurationSteps(ProjectWebServices projectAPI) {
        this.projectAPI = projectAPI;
        this.projectAPI = projectAPI;
        this.projectAPI.setupIdBucket();
        this.projectAPI.thisValue = this.projectAPI;
    }

    @Given("^I have default configuration as below:$")
    public void defaultConfigurationSetUp(DataTable defaultParameters) throws IOException {
        ConfigurationParameters.setDefaultConfigurationParameters(defaultParameters.asMaps(String.class, String.class));
    }

    @Given("^I setup test configuration as below:$")
    public void setupTestCofniguration(List<Map<String, String>> testConfigParameters) throws IOException {
        for (Map<String, String> parameters : testConfigParameters) {
            projectAPI.setupConfigurationForTest(parameters.get("configurationCategory"), parameters.get("fieldName"),
                    parameters.get("fieldNewValue"), parameters.get("coreComponentField"),
                    parameters.get("coreCOmponentSubFieldName"), parameters.get("coreComponentSubFieldValue"));
        }
    }
}
