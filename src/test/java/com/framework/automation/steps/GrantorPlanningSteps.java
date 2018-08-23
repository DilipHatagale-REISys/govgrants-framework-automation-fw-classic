package com.framework.automation.steps;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.pageobject.GrantorPlanningPage;

import cucumber.api.java.en.Then;

public class GrantorPlanningSteps {
    GrantorPlanningPage grantorPlanningPage;

    public GrantorPlanningSteps(Controller controller, Handlers handler) {
        grantorPlanningPage = new GrantorPlanningPage(controller, handler);
    }

    @Then("^i see \"([^\"]*)\" shown as flex table title$")
    public void assertFlextableTitle(String titleName) {
        grantorPlanningPage.assertCorrectFlexTableTitleDisplayed(titleName);
    }
}
