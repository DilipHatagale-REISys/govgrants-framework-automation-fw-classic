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

	@When("^I start the approval of type \"([^\"]*)\" with subject as \"([^\"]*)\"$")
	public void startApproval(String programType, String programSubject) {
		grantorPlanningPage.clickStartApprovalButton(programSubject, programType);
	}

	@Then("^I see \"([^\"]*)\"\"([^\"]*)\" options disabled$")
	public void assertTopRightParallelLinesBarOptionsDisabled(String option1, String option2) {
		grantorPlanningPage.assertTopRightParallelLinesBarSpecificOptionsDisabled(option1, option2);
	}

	@Then("^I see \"([^\"]*)\" shown as flex table title$")
	public void assertFlextableTitle(String titleName) {
		grantorPlanningPage.assertCorrectFlexTableTitleDisplayed(titleName);
	}

	@Then("^I see quick search option disabled$")
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

	@Then("^I see select check box enabled in flex table$")
	public void assertOptionEnabledInFlexTable() {
		grantorPlanningPage.assertFlexTabelRecordSelectionEnabled();
	}

	@Then("^I see no total amount in flex table$")
	public void assertNoTotalAmountInFlexTable() {
		grantorPlanningPage.assertFlexTabelTotalCalulationRowDisabled();
	}

	@Then("^I see no total row count in flex table$")
	public void assertFlexTableRowCountDisabled() {
		grantorPlanningPage.assertFlexTabelRowCountDisabled();
	}

	@Then("^I see changed label as \"([^\"]*)\" of last row name$")
	public void assertRenameLastRowName(String flexTablelastRowName) {
		grantorPlanningPage.assertnewAddedLastRowLabelName(flexTablelastRowName);
	}

	@Then("^I see \"([^\"]*)\" in flex table header$")
	public void assertFlexTableHeaderName(String headerColumnName) {
		grantorPlanningPage.assertFlexTableHeaderColumnName(headerColumnName);
	}

	@When("^I click on \"([^\"]*)\" icon of status \"([^\"]*)\" in flex table$")
	public void clickAnyIconInFlexTable(String iconName, String statusName) {
		grantorPlanningPage.clickTableIcons(statusName, iconName);
	}

	@When("^I click on \"([^\"]*)\" button in right header$")
	public void clickbuttonOnRightHeader(String buttonName) {
		grantorPlanningPage.getRightHeaderButton(buttonName).click();
	}

	@When("^I select \"([^\"]*)\" from approval decision panel$")
	public void SelectApprovalDecisionPannel(String radioName) {
		grantorPlanningPage.selectApproveDecisionOption(radioName);
	}

	@Then("^I see edit opens in new tab$")
	public void assertNewTabOpenOnEditClick() {
		grantorPlanningPage.assertEditWithNewTab();
	}

	@Then("^I see no \"([^\"]*)\" status in flex table$")
	public void assertSpecificStatusCategoryNotDisplayed(String statusCategory) {
		grantorPlanningPage.assertFlexTableStatusDisabled(statusCategory);
	}

	@Then("^I see \"([^\"]*)\" shown as over view title in header \"([^\"]*)\"$")
	public void assertOverViewTitleWithHeader(String overViewTitle, String overViewHeader) {
		grantorPlanningPage.assertOverViewTitleWithHeader(overViewTitle, overViewHeader);
	}

	@Then("^I see \"([^\"]*)\" shown as page instruction text$")
	public void assertPageInstructionText(String pageInstructionText) {
		grantorPlanningPage.assertPageInstructionText(pageInstructionText);
	}

	@Then("^I see \"([^\"]*)\" shown as over view header$")
	public void assertOverViewHeaderDisplayed(String headerName) {
		grantorPlanningPage.assertOverViewHeaderDisplayed(headerName);
	}

	@Then("^I see Download as PDF options disabled$")
	public void assertPDFDownloadOptionsDisabled() {
		grantorPlanningPage.assertDownloadPDFDisabled();
	}

	@Then("^I see \"([^\"]*)\" options disabled$")
	public void assertTopRightParallelLinesBarOptionsDisabled(String option) {
		grantorPlanningPage.assertTakeSnapshotDisabled(option);
	}

	@Then("^I see \"([^\"]*)\" button is not displayed$")
	public void assertTopRightHeaderButtonNotDisplayed(String buttonName) {
		grantorPlanningPage.assertTopRightButtonNotDisplayed(buttonName);
	}

	@Then("^I see \"([^\"]*)\" is disabled$")
	public void assertRadioButtondisabled(String radioButtonName) {
		grantorPlanningPage.assertRadioButtonNotDisplayed(radioButtonName);
	}

	@Then("^i see \"([^\"]*)\" shown at number \"([^\"]*)\" in Approve Decision panel$")
	public void assertApprovalDecisionPannelRadioSequence(String radioName, String sequenceNumber) {
		grantorPlanningPage.assertApprovalDecisoinRadioSequence(radioName, Integer.parseInt(sequenceNumber));
	}

	@Then("^I see \"([^\"]*)\" error is displayed$")
	public void assertApprovalDecisionMandatoryErrorDisplayed(String error) {
		grantorPlanningPage.assertDecisionCommentsMandatory(error);
	}

	@When("^I click on \"([^\"]*)\" button inside detail page$")
	public void clickbuttonInsideDetailPage(String button) {
		grantorPlanningPage.getHeaderButtonInsideDetailPage(button);
	}

	@Then("^I see prompt For automation is displayed$")
	public void assertPromptBoxDisplayed() {
		grantorPlanningPage.assertPromptDialogBoxDisplayed();
	}

	@Then("^I see \"([^\"]*)\" button is not displayed at view detail page$")
	public void assertHeaderButtonsInsideDetailsPageNotDisplayed(String buttonName) {
		grantorPlanningPage.assertHeaderButtonsNotDisplayed(buttonName);
	}

	@Then("^I see \"([^\"]*)\" inside approval decision box$")
	public void assertApproveTextInsideDecisionBox(String radioButtonName) {
		grantorPlanningPage.assertApproveRadioButtonText(radioButtonName);
	}
}
