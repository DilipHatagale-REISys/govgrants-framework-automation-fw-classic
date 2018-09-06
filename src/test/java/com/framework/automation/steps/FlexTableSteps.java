package com.framework.automation.steps;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.pageobject.FlexTablePage;
import com.framework.automation.pageobject.GrantorPlanningPage;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class FlexTableSteps {
    FlexTablePage flexTablePage;

    public FlexTableSteps(Controller controller, Handlers handler) {
        flexTablePage = new FlexTablePage(controller, handler);
    }

    @When("^I click on top right parallel lines bar$")
    public void clickTopRightParallelLinesBar() {
        flexTablePage.clickRightHeaderBars();
    }

    @When("^I click on \"([^\"]*)\" icon of status \"([^\"]*)\" in flex table$")
    public void clickAnyIconInFlexTable(String iconName, String statusName) {
        flexTablePage.clickTableIcons(statusName,iconName);
    }

    @Then("^I see \"([^\"]*)\" shown as flex table title$")
    public void assertFlextableTitle(String titleName) {
        flexTablePage.assertCorrectFlexTableTitleDisplayed(titleName);
    }

    @Then("^I see \"([^\"]*)\"\"([^\"]*)\" options disabled$")
    public void assertTopRightParallelLinesBarOptionsDisabled(String option1, String option2) {
        flexTablePage.assertTopRightParallelLinesBarSpecificOptionsDisabled(option1, option2);
    }

    @Then("^I see quick search option disabled$")
    public void assertQuickSearchOptionDisabled() {
        flexTablePage.assertquickSearchDisabled();
    }

    @Then("^I see Advance filter is disabled from planning flex table$")
    public void assertAdvanceFilterOptionDisabled() {
        flexTablePage.assertDisableAdvanceFilter();
    }

    @Then("^I see Menu icon is disabled from planning flex table$")
    public void assertDisableMenuIcon() {
        flexTablePage.assertDisableMenuIcon();
    }

    @Then("^I see select check box enabled in flex table$")
    public void assertOptionEnabledInFlexTable() {
        flexTablePage.assertFlexTabelRecordSelectionEnabled();
    }

    @Then("^I see no total amount in flex table$")
    public void assertNoTotalAmountInFlexTable() {
        flexTablePage.assertFlexTabelTotalCalulationRowDisabled();
    }

    @Then("^I see no total row count in flex table$")
    public void assertFlexTableRowCountDisabled() {
        flexTablePage.assertFlexTabelRowCountDisabled();
    }

    @Then("^I see changed label as \"([^\"]*)\" of last row name$")
    public void assertRenameLastRowName(String flexTablelastRowName) {
        flexTablePage.assertnewAddedLastRowLabelName(flexTablelastRowName);
    }

    @Then("^I see \"([^\"]*)\" in flex table header$")
    public void assertFlexTableHeaderName(String headerColumnName) {
        flexTablePage.assertFlexTableHeaderColumnName(headerColumnName);
    }

    @Then("^I see no \"([^\"]*)\" status in flex table$")
    public void assertSpecificStatusCategoryNotDisplayed(String statusCategory) {
        flexTablePage.assertFlexTableStatusDisabled(statusCategory);
    }

    @Then("^I see edit opens in new tab$")
    public void assertNewTabOpenOnEditClick() {
        flexTablePage.assertEditWithNewTab();
    }
}
