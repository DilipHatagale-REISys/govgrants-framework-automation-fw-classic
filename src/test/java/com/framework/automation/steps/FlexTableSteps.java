package com.framework.automation.steps;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.GovGrantsHandler;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.pageobject.FlexTablePage;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class FlexTableSteps {
    FlexTablePage flexTablePage;

    public FlexTableSteps(Controller controller, Handlers handler, GovGrantsHandler govgrants) {
        flexTablePage = new FlexTablePage(controller, handler, govgrants);
    }

    @When("^I click on top right parallel lines bar$")
    public void clickTopRightParallelLinesBar() {
        flexTablePage.clickRightHeaderBars();
    }

    @When("^I click on \"([^\"]*)\" icon of status \"([^\"]*)\" for \"([^\"]*)\" program in flex table$")
    public void clickAnyIconInFlexTable(String iconName, String statusName,String programSubject) {
        flexTablePage.clickTableActionIconsForSpecificSubject(programSubject, statusName, iconName);
    }
    
    @When("^I click on \"([^\"]*)\" icon for \"([^\"]*)\" to save inside subtab$")
    public void clickAnyIconInFlexTable(String iconName,String programRole) {
        flexTablePage.clickRowLevelActionIconsInsideSubTab(programRole, iconName);
        flexTablePage.clickSaveInModal();
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

    @Then("^I see new tab is opened$")
    public void assertNewTabOpenOnEditClick() {
        flexTablePage.assertEditWithNewTab();
    }
    
    @Then("^I see no new tab is opened$")
    public void assertNoNewTabOpensOnEditClick() {
        flexTablePage.assertEditOpenInSameTab();
    }
    
    @Then("^I see \"([^\"]*)\" opens in overLay window$")
    public void assertEditOpensInOverLayWindow(String titleName) {
        flexTablePage.asserTextInOverLayIframe(titleName);
    }
    
    @Then("^I see entire page is refreshing$")
    public void assertEntirePageRefresh() {
    	flexTablePage.asserEntirePageRefreshOnButtonClick();
    }
}
