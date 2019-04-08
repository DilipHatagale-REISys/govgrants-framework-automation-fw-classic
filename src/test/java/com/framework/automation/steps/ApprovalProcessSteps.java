package com.framework.automation.steps;

import com.automation.rei.handlers.GovGrantsHandler;
import com.framework.automation.pageobject.ApprovalProcessPage;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import eyethink.automation.bots.controller.Controller;
import eyethink.automation.bots.controller.CoreHandlers;
import eyethink.automation.bots.exception.EyeThinkBotsCustomException;

public class ApprovalProcessSteps {
	ApprovalProcessPage approvalProcesPage;

	public ApprovalProcessSteps(Controller controller, CoreHandlers handler, GovGrantsHandler govgrants) {
		approvalProcesPage = new ApprovalProcessPage(controller, handler, govgrants);
	}

	@When("^I start the approval with subject \"([^\"]*)\"$")
	public void startApproval(String programSubject) throws EyeThinkBotsCustomException {
		approvalProcesPage.clickStartApprovalButton(programSubject);
	}

	@When("^I select \"([^\"]*)\" from approval decision panel$")
	public void SelectApprovalDecisionPannel(String radioName) {
		approvalProcesPage.selectApproveDecisionOption(radioName);
	}

	@When("^I click submit$")
	public void clickSubmit() {
		approvalProcesPage.clickSubmitButton();
	}

	@When("^I complete submit for approval$")
	public void clickSave() {
		approvalProcesPage.completeSubmitForapproval();
	}

	@Then("^I see \"([^\"]*)\" is disabled$")
	public void assertRadioButtondisabled(String radioButtonName) {
		approvalProcesPage.assertRadioButtonNotDisplayed(radioButtonName);
	}
	
	@Then("^I see \"([^\"]*)\" is enabled$")
	public void assertRadioButtondisEnabled(String radioButtonName) {
		approvalProcesPage.assertRadioButtonDisplayed(radioButtonName);
	}

	@Then("^i see \"([^\"]*)\" shown at number \"([^\"]*)\" in Approve Decision panel$")
	public void assertApprovalDecisionPannelRadioSequence(String radioName, String sequenceNumber) {
		approvalProcesPage.assertApprovalDecisoinRadioSequence(radioName, Integer.parseInt(sequenceNumber));
	}

	@Then("^I see \"([^\"]*)\" error is displayed$")
	public void assertApprovalDecisionMandatoryErrorDisplayed(String error) {
		approvalProcesPage.assertDecisionCommentsMandatory(error);
	}

	@Then("^I see \"([^\"]*)\" inside approval decision box$")
	public void assertApproveTextInsideDecisionBox(String radioButtonName) {
		approvalProcesPage.assertApproveRadioButtonText(radioButtonName);
	}

	@When("^I enter Approval comment$")
	public void enterApprovalComment() {
		approvalProcesPage.programApprovalTextBox();
	}

	@When("^I select \"([^\"]*)\" from double headed dropdown inside admin portal$")
	public void selectSpecificOptionsFromDropDown(String dropdownoption) {
		approvalProcesPage.clickAndSelectOptionFromLeftDoubleArrowDropDown(dropdownoption);
	}

	@When("^I click select dropdown$")
	public void clickSelectDropdown() {
		approvalProcesPage.clickOnSelectDropdown();
	}

	@When("^I select specific user \"([^\"]*)\"$")
	public void selectSpeificUserFromSelectDropdown(String dropDownValue) {
		approvalProcesPage.selectUserFromApproveDecisionOptionDropdown(dropDownValue);
	}

	@Then("^I see confirmation box with body \"([^\"]*)\" is displayed$")
	public void assertConfirmationBoxWithMessage(String message) {
		approvalProcesPage.assertMessageOfConfirmationBoxPopUp(message);
	}

	@Then("^I see \"([^\"]*)\" inside selectbox$")
	public void assertUserInsideSelectDropdown(String dropDownValue) {
		approvalProcesPage.assertUserInsideDropdown(dropDownValue);
	}

	@Then("^I see approval with subject as \"([^\"]*)\" is not displayed$")
	public void assertSpecificApprovalIsNotDisplayed(String subject) {
		approvalProcesPage.assertSpecificApprovalNotDisplayed(subject);
	}

	@Then("^I see email is generated with template \"([^\"]*)\"$")
	public void assertSuccessForEmailToProgramOwner(String templateName) {
		approvalProcesPage.assertSuccessForEmailToProgramOwner(templateName);
	}

	@Then("^I see \"([^\"]*)\" comment for user \"([^\"]*)\"$")
	public void assertCommentedTextInsideHistoryTab(String commentText, String User) {
		approvalProcesPage.assertCommentTextInsideHistoryTab(commentText, User);
	}
}
