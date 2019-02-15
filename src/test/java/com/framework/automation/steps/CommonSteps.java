package com.framework.automation.steps;

import org.springframework.context.annotation.Description;

import com.automation.rei.handlers.GovGrantsHandler;
import com.framework.automation.projectmanager.GovGrantsManager;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import eyethink.automation.bots.controller.Controller;
import eyethink.automation.bots.controller.CoreHandlers;

public class CommonSteps {
	GovGrantsManager govGrantsManager;

	public CommonSteps(Controller controller, CoreHandlers handler, GovGrantsHandler govgrants) {
		govGrantsManager = new GovGrantsManager(controller, handler, govgrants);
	}

	@Description("click in admin menu to rechout to govegrants homepage")
	@When("^I access the \"([^\"]*)\" for \"([^\"]*)\" app$")
	public void accessthehomepage(String tabName, String appName) {
		govGrantsManager.clickAdminNavBar(tabName, appName);
	}

	@When("^I download the file$")
	public void saveTheFileToProjectRoot() throws Throwable {
		govGrantsManager.saveFile();
	}

	@Then("^I see page title \"([^\"]*)\"$")
	public void asserPageTitle(String pageTitle) {
		govGrantsManager.assertPageTitle(pageTitle);
	}

	@Then("^I see \"([^\"]*)\" in current url$")
	public void assertPlanningDefaultLandingTab(String content) {
		govGrantsManager.assertCurrentURL(content);
		;
	}

	@Then("^I do not see \"([^\"]*)\" in pdf$")
	public void textNotDisplayedInPdf(String text) {

	}
}
