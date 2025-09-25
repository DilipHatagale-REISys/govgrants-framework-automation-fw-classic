package com.framework.automation.steps;

import com.framework.automation.pageobject.PhaseConfigPage;
import io.cucumber.java.en.*;

public class PhaseConfigSteps {
    PhaseConfigPage phaseConfigPage;

    public PhaseConfigSteps() {
        phaseConfigPage = new PhaseConfigPage();
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

//    @Then("^I do not see \"([^\"]*)\" phase$")
//    public void assertPhaseNotDisplayed(String phaseName) {
//       phaseConfigPage.assertSpecificPhaseNotDisplayed(phaseName);
//    }

    @Then("^I (softly see|see|do not see|softly do not see) \"([^\"]*)\" phase$")
    public void asserPhaseDisplayed(String usage,String phaseName) {
        phaseConfigPage.assertSpecificPhaseDisplayed(usage, phaseName);
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

   @Then("^I (see|donot see) \"([^\"]*)\" in task summary by phase$")
   public void assertSpecificPhaseNotDisplayedInTaskSummaryByPhase(String shouldBeDisplayed, String phaseName) {
       phaseConfigPage.assertPhaseNotDisplayedInTaskSummaryByPhase(shouldBeDisplayed, phaseName);
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

    @Then("^I see \"([^\"]*)\" records are present in Recently Viewed link in Sidebar$")
    public void iSeeRecordsArePresentInRecentlyViewedLinkInSidebar(String acronym) {
        phaseConfigPage.assertThatObjectIsShowingInRecentlyViewedSideBarOption(acronym);
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

    @Then("^I see sticky Notes \"([^\"]*)\" contains text as \"([^\"]*)\"$")
    public void assertStickyNotesTextIsDisplayed(String stickyTitle, String text) {
        phaseConfigPage.assertStickyNotesText(stickyTitle, text);
    }

    @Then("^I donot see sticky Notes \"([^\"]*)\" contains text as \"([^\"]*)\"$")
    public void assertStickyNotesTextIsNotDisplayed(String stickyTitle, String text) {
        phaseConfigPage.assertStickyNotesTextNotDisplayed(stickyTitle, text);
    }

    @Then("^I (see|do not see) alert popup box$")
    public void assertPopUpBoxForGlobalSearch(String usage) {
        phaseConfigPage.assertAlertPopUpBoxDisplayed(usage);
    }

    @Then("^I see current date on sticky Notes$")
    public void assertStickyNotesDateIsDiplayed() {
        phaseConfigPage.assertStickyNotesCurrentDate();
    }

    @Then("^I see govgrants logo \"([^\"]*)\" is displayed with name \"([^\"]*)\"$")
    public void assertProductLogoWithNameIsDiplayed(String logo, String logoName) {
        phaseConfigPage.assertGovGrantsLogoAndNAme(logo, logoName);
    }

    @Then("^I see \"([^\"]*)\" records are present in pending task table$")
    public void assertExpectedRecordListPresentInPendingTasksTable(String recordIdText) {
        phaseConfigPage.assertTableContainsOnlyProgramRecords(recordIdText);
    }

    @Then("^I see task count for \"([^\"]*)\" phase with the total records of flex table id \"([^\"]*)\"$")
    public void assetTaskCountForPhaseWithTheTotalRecordsOfFlexTableId(String phaseName, String tableID) {
        phaseConfigPage.assertTaskCount(phaseName,tableID);
    }

    @Then("^I see page is in \"([^\"]*)\" color$")
    public void assertCustomAppColor(String colorName) {
        phaseConfigPage.assertPageColorForCustomApp(colorName);
    }

    @Then("^I see header action has \"([^\"]*)\" background color$")
    public void assertHeaderActionButtonBackgroundColor(String colorName) {
        phaseConfigPage.assertHeaderActionButtonBackgroundColor(colorName);
    }

    @Then("^I see page footer is in \"([^\"]*)\" color$")
    public void assertPageFooterColor(String colorName) {
        phaseConfigPage.assertPageFooterColor(colorName);
    }

    @Then("^I see sidebar has \"([^\"]*)\" background color$")
    public void assertSidebarButtonBackgroundColor(String colorName) {
        phaseConfigPage.asserSidebarBackgroundColor(colorName);
    }

    @Then("I see active tab has White background colour")
    public void assertActiveTabHasBackgroundColour() {
        phaseConfigPage.assertActiveTabHasBackgroundColour();
    }

    @Then("^I see active tab has Black background colour at my workspace section$")
    public void activeTabHasBlackBackgroundColourAtMyWorkspaceSection() {
        phaseConfigPage.assertActiveTabBackgroundColorAtMyWorkspaceSection();
    }

    @Then("I see {string} at {string} inside task summary by due date chart")
    public void iSeeAtInsideTaskSummaryByDueDateChart(String taskCount, String title) {
        phaseConfigPage.assertLateCountInsideTaskSummaryByDueDateChart(taskCount, title);
    }

    @Then("I see option {string} on left panel")
    public void iSeeOptionOnLeftPanel(String option) {
        phaseConfigPage.assertOptionOnLeftPanel(option);
    }

    @Then("^I (see|do not see) single row contains single chart with width \"([^\"]*)\" or \"([^\"]*)\"$")
    public void iSeeSingleRowContainsSingleChartWithWidthOr(String usage, String width1, String width2) {
        phaseConfigPage.assertChartCountAvailableOnSingleRow(usage, width1, width2);
    }

    @Then("^I (see|do not see) single row contains two charts with width \"([^\"]*)\" or \"([^\"]*)\"$")
    public void iSeeSingleRowContainsTwoChartsWithWidthOr(String usage, String width1, String width2) {
        phaseConfigPage.assertChartCountAvailableOnSingleRow(usage, width1, width2);
    }

    @And("^I click on \"([^\"]*)\" footer link$")
    public void iClickOnFooterLink(String linkName) {
        phaseConfigPage.clickOnFooterLink(linkName);
    }
}