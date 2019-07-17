package com.framework.automation.steps;

import com.automation.rei.handlers.GovGrantsHandler;
import com.framework.automation.pageobject.StepProgressBarPage;
import io.cucumber.java.en.*;
import eyethink.automation.bots.controller.Controller;
import eyethink.automation.bots.controller.CoreHandlers;

public class StepProgressBarSteps {
	StepProgressBarPage stepProgressBarPage;

	public StepProgressBarSteps(Controller controller, CoreHandlers handler, GovGrantsHandler govgrants) {
		stepProgressBarPage = new StepProgressBarPage(controller, handler, govgrants);
	}

	@When("^I hovering mouse on Status inside step progress bar \"([^\"]*)\"$")
	public void getStepProgressStatusContent(String statusName) {
		stepProgressBarPage.getHoveringContentOfStepProgressBar(statusName);
	}

	@Then("^I see step progress bar is not displayed$")
	public void assertStepProgressBar() {
		stepProgressBarPage.assertStepProgressBarForCustomApp();
	}

	@Then("^I see \"([^\"]*)\" is not displayed inside step progress bar$")
	public void assertStepInsideStepProgressBar(String statusName) {
		stepProgressBarPage.assertStepInsideStepProgressBarForUser(statusName);
	}
	
	@Then("^I see \"([^\"]*)\" is displayed inside step progress bar$")
	public void assertStepInsideStepProgressBarIsDisplayed(String statusName) {
		stepProgressBarPage.assertStepInsideStepProgressBarIsDisplayedForUser(statusName);
	}

	@Then("^I see \"([^\"]*)\" status shown at number \"([^\"]*)\" in step progress bar$")
	public void assertSequenceOfAccordianSideBarHeader(String statusName, String sequenceNumber) {
		stepProgressBarPage.assertStatusSequenceInsideProgressBar(statusName, Integer.parseInt(sequenceNumber));
	}

	@Then("^I see changed display name as \"([^\"]*)\" inside step progress bar$")
	public void assertChangedDisplayNameOfStatusInsideStepProgressBar(String statusName) {
		stepProgressBarPage.assertChangedDisplayNameInsideStepProgressBarForUser(statusName);
	}
}