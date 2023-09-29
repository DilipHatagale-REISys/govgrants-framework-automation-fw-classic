package com.framework.automation.steps;

import com.framework.automation.pageobject.ApprovalHistoryTablePage;
import com.framework.automation.pageobject.FlexTable_AllComponentPage;
import io.cucumber.java.en.Then;

public class ApprovalHistoryTableSteps {

    ApprovalHistoryTablePage approvalHistoryTablePage;

    public ApprovalHistoryTableSteps() {  approvalHistoryTablePage = new ApprovalHistoryTablePage();
    }

    @Then("^I (see|do not see) \"([^\"]*)\" and status is changed in \"([^\"]*)\" in Approval history table$")
    public void iSeeAndStatusIsChangedInInApprovalHistoryTable(String usage, String state, String comment) {
        approvalHistoryTablePage.assertisDisplayedChangedCommentinTable(usage, state, comment);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" and comment is changed in \"([^\"]*)\" in Approval history table")
    public void iSeeAndCommentApprovarIsChangedInInApprovalHistoryTable(String usage, String state, String comment) {
        approvalHistoryTablePage.assertisDisplayedChangedCommentinTable(usage, state, comment);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" and Assigned to is changed in \"([^\"]*)\" in Approval history table")
    public void iSeeAndAssignedToIsChangedInInApprovalHistoryTable(String usage, String state, String comment) {
        approvalHistoryTablePage.assertisDisplayedChangedCommentinTable(usage, state, comment);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" and Actual Approvar is changed in \"([^\"]*)\" in Approval history table")
    public void iSeeAndActualApprovarIsChangedInInApprovalHistoryTable(String usage, String state, String comment) {
        approvalHistoryTablePage.assertisDisplayedChangedCommentinTable(usage, state, comment);
    }
}
