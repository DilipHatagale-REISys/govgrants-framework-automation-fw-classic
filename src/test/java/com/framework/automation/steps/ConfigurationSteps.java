package com.framework.automation.steps;

import com.framework.automation.projectmanager.ConfigurationParameters;
import com.framework.automation.projectmanager.ProjectWebServices;
import eyethink.automation.bots.Register.EyeThink;
import io.cucumber.java.en.*;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ConfigurationSteps {
    ProjectWebServices projectAPI;
    Map<String, List<Map<String, String>>> createConfigurationMap = new HashMap<>();

    public ConfigurationSteps(ProjectWebServices projectAPI) {
        this.projectAPI = projectAPI;
        this.projectAPI = projectAPI;
        this.projectAPI.setupIdBucket();
        this.projectAPI.thisValue = this.projectAPI;

    }

    @Given("I have {string} configuration as below:")
    public void defaultConfigurationSetUp(String configType, List<Map<String, String>> defaultParameters) {
        createConfigurationMap.put(configType, defaultParameters);
        ConfigurationParameters.setDefaultConfigurationParameters(createConfigurationMap);
    }

    @Given("^I setup test configuration as below:$")
    public void setupTestCofniguration(List<Map<String, String>> testConfigParameters) throws IOException {
        for (Map<String, String> parameters : testConfigParameters) {
            projectAPI.setupConfigurationForTest(parameters.get("configurationCategory"), parameters.get("fieldName"),
                    parameters.get("fieldNewValue"), parameters.get("coreComponentField"),
                    parameters.get("coreCOmponentSubFieldName"), parameters.get("coreComponentSubFieldValue"));
        }
    }

    @And("I update the locale and timezone related changes:$")
    public void iUpdateTheLocaleAndTimezone(List<Map<String, String>> configParameters) {
        for (Map<String, String> parameters : configParameters)
            projectAPI.updateLocalAndTimeZone(parameters.get("locale"), parameters.get("timeZone"));
        ProjectWebServices.dynamicApi = "localeOrTimeZone";
    }

    @And("^I update custom setting changes:$")
    public void iUpdateEnableLightningLookupFieldTo(List<Map<String, String>> configParameters) {
        for (Map<String, String> parameters : configParameters) {
            projectAPI.updateEnableLightningLookup(Boolean.parseBoolean(parameters.get("booleanValue")), Integer.parseInt(parameters.get("integerValue")), parameters.get("id"), parameters.get("description"), parameters.get("name"));
            ProjectWebServices.dynamicApi = "lightningLookUp";
        }
    }

    @And("^I update custom global setting changes:$")
    public void iUpdateGlobalEnableLightningLookupFieldTo(List<Map<String, String>> configParameters) {
        for (Map<String, String> parameters : configParameters) {
            projectAPI.updateGlobalConfig(parameters.get("booleanValue"), parameters.get("id"), parameters.get("ownerId"));
            ProjectWebServices.dynamicApi = "global";
        }
    }
}