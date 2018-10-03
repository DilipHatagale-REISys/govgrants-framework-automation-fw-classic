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
	
	@Then("^I see Advance filter is disabled from planning enhanced flex grid$")
    public void assertAdvanceFilterOptionDisabled() {
        enhancedFlexGrid.assertDisableAdvanceFilterFromEnhancedGrid();
    }
}
