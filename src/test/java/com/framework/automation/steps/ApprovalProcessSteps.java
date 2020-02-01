package com.framework.automation.steps;

import com.framework.automation.pageobject.ApprovalProcessPage;
import eyethink.automation.bots.exception.EyeThinkBotsCustomException;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class ApprovalProcessSteps {
    ApprovalProcessPage approvalProcesPage;

    public ApprovalProcessSteps() {
        approvalProcesPage = new ApprovalProcessPage();
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
