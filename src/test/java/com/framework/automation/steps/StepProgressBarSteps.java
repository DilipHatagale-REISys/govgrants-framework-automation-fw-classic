package com.framework.automation.steps;

import com.framework.automation.pageobject.StepProgressBarPage;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class StepProgressBarSteps {
	StepProgressBarPage stepProgressBarPage;

	public StepProgressBarSteps() {
		stepProgressBarPage = new StepProgressBarPage();
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

	@Then("^I see chevron bar is in \"([^\"]*)\" color for \"([^\"]*)\" status$")
	public void assertChavronStatusBarColor(String colorName, String status) {
		stepProgressBarPage.assertExpectedColorOfChevronStatusBar(colorName, status);
	}
}