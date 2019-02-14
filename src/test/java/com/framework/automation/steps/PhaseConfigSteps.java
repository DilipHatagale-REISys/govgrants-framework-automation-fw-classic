package com.framework.automation.steps;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.CoreHandlers;
import com.automation.rei.handlers.GovGrantsHandler;
import com.framework.automation.pageobject.PhaseConfigPage;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class PhaseConfigSteps {
	PhaseConfigPage phaseConfigPage;

	public PhaseConfigSteps(Controller controller, CoreHandlers handler, GovGrantsHandler govgrants) {
		phaseConfigPage = new PhaseConfigPage(controller, handler, govgrants);
	}

	@When("^I click on global search All$")
	public void iClickOnGlobalSearchAll() {
		phaseConfigPage.clickOnGlobalSearchAll();
	}

	@Then("^I do not see \"([^\"]*)\" phase$")
	public void assertPhaseNotDisplayed(String phaseName) {
		phaseConfigPage.assertSpecificPhaseNotDisplayed(phaseName);
	}

	@Then("^I see \"([^\"]*)\" phase$")
	public void asserPhaseDisplayed(String phaseName) {
		phaseConfigPage.assertSpecificPhaseDisplayed(phaseName);
	}

	@Then("^I see \"([^\"]*)\" phase at position \"([^\"]*)\"$")
	public void i_see_phase_at_position(String phaseName, String sequenceNumber) {
		phaseConfigPage.assertSequenceOfPhase(phaseName, Integer.parseInt(sequenceNumber));
	}

	@Then("^I see \"([^\"]*)\" charts are displayed$")
	public void assertNumberOfChartsDisplayed(String numberOfCharts) {
		phaseConfigPage.assertNumberOfChartsDisplayed(Integer.parseInt(numberOfCharts));
	}

	@Then("^I charts are displayed at \"([^\"]*)\"$")
	public void assertPostionOfChartsDisplayedAt(String position) {
		phaseConfigPage.assertPostionOfChartsDisplayed(position);
	}

	@Then("^I do not see \"([^\"]*)\" in task summary by phase$")
	public void assertSpecificPhaseNotDisplayedInTaskSummaryByPhase(String phaseName) {
		phaseConfigPage.assertPhaseNotDisplayedInTaskSummaryByPhase(phaseName);
	}

	@Then("^I see book icon as \"([^\"]*)\" tab$")
	public void i_see_book_icon_as_tab(String phaseName) {
		phaseConfigPage.assertPhaseBookIconDisplayed(phaseName);
	}

	@Then("^I see \"([^\"]*)\" tab is highlighted for particular program$")
	public void assertHighlightedPhaseTab(String phaseName) {
		phaseConfigPage.assertTabHighlightedInsideNewTab(phaseName);
	}

	@Then("^I see \"([^\"]*)\" in search dropdown$")
	public void assertGlobalSearchDropdownItems(String searchName) {
		phaseConfigPage.assertChangedLabelOfSearchedItemsInGlobalSearchAll(searchName);
	}

	@Then("^I see \"([^\"]*)\" is not displayed in global search All dropdown$")
	public void assertItemsNotDisplayedInGlobalSearchAllDropdown(String searchItem) {
		phaseConfigPage.assertSearchedItemIsNotDisplayedInGlobalSearchAll(searchItem);
	}

	@Then("^I see \"([^\"]*)\" records are not present in Recently Viewed link in Sidebar$")
	public void iSeeRecordsAreNotPresentInRecentlyViewedLinkInSidebar(String objectType) {
		phaseConfigPage.assertThatObjectIsNotShowingInRecentlyViewedSideBarOption(objectType);
	}
}
