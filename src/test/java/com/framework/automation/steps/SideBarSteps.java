package com.framework.automation.steps;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.pageobject.SideBarPage;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class SideBarSteps {
    SideBarPage sidebarPage;

    public SideBarSteps(Controller controller, Handlers handler) {
        sidebarPage = new SideBarPage(controller, handler);
    }

    @When("^I click on  \"([^\"]*)\" inside \"([^\"]*)\" in side bar sub menu$")
    public void clickSideBarSubMenu(String subTabName, String mainTabName) {
        sidebarPage.clickAccordianSubHeader(mainTabName, subTabName);
    }

    @Then("^i see \"([^\"]*)\" shown at number \"([^\"]*)\" in sideBar$")
    public void assertSequenceOfAccordianSideBarHeader(String headerName, String sequenceNumber) {
        sidebarPage.assertSideBarHeaderSequence(headerName, Integer.parseInt(sequenceNumber));
    }

    @Then("^I see \"([^\"]*)\" as disabled from sidebar$")
    public void assertRemovalOfSideBarHeader(String headerName) {
        sidebarPage.assertRemovalOfSideBarHeader(headerName);
    }

    @Then("^I see changed label as \"([^\"]*)\" inside \"([^\"]*)\" in side bar sub menu$")
    public void assertRenameSubHeaderContentName(String subTabName, String mainTabName) {
        sidebarPage.assertnewSubHeaderContentLabel(subTabName, mainTabName);
    }

    @Then("^i see \"([^\"]*)\" shown at number \"([^\"]*)\" inside \"([^\"]*)\"$")
    public void assertSequenceOfAccordianHeader(String accordianHeaderName, String number, String headerName) {
        sidebarPage.assertAccordianHeaderSequence(accordianHeaderName, Integer.parseInt(number), headerName);
    }

    @Then("^I see changed label as \"([^\"]*)\" inside \"([^\"]*)\" in side accordion header menu$")
    public void assertRenameAccordionHeaderLabelName(String subTabName, String mainTabName) {
        sidebarPage.assertnewAccordionHeaderLabel(subTabName, mainTabName);
    }

    @Then("^I see \"([^\"]*)\" shown at number \"([^\"]*)\" inside \"([^\"]*)\"$")
    public void assertSequenceOfAccordianContent(String accordianHeaderName, String number, String headerName) {
        sidebarPage.assertAccordianContentSequence(accordianHeaderName, Integer.parseInt(number), headerName);
    }

    @Then("^I see \"([^\"]*)\" in new tab$")
    public void assertNewTabOpensForAccordionContent(String pageTitle) {
        sidebarPage.assertAccordionContentWithNewTab(pageTitle);
    }

}
