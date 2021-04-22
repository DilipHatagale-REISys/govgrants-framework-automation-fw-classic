package com.framework.automation.steps;

import com.framework.automation.pageobject.SideBarPage;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class SideBarSteps {
    SideBarPage sidebarPage;

    public SideBarSteps() {
        sidebarPage = new SideBarPage();
    }

    @When("^I click on  \"([^\"]*)\" inside \"([^\"]*)\" in side bar sub menu$")
    public void clickSideBarSubMenu(String subTabName, String mainTabName) {
        sidebarPage.clickAccordianSubHeader(mainTabName, subTabName);
    }

    @Then("^i see \"([^\"]*)\" shown at number \"([^\"]*)\" in sideBar$")
    public void assertSequenceOfAccordianSideBarHeader(String headerName, String sequenceNumber) {
        sidebarPage.assertSideBarHeaderSequence(headerName, Integer.parseInt(sequenceNumber));
    }

    @Then("^I (softly see|do not see) \"([^\"]*)\" at sidebar$")
    public void assertRemovalOfSideBarHeader(String usage, String headerName) {
        sidebarPage.assertRemovalOfSideBarHeader(usage, headerName);
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

    @Then("^I see sidebar sub menu has light grey background colour$")
    public void assertSidebarSubMenuHasBackgroundColour() {
        sidebarPage.asserSidebarBackgroundColor();
    }

    @Then("^I see sidebar scroll has blue colour$")
    public void assertSidebarScrollHasBlueColour() {
        sidebarPage.assertSidebarScrollHasBlueColour();
    }

    @Then("I see {string} icon displayed at {string} accordion header")
    public void iSeeIconDisplayedAtAccordionHeader(String iconCssValue, String accodionHeaderName) {
        sidebarPage.assertIconDisplayedAtAccordionHeader(iconCssValue, accodionHeaderName);
    }

    @Then("I softly see record {string} is displayed inside autosuggestion dropdown at global search")
    public void iSeeRecordIsDisplayedInsideAutosuggestionDropdownAtGlobalSearch(String recordId) {
        sidebarPage.assertRecordInAutoSuggestedDropdownAtGlobalSearch(recordId);
    }
}