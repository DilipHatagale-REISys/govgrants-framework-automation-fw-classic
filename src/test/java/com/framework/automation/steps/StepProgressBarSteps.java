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
		stepProgressBarPage.assertStepProgressBarForGrantor();
	}
}
