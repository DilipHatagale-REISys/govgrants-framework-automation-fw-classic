package com.framework.automation.steps;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.pageobject.FlexGridPage;

import cucumber.api.java.en.Then;

public class FlexGridSteps {
    FlexGridPage flexGridPage;

    public FlexGridSteps(Controller controller, Handlers handler) {
        flexGridPage = new FlexGridPage(controller, handler);
    }
    
    @Then("^I see \"([^\"]*)\" as header$")
    public void assertPanelheader(String headerName) {
        flexGridPage.assertHeaderNameDisplayed(headerName);
    }
}
