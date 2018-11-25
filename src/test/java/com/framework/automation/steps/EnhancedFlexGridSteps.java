package com.framework.automation.steps;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.CoreHandlers;
import com.automation.rei.handlers.GovGrantsHandler;
import com.framework.automation.pageobject.EnhancedFlexGridPage;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class EnhancedFlexGridSteps {
	EnhancedFlexGridPage enhancedFlexGrid;

	public EnhancedFlexGridSteps(Controller controller, CoreHandlers handler, GovGrantsHandler govgrants) {
		enhancedFlexGrid = new EnhancedFlexGridPage(controller, handler, govgrants);
	}

	@Then("^I see Advance Filter is disabled from planning enhanced flex grid$")
	public void assertAdvanceFilterOptionDisabled() {
		enhancedFlexGrid.assertDisableAdvanceFilterFromEnhancedGrid();
	}

	@Then("^I see Menu Icon is disabled from planning enhanced flex grid$")
	public void assertDisableMenuIcon() {
		enhancedFlexGrid.assertDisableMenuIconFromEnhancedGrid();
	}

	@Then("^I see \"([^\"]*)\" shown as enhanced flex grid title$")
	public void assertEnhancedFlexGridTitle(String titleName) {
		enhancedFlexGrid.assertEnhancedFlexGridTitleDisplayed(titleName);
	}

	@Then("^I see quick search option disabled from enhanced grid$")
	public void assertQuickSearchOptionDisabledForEnhancedGrid() {
		enhancedFlexGrid.assertquickSearchDisabledForEnhancedGrid();
	}

	@Then("^I see no total row count in enhanced flex grid$")
	public void assertFlexTableRowCountDisabled() {
		enhancedFlexGrid.assertEnhancedFlexGridTabelRowCountDisabled();
	}

	@Then("^I see \"([^\"]*)\" in enhanced flex grid header$")
	public void assertFlexTableHeaderName(String headerColumnName) {
		enhancedFlexGrid.assertEnhancedFlexGridHeaderColumnName(headerColumnName);
	}

	@Then("^I see select check box enabled in enhanced flex grid$")
	public void assertOptionEnabledInFlexTable() {
		enhancedFlexGrid.assertEnhancedFlexGridRecordSelectionEnabled();
	}

	@Then("^I see no new tab is opened for action item in enhanced flex grid$")
	public void assertNoNewTabOpensOnEditClickForEnhancedGrid() {
		enhancedFlexGrid.assertEditOpenInSameTabForEnhancedGrid();
	}

	@When("^I click on \"([^\"]*)\" icon of status \"([^\"]*)\" for \"([^\"]*)\" program in enhanced flex grid$")
	public void clickAnyIconInFlexTable(String iconName, String statusName, String programSubject) {
		enhancedFlexGrid.clickTableActionIconsForSpecificSubjectInsideEnhancedGrid(programSubject, statusName,
				iconName);
	}
}