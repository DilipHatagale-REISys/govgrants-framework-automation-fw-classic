package com.framework.automation.steps;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.pageobject.GrantorHomePage;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class GrantorHomeSteps {
    GrantorHomePage grantorHomePage;

    public GrantorHomeSteps(Controller controller, Handlers handler) {
        grantorHomePage = new GrantorHomePage(controller, handler);
    }

    @When("^I click on  \"([^\"]*)\" inside \"([^\"]*)\" in side bar sub menu$")
    public void clickSideBarSubMenu(String subTabName,String mainTabName) {
        grantorHomePage.clickAccordianSubHeader(mainTabName, subTabName);
    }

    @Then("^I see changed label as \"([^\"]*)\" inside \"([^\"]*)\" in side bar sub menu$")
    public void assertRenameSubHeaderContentName(String subTabName,String mainTabName) {
        grantorHomePage.assertnewSubHeaderContentLabel(subTabName,mainTabName);
    }

    @Then("^i see \"([^\"]*)\" shown at number \"([^\"]*)\" in sideBar$")
    public void assertSequenceOfAccordianSideBarHeader(String headerName, String sequenceNumber) {
        grantorHomePage.assertAccordianHeaderSequence(headerName, Integer.parseInt(sequenceNumber));
    }

    @Then("^I see \"([^\"]*)\" as disabled from sidebar$")
    public void assertRemovalOfTaskMenu(String headerName) {
        grantorHomePage.assertRemovalOfTaskMenu(headerName);
    }
}
