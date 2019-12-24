package com.framework.automation.steps;

import com.framework.automation.projectmanager.ConfigurationParameters;
import com.framework.automation.projectmanager.ProjectWebServices;
import io.cucumber.java.en.*;
import java.io.IOException;
import java.util.List;
import java.util.Map;

public class ConfigurationSteps {
    ProjectWebServices projectAPI;

    public ConfigurationSteps(ProjectWebServices projectAPI) {
        this.projectAPI = projectAPI;
        this.projectAPI = projectAPI;
        this.projectAPI.setupIdBucket();
        this.projectAPI.thisValue = this.projectAPI;
    }

    @Given("^I have default configuration as below:$")
    public void defaultConfigurationSetUp(List<Map<String, String>> defaultParameters) throws IOException {
        ConfigurationParameters.setDefaultConfigurationParameters(defaultParameters);
    }

    @Given("^I setup test configuration as below:$")
    public void setupTestCofniguration(List<Map<String, String>> testConfigParameters) throws IOException {
        for (Map<String, String> parameters : testConfigParameters) {
            projectAPI.setupConfigurationForTest(parameters.get("configurationCategory"), parameters.get("fieldName"),
                    parameters.get("fieldNewValue"), parameters.get("coreComponentField"),
                    parameters.get("coreCOmponentSubFieldName"), parameters.get("coreComponentSubFieldValue"));
        }
    }

    @And("I update the locale \"([^\"]*)\" and timezone \"([^\"]*)\"$")
    public void iUpdateTheLocaleAndTimezone(String locale, String timezone) {
        projectAPI.updateLocalAndTimeZone(locale,timezone);
    }

    @And("I update enable Lightning Lookup Field to \"([^\"]*)\"$")
    public void iUpdateEnableLightningLookupFieldTo(String booleanValue) {
        projectAPI.updateEnableLightningLookup(Boolean.parseBoolean(booleanValue));
    }
}
