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
        smokeSanityPage.assertIfModalWindowWithNmaeDisplayedOrNot(usage, windowTitle);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" section is rendered properly on collab phase$")
    public void iSeeSectionIsRenderedProperlyOnCollabPhase(String usage, String componentName) {
        smokeSanityPage.assertIfCollabComponentRenderProperlyOrNot(usage, componentName);
    }

    @Then("^I (see|do not see) respective \"([^\"]*)\" is displayed inside Pending Tasks$")
    public void iSeeIsDisplayedInsidePendingTasks(String usage, String parameterValue) {
        smokeSanityPage.assertIfTaskIsDisplayedOrNot(usage, parameterValue);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" box on a submitted for approval record$")
    public void iSeeBoxOnASubmittedForApprovalRecord(String usage, String parameterValue) {
        smokeSanityPage.assertIfTaskIsDisplayedOrNot(usage, parameterValue);
    }

    @When("I create contact with firstname \"([^\"]*)\" lastname \"([^\"]*)\" and emailid \"([^\"]*)\"$")
    public void iCreateContactWithFirstnameLastnameAndEmailid(String fname, String lname, String emailid) {
        smokeSanityPage.createContactInOverViewTab(fname, lname, emailid);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" panal is displayed$")
    public void iSeePanalIsDisplayed(String usage, String panalName) {
        smokeSanityPage.assertIfPanalBodyIsDisplayedWithPanalHeader(usage, panalName);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" options displayed in page detail$")
    public void iSeeOptionsDisplayedInPageDetail(String usage, String optionName) {
        smokeSanityPage.menuItemDisplayedOnceClickOnMenuButton(usage, optionName);
    }

    @When("I attach file \"([^\"]*)\" in add file Modal$")
    public void iAttachFileInAddFileModal(String attachmentName) {
        smokeSanityPage.attachFileFromSystem(attachmentName);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" name displayed as \"([^\"]*)\"$")
    public void iSeeNameDisplayedAs(String usage, String recordType, String recordName) {
        smokeSanityPage.verifyIfRecordTypeAndRecordNameIsDisplayed(usage, recordType, recordName);
    }

    @And("I enter value {string} in my Feed and click on Share button")
    public void iEnterValueInMyFeedAndClickOnButton(String value) {
        smokeSanityPage.enterTextInideFeedSectionAndClickOnShareButton(value);
    }

    @And("^I enter user \"([^\"]*)\" and value \"([^\"]*)\" in my Feed and click on Share (post|comment)$")
    public void iEnterUserAndValueInMyFeedAndClickOnShareButton(String userName, String value, String sharingType) {
        smokeSanityPage.enterUserNameAndTextValueInsideMyFeedSection(userName, value, sharingType.equalsIgnoreCase("post"));
    }

    @Then("^I (see|do not see) \"([^\"]*)\" inside \"([^\"]*)\" comment at collab$")
    public void iSeeInsideCommentAtCollab(String usage, String comment, String post) {
        smokeSanityPage.commentInsidePostDisplayedOrNot(usage, comment, post);
    }

    @Then("^I (see Username|do not see Username) \"([^\"]*)\" is displayed Collab phase$")
    public void iSeeUsernameIsDisplayedCollabPhase(String usage, String userNameOrEmailId) {
        smokeSanityPage.assertIfUserNameDisplayedOnCollabPhase(usage, userNameOrEmailId);
    }

    @Then("^I (see emailid|do not see emailid) \"([^\"]*)\" is displayed Collab phase$")
    public void iSeeEmailidIsDisplayedCollabPhase(String usage, String userNameOrEmailId) {
        smokeSanityPage.assertIfUserNameDisplayedOnCollabPhase(usage, userNameOrEmailId);
    }

    @Then("^I (see|do not see) side bar links \"([^\"]*)\" is displayed on collab phase$")
    public void iSeeSideBarLinksIsDisplayedOnCollabPhase(String usage, String linkName) {
        smokeSanityPage.assertIfSideBarLinkDisplayedOrNot(usage, linkName);
    }

    @Then("^I (see|do not see|softly see|softly do not see) \"([^\"]*)\" page block displayed in page details$")
    public void iDoNotSeePageBlockDisplayedInPageDetails(String usage, String titleName) {
        smokeSanityPage.assertPageBlockIsDisplayedOrNotDisplayedWithTextXpath(usage, titleName);
    }

    @Then("I see \"([^\"]*)\" link on collab phase is (not displayed and clickable|displayed and clickable)$")
    public void iSeeLinkOnCollabPhaseIsDisplayedAndClickable(String linkName, String status) {
        smokeSanityPage.asserIfLinkIsDisplayedEnabledOrNot(linkName, status);
    }

    @Then("^I (softly see|softly do not see) \"([^\"]*)\" button is displayed and enabled inside comment \"([^\"]*)\"$")
    public void iSeeButtonIsDisplayedAndEnabledInsideComment(String usage, String button, String comment) {
        smokeSanityPage.assertIfButtonInsideCommentIsDisplayedAndEnabled(usage, button, comment);
    }

    @And("I click on \"([^\"]*)\" inside comment \"([^\"]*)\" in collab phase$")
    public void iClickOnInsideCommentInCollabPhase(String button, String comment) {
        smokeSanityPage.clickOnLikeCountInCollabPhase(button, comment);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" in collab like list$")
    public void iSeeInCollabLikeList(String usage, String username) {
        smokeSanityPage.assertIfLikeListDisplayedUsername(usage, username);
    }

    @Then("^I see \"([^\"]*)\" as user name and \"([^\"]*)\" (as emailid|as emailid with profile picture)$")
    public void iSeeAsUserNameAndAsEmailid(String username, String emailid, String usage) {
        smokeSanityPage.assertIfEmailIdWithUserNameDisplayedOrNot(usage, username, emailid);
    }

    @Then("^I (see|do not see) group name \"([^\"]*)\" with member details count \"([^\"]*)\"$")
    public void iSeeGroupNameWithMemberDetailsCount(String usage, String groupname, String membercount) {
        smokeSanityPage.assertIfGroupNameAndMembercountIsDisplayed(usage,groupname,membercount);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" button name inside table id \"([^\"]*)\"$")
    public void iSeeButtonNameInsideTableId(String usage, String buttonname, String tableid) {
        smokeSanityPage.assertIfButtonIsDislayedOnTableId(usage,buttonname,tableid);
    }

    @Then("I see \"([^\"]*)\" shown as header instruction text in modal$")
    public void iSeeShownAsHeaderInstructionTextInModal(String headerText) {
        smokeSanityPage.assertHeaderInstructionTextInModal(headerText);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" Tab title displays on modal$")
    public void iSeeTabTitleDisplaysOnModal(String usage, String tabName) {
        smokeSanityPage.assertIfTabTitleOnModalIsDisplayed(usage,tabName);
    }

    @Then("I see \"([^\"]*)\" inside row of enhance grid id \"([^\"]*)\"$")
    public void iSeeInsideRowOfEnhanceGridId(String rowGrouping, String tableId) {
        smokeSanityPage.assertRowGroupingDisplayed(rowGrouping,tableId);
    }
}
