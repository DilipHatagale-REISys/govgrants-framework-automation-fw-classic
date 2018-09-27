package com.framework.automation.steps;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.pageobject.StepProgressBarPage;

import cucumber.api.java.en.Then;

public class StepProgressBarSteps {

	StepProgressBarPage stepProgressBarPage;

	public StepProgressBarSteps(Controller controller, Handlers handler) {
		stepProgressBarPage = new StepProgressBarPage(controller, handler);
	}

	@Then("^I see step progress bar is not displayed$")
	public void assertStepProgressBar() {
		stepProgressBarPage.assertStepProgressBarForCustomApp();
	}

	@Then("^I see \"([^\"]*)\" is not displayed inside step progress bar$")
	public void assertStepInsideStepProgressBar(String statusName) {
		stepProgressBarPage.assertStepInsideStepProgressBarForUser(statusName);
	}

	@Then("^I see \"([^\"]*)\" status shown at number \"([^\"]*)\" in step progress bar$")
	public void assertSequenceOfAccordianSideBarHeader(String statusName, String sequenceNumber) {
		stepProgressBarPage.assertStatusSequenceInsideProgressBar(statusName, Integer.parseInt(sequenceNumber));
	}

	@Then("^I see step progress bar displayed in \"([^\"]*)\" color for status \"([^\"]*)\"$")
	public void assertStepProgressBarColor(String color, String status) {
		stepProgressBarPage.assertStepProgressBarAppearence(color, status);
	}
}