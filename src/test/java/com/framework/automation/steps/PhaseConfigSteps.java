package com.framework.automation.steps;

import com.framework.automation.pageobject.PhaseConfigPage;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class PhaseConfigSteps {
    PhaseConfigPage phaseConfigPage;

    public PhaseConfigSteps() {
        phaseConfigPage = new PhaseConfigPage();
    }

    @When("^I click on global search All$")
    public void iClickOnGlobalSearchAll() {
        phaseConfigPage.clickOnGlobalSearchAll();
    }

    @When("^I click CustomApp select dropdown$")
    public void clickCustomAppSelectDropdown() {
        phaseConfigPage.clickOnCustomAppSelectDropdown();
    }

    @When("^I enter details as \"([^\"]*)\"\"([^\"]*)\" on Add New Notes Modal for \"([^\"]*)\"$")
    public void enterValuesForAddNotesModal(String value1, String value2, String orderType) {
        phaseConfigPage.enterCompleteFieldValues(value1, value2, orderType);
    }

    @When("^I click on search button for global search$")
    public void clickPerformSearchOnGlobalSearchBox() {
        phaseConfigPage.clickOnSearchForGlobalSearchBox();
    }

    @When("^I click on textbox for global search$")
    public void clickOnGlobalSearchTextBoxBox() {
        phaseConfigPage.clickOnGlobalSearchTextBox();
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
    public void iSeeRecordsAreNotPresentInRecentlyViewedLinkInSidebar(String acronym) {
        phaseConfigPage.assertThatObjectIsNotShowingInRecentlyViewedSideBarOption(acronym);
    }

    @Then("^I see \"([^\"]*)\" inside CustomApp dropDown$")
    public void assertCustomAppInsideDropdownDisplayed(String dropDownValue) {
        phaseConfigPage.assertCustomAppValueInsideDropdownDisplayed(dropDownValue);
    }

    @Then("^I see \"([^\"]*)\" inside CustomApp dropDown not displayed$")
    public void assertCustomAppInsideDropdownNotDisplayed(String dropDownValue) {
        phaseConfigPage.assertCustomAppValueInsideDropdownNotDisplayed(dropDownValue);
    }

    @Then("^I see \"([^\"]*)\" on complete page for custom App as a Grantor$")
    public void assertContrastColorForAsaGrantorCustomApp(String contrastValue) {
        phaseConfigPage.assertContrastColourForCustomAppAsaGrantor(contrastValue);
    }

    @Then("^I see complete custom app is not displayed$")
    public void assertCustomAppIsNotDisplayed() {
        phaseConfigPage.assertCustomAppOnPage();
    }

    @Then("^I see \"([^\"]*)\" option of custom App is at position \"([^\"]*)\"$")
    public void assertSequenceOfCustomAppOptions(String option, String sequenceNumber) {
        phaseConfigPage.assertSequenceOfSpecificOptionsOfCustomApp(option, Integer.parseInt(sequenceNumber));
    }

    @Then("^I see Program record in \"([^\"]*)\" color inside my workspace$")
    public void assertColorChangeInsideMyWorkSpace(String colorName) {
        phaseConfigPage.assertProgramColourInsideCalenderDisplayed(colorName);
    }

    @Then("^I see all programs inside calender is not displayed$")
    public void assertProgramsInsideCalenderDisplayed() {
        phaseConfigPage.assertProgramIsDisplayedInsideCalender();
    }

    @Then("^I see sticky Notes text as \"([^\"]*)\"$")
    public void assertStickyNotesTextIsDisplayed(String text) {
        phaseConfigPage.assertStickyNotesText(text);
    }

    @Then("^I see alert popup box$")
    public void assertPopUpBoxForGlobalSearch() {
        phaseConfigPage.assertAlertPopUpBoxDisplayed();
    }
}