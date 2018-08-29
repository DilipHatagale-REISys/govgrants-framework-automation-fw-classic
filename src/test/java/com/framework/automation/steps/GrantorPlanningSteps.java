package com.framework.automation.steps;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.pageobject.GrantorPlanningPage;
import com.framework.automation.projectmanager.GovGrantsManager;
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
		grantorPlanningPage.assertquickSearchDisabled();
	}

	@Then("^I see Advance filter is disabled from planning flex table$")
	public void assertAdvanceFilterOptionDisabled() {
		grantorPlanningPage.assertDisableAdvanceFilter();
	}

	@Then("^I see Menu icon is disabled from planning flex table$")
	public void assertDisableMenuIcon() {
		grantorPlanningPage.assertDisableMenuIcon();
	}

	@Then("^i see select check box enabled in flex table$")
	public void assertOptionEnabledInFlexTable() {
		grantorPlanningPage.assertFlexTabelRecordSelectionEnabled();
	}

	@Then("^i see no total amount in flex table$")
	public void assertNoTotalAmountInFlexTable() {
		grantorPlanningPage.assertFlexTabelTotalCalulationRowDisabled();
	}

	@Then("^i see no total row count in flex table$")
	public void assertFlexTableRowCountDisabled() {
		grantorPlanningPage.assertFlexTabelRowCountDisabled();
	}

	@Then("^I see changed label as \"([^\"]*)\" of last row name$")
	public void assertRenameLastRowName(String flexTablelastRowName) {
		grantorPlanningPage.assertnewAddedLastRowLabelName(flexTablelastRowName);
	}

	@Then("^i see \"([^\"]*)\" in flex table header$")
	public void assertFlexTableHeaderName(String headerColumnName) {
		grantorPlanningPage.assertFlexTableHeaderColumnName(headerColumnName);
		;
	}

	@When("^I click on Program edit icon$")
	public void programRecordEdit() {
		grantorPlanningPage.handleProgramEditIcon();
	}

	@Then("^I see edit opens in new tab$")
	public void assertNewTabOpenOnEditClick() {
		grantorPlanningPage.assertEditWithNewTab();
	}
}
