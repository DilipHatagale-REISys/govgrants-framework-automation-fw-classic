package com.framework.automation.steps;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.pageobject.ApprovalProcessPage;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class ApprovalProcessSteps {
    ApprovalProcessPage approvalProcesPage;

    public ApprovalProcessSteps(Controller controller, Handlers handler) {
        approvalProcesPage = new ApprovalProcessPage(controller, handler);
    }

    @When("^I start the approval of type \"([^\"]*)\" with subject as \"([^\"]*)\"$")
    public void startApproval(String programType, String programSubject) {
        approvalProcesPage.clickStartApprovalButton(programSubject, programType);
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

    @Then("^I see confirmation box with body \"([^\"]*)\" is displayed$")
    public void assertConfirmationBoxWithMessage(String message) {
        approvalProcesPage.assertMessageOfConfirmationBoxPopUp(message);
    }

    @When("^I click select dropdown$")
    public void clickSelectDropdown() {
        approvalProcesPage.clickOnSelectDropdown();
    }

    @Then("^I see \"([^\"]*)\" inside selectbox$")
    public void assertUserInsideSelectDropdown(String dropDownValue) {
        approvalProcesPage.assertUserInsideDropdown(dropDownValue);
    }

    @Then("^I see approval of type \"([^\"]*)\" with subject as \"([^\"]*)\" is not displayed$")
    public void assertSpecificApprovalIsNotDisplayed(String approverType, String subject) {
        approvalProcesPage.assertSpecificApprovalNotDisplayed(approverType, subject);
    }
}
