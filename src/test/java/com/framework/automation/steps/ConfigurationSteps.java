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

	public ConfigurationSteps(Controller controller, Handlers handler, ProjectWebServices projectAPI) {
		govGrantsManager = new GovGrantsManager(controller, handler);
		this.projectAPI = projectAPI;
	}

	@Given("^I setup filter clause for \"([^\"]*)\" in \"([^\"]*)\" for field \"([^\"]*)\" having value \"([^\"]*)\"$")
	public void setUpFilterClause(String componentName, String ComponentCoreFieldName, String fieldName, String value) {
		projectAPI.initilizeSalesForceIdFilter(componentName, ComponentCoreFieldName, fieldName, value);
	}

	@Given("^I have default configuration for \"([^\"]*)\" field \"([^\"]*)\" as \"([^\"]*)\" with filter \"([^\"]*)\"$")
	public void setComponentToDefault(String componentName, String fieldName, String orignalValue, String newValue) {
		projectAPI.setUpDefaultParameters(componentName, fieldName, orignalValue, newValue);
	}

	@Given("^I reconfigure \"([^\"]*)\" field \"([^\"]*)\" as \"([^\"]*)\"$")
	public void configurecomponent(String componentName, String fieldName, String value) {
		projectAPI.setConfigurationTest(componentName, fieldName, value);
	}
}
