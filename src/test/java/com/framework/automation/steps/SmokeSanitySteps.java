package com.framework.automation.steps;

import com.framework.automation.pageobject.SmokeSanityPage;
import com.framework.automation.pageobject.StepProgressBarPage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class SmokeSanitySteps {

    SmokeSanityPage smokeSanityPage;

    public SmokeSanitySteps() {
        smokeSanityPage = new SmokeSanityPage();
    }

    @Then("^I (see|do not see) Global search on sidebar left side of page")
    public void iSeeGlobalSearchOnSidebarLeftSideOfPage(String usage) {
        smokeSanityPage.assertIfGlobalSeachButtonDisplayedOrNot(usage);
    }

    @Then("^I (see|do not see) lookup field is rendered on modal window$")
    public void iSeeLookupFieldIsRenderedOnModalWindow(String usage) {
        smokeSanityPage.assertIfLookupFieldDisplayedOrNotOnModalWindow(usage);
    }

    @Then("^I (see|do not see) lookup field is rendered on page details$")
    public void iSeeLookupFieldIsRenderedOnPageDetails(String usage) {
        smokeSanityPage.assertIfLookupFieldDisplayedOrNotOnModalWindow(usage);
    }

    @And("I click on lookup field search icon {string}")
    public void iClickOnLookupFieldSearchIcon(String objectName) {
        smokeSanityPage.clickOnLookupFieldObject(objectName);
    }

    @Then("^I (see|do not see) available list of lookup field values$")
    public void iSeeAvailableListOfLookupFieldValues(String usage) {
        smokeSanityPage.assertIfListOfLookupFieldDisplayedOrNot(usage);
    }

    @Then("^I (see|do not see) sidebar left side of page$")
    public void iSeeSidebarLeftSideOfPage(String usage) {
        smokeSanityPage.assertIfSideBarDisplayedOrNot(usage);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" opens in modal window$")
    public void iSeeOpensInModalWindow(String usage, String windowTitle) {
        smokeSanityPage.assertIfModalWindowWithNmaeDisplayedOrNot(usage,windowTitle);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" section is rendered properly on collab phase$")
    public void iSeeSectionIsRenderedProperlyOnCollabPhase(String usage, String componentName) {
        smokeSanityPage.assertIfCollabComponentRenderProperlyOrNot(usage,componentName);
    }

    @Then("^I (see|do not see) respective \"([^\"]*)\" is displayed inside Pending Tasks$")
    public void iSeeIsDisplayedInsidePendingTasks(String usage, String parameterValue) {
        smokeSanityPage.assertIfTaskIsDisplayedOrNot(usage,parameterValue);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" box on a submitted for approval record$")
    public void iSeeBoxOnASubmittedForApprovalRecord(String usage, String parameterValue) {
        smokeSanityPage.assertIfTaskIsDisplayedOrNot(usage,parameterValue);
    }

    @When("I create contact with firstname \"([^\"]*)\" lastname \"([^\"]*)\" and emailid \"([^\"]*)\"$")
    public void iCreateContactWithFirstnameLastnameAndEmailid(String fname, String lname, String emailid) {
        smokeSanityPage.createContactInOverViewTab(fname,lname,emailid);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" panal is displayed$")
    public void iSeePanalIsDisplayed(String usage,String panalName) {
        smokeSanityPage.assertIfPanalBodyIsDisplayedWithPanalHeader(usage,panalName);
    }
}
