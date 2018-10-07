package com.framework.automation.steps;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.pageobject.EnhancedFlexGridPage;
import cucumber.api.java.en.Then;

public class EnhancedFlexGridSteps {
	EnhancedFlexGridPage enhancedFlexGrid;

	public EnhancedFlexGridSteps(Controller controller, Handlers handler) {
		enhancedFlexGrid = new EnhancedFlexGridPage(controller, handler);
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
}
