package com.framework.automation.steps;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.pageobject.GrantorPlanningPage;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class GrantorPlanningSteps {
    GrantorPlanningPage grantorPlanningPage;

    public GrantorPlanningSteps(Controller controller, Handlers handler) {
        grantorPlanningPage = new GrantorPlanningPage(controller, handler);
    }

    @When("^I click on top right parallel lines bar$")
    public void clickTopRightParallelLinesBar() {
        grantorPlanningPage.clickRightHeaderBars();
    }

    @Then("^i see \"([^\"]*)\"\"([^\"]*)\" options disabled$")
    public void assertTopRightParallelLinesBarOptionsDisabled(String option1, String option2) {
        grantorPlanningPage.assertTopRightParallelLinesBarSpecificOptionsDisabled(option1, option2);
    }
    
    @Then("^i see \"([^\"]*)\" shown as flex table title$")
    public void assertFlextableTitle(String titleName) {
        grantorPlanningPage.assertCorrectFlexTableTitleDisplayed(titleName);
    }
    
    @Then("^i see quick search option disabled$")
    public void assertQuickSearchOptionDisabled() {
        grantorPlanningPage.assertQuickSearchDisabled();
    }
    
    @Then("^i see select check box enabled in flex table$")
    public void assertOptionEnabledInFlexTable() {
        grantorPlanningPage.assertFlexTabelRecordSelectionEnabled();
    }

}
