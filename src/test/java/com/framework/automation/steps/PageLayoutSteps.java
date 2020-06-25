package com.framework.automation.steps;

import com.framework.automation.pageobject.PageLayoutPage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import java.io.IOException;
import java.util.List;
import java.util.Map;

public class PageLayoutSteps {
    PageLayoutPage pageLayoutPage;

    public PageLayoutSteps() {
        pageLayoutPage = new PageLayoutPage();
    }

    @When("^I click on \"([^\"]*)\" button in right header$")
    public void clickbuttonOnRightHeader(String buttonName) {
        pageLayoutPage.getRightHeaderButton(buttonName);
    }

    @When("^I click search icon for \"([^\"]*)\" lookup modal and swithing to frame \"([^\"]*)\"$")
    public void searchLookUpModal(String lookupText, String frameId) {
        pageLayoutPage.handleLookUpSearchWithFrame(frameId, lookupText.split(","));
    }

    @When("^I click on Manage Attachments inside page block details$")
    public void clickPageBlockDetailElement() {
        pageLayoutPage.clickPageBlockDetailParticularElement();
    }

    @When("^I hovering mouse on help text icon inside \"([^\"]*)\"$")
    public void getHelpTextIconsAtPageBlock(String blockTitle) {
        pageLayoutPage.getHelpTextAtPageBlock(blockTitle);
    }

    @When("^I hovering mouse on help text icon inside page block detail \"([^\"]*)\"$")
    public void getHelpTextIconsAtPageBlockDetail(String pageBlockDetailTitle) {
        pageLayoutPage.getHelpTextAtPageBlockDetail(pageBlockDetailTitle);
    }

    @When("^I hover mouse on lookup link \"([^\"]*)\"$")
    public void hoverOnLookUpLinkAtPageBlockDetail(String lookUpLink) {
        pageLayoutPage.getLookUpLinkToHover(lookUpLink);
    }

    @When("^I enter values \"([^\"]*)\" into textarea description field for Edit Attachment$")
    public void textAreaFieldAtEditAttachment(String enteredValue) {
        pageLayoutPage.enterValueForTextareaDescriptionFieldUnderEditAttachment(enteredValue);
    }

    @When("^I close alertbox$")
    public void closeAlertBox() {
        pageLayoutPage.closeAlertBoxFromPage();
    }

    @When("^I upload attachment \"([^\"]*)\" of type \"([^\"]*)\" and move on second tab$")
    public void uploadAttachment(String fileName, String fileType) {
        pageLayoutPage.uploadAttachmentAndMoveOnSecondTab(fileName, fileType);
    }

    @When("^I upload attachment \"([^\"]*)\" on button click \"([^\"]*)\" inside download & upload wizard$")
    public void uploadAttachmentForSheetJS(String fileName, String fileType) {
        pageLayoutPage.uploadSheetJSFIle(fileName, fileType);
    }

    @When("^I upload attachment \"([^\"]*)\" from workspace$")
    public void iUploadAttachmentFromWorkspace(String fileNameToBeUpload) {
        pageLayoutPage.uploadAttachmentFromWorkspace(fileNameToBeUpload.split(","));
    }

    @When("^I click \"([^\"]*)\" icon for lightning lookup$")
    public void clickOnLightningLookUpIcons(String iconName) {
        pageLayoutPage.clickOnIconsAtOwnerOrganisationLightningLookUpModal(iconName);
    }

    @When("^I click on svg arrow inside lookup modal for \"([^\"]*)\"$")
    public void clickOnSVGArrowForOwnerOrganisatioLookUp(String order) {
        pageLayoutPage.clickSVGArrowElementAtOwnerOrganisationLookUpModal(order);
    }

    @When("^I click on lookup link \"([^\"]*)\"$")
    public void clickOnLookupLinkAtPage(String lookupLink) {
        pageLayoutPage.performClickOnLookupLink(lookupLink);
    }

    @When("^I select package type from Package selection for business forms$")
    public void selectPackageTypeAndChoosePackage() {
        pageLayoutPage.selectPackageAndPackageType();
    }

    @When("^I click on error message \"([^\"]*)\"$")
    public void clickOnErrorMessageAtPage(String linkName) {
        pageLayoutPage.performClickOnErrorMessageAtPage(linkName);
    }

    @When("^I hovering mouse on page block detail of label \"([^\"]*)\" lookup field \"([^\"]*)\"$")
    public void hoverAtPageBlockDetailLookupElement(String label, String lookupField) {
        pageLayoutPage.hoverMouseOnExpectedLookupField(label, lookupField);
    }

    @When("I click on \"([^\"]*)\" Button in Session Timeout dialogbox$")
    public void clickOnButtonInSessionTimeoutDialogbox(String buttonName) {
        pageLayoutPage.clickButtonInSessionTimeoutDialogbox(buttonName);
    }

    @When("^I enter value \"([^\"]*)\" into field \"([^\"]*)\" on send email modal$")
    public void enterValueInSendEmailModal(String value, String fieldLabel) {
        pageLayoutPage.enterValueInSendEmailModalFields(value, fieldLabel);
    }

    @When("^I click on \"([^\"]*)\" button in send email modal$")
    public void clickOnSendEmailModalButton(String buttonName) {
        pageLayoutPage.clickOnSendEmailModalButton(buttonName);
    }

    @When("^I click on \"([^\"]*)\" email Search By field and select dropdown value as \"([^\"]*)\"$")
    public void clickSearchByButtonOnSendEmailModal(String fieldLabel, String dropdownValue) {
        pageLayoutPage.clickSearchByButton(fieldLabel, dropdownValue);
    }

    @When("^I select value \"([^\"]*)\" with iconName \"([^\"]*)\" into field on send email modal$")
    public void selectValueInSendEmailModal(String userName, String iconName) {
        pageLayoutPage.selectValueInSendEmailModalFields(userName, iconName);
    }

    @When("^I upload attachment \"([^\"]*)\" in send email modal$")
    public void uploadAttachmentOnSendEmailModal(String attachmentName) {
        pageLayoutPage.uploadAttachmentInSendEmailModal(attachmentName);
    }

    @When("^I select \"([^\"]*)\" from dropdown at History Table$")
    public void selectValueFromDropdownInHistory(String objectName) {
        pageLayoutPage.selectValueFromDropdownInHistory(objectName);
    }

    @When("I click on button {string} on download & upload wizard modal")
    public void clickOnButtonOnDownloadUploadWizardModal(String buttonName) {
        pageLayoutPage.clickModalContentSpecificButton(buttonName);
    }

    @When("^I click on By phase dropdown at dashboard$")
    public void clickOnByPhaseDropdownAtDashboard() {
        pageLayoutPage.clickOnByPhaseDropdownAtDashboard();
    }

    @When("^I click on \"([^\"]*)\" email Search By field$")
    public void clickOnSendEmailSearchByField(String fieldLabel) {
        pageLayoutPage.clickOnSendEmailSearchByField(fieldLabel);
    }

    @And("^I click on expand collapse icon for panel heading \"([^\"]*)\"$")
    public void clickOnExpandColapseIcon(String panelHeaderName) {
        pageLayoutPage.clickExpandCollapseIconAtTableHeader(panelHeaderName);
    }

    @And("^I select value \"([^\"]*)\" from lightning lookup table$")
    public void clickOnSelectOfParticularOrganizationInsideLightningLookup(String organizationName) {
        pageLayoutPage.clickOnSelectLinkForLookupSpecificRecord(organizationName);
    }

    @Then("^I see \"([^\"]*)\" shown as over view title in header \"([^\"]*)\"$")
    public void assertOverViewTitleWithHeader(String overViewTitle, String overViewHeader) {
        pageLayoutPage.assertOverViewTitleWithHeader(overViewTitle, overViewHeader);
    }

    @Then("^I see \"([^\"]*)\" shown as page instruction text$")
    public void assertPageInstructionText(String pageInstructionText) {
        pageLayoutPage.assertPageInstructionText(pageInstructionText);
    }

    @Then("^I see \"([^\"]*)\" shown as over view header$")
    public void assertOverViewHeaderDisplayed(String headerName) {
        pageLayoutPage.assertOverViewHeaderDisplayed(headerName);
    }

    @Then("^I see \"([^\"]*)\" button is not displayed$")
    public void assertTopRightHeaderButtonNotDisplayed(String buttonName) {
        pageLayoutPage.assertTopRightButtonNotDisplayed(buttonName);
    }

    @Then("^I see Download as PDF options disabled$")
    public void assertPDFDownloadOptionsDisabled() {
        pageLayoutPage.assertDownloadPDFDisabled();
    }

    @Then("^I see \"([^\"]*)\" options disabled$")
    public void assertTopRightParallelLinesBarOptionsDisabled(String option) {
        pageLayoutPage.assertTakeSnapshotDisabled(option);
    }

    @Then("^I see prompt For automation is displayed$")
    public void assertPromptBoxDisplayed() {
        pageLayoutPage.assertPromptDialogBoxDisplayed();
    }

    @Then("^I see \"([^\"]*)\" button is not displayed at view detail page$")
    public void assertHeaderButtonsInsideDetailsPageNotDisplayed(String buttonName) {
        pageLayoutPage.assertHeaderButtonsNotDisplayed(buttonName);
    }

    @Then("^I see \"([^\"]*)\" button is displayed at edit detail page$")
    public void assertHeaderButtonsInsideEditDetailsPageDisplayed(String buttonName) {
        pageLayoutPage.assertHeaderButtonsNotDisplayed(buttonName);
    }

    @Then("^I see \"([^\"]*)\" sub tab is not displayed at view detail page$")
    public void assertSubTabInsideDetailsPageNotDisplayed(String subTabName) {
        pageLayoutPage.assertSubTabButtonsNotDisplayed(subTabName);
    }

    @Then("^I see \"([^\"]*)\" shown at number \"([^\"]*)\" inside subtabs$")
    public void assertSequenceOfAccordianContent(String subTabName, String number) {
        pageLayoutPage.assertSortingOfSubTab(subTabName, Integer.parseInt(number));
    }

    @Then("^I see \"([^\"]*)\" shown as header instruction text$")
    public void assertHeaderInstructionText(String headerText) {
        pageLayoutPage.assertHeaderInstructionText(headerText);
    }

    @Then("^I see \"([^\"]*)\" sub tab is displayed at view detail page$")
    public void assertChangedSubTabTitleInsideDetailsPage(String subTabName) {
        pageLayoutPage.assertChangedTitleOfSubTab(subTabName);
    }

    @Then("^I see pencil icon as \"([^\"]*)\" sub tab$")
    public void assertPencilIconAsSubTab(String subTabName) {
        pageLayoutPage.assertSubTabIconDisplayed(subTabName);
    }

    @Then("^I see complete header overview tab is displayed at view detail page$")
    public void assertHeaderOverviewTabInsideDetailsPage() {
        pageLayoutPage.assertHeaderOverviewTabDisplayed();
    }

    @Then("^I see \"([^\"]*)\" shown at number \"([^\"]*)\" inside page block$")
    public void assertSequenceOfPageBlock(String pageBlockName, String number) {
        pageLayoutPage.assertSortingOfPageBlock(pageBlockName, Integer.parseInt(number));
    }

    @Then("^I see \"([^\"]*)\" shown as header instruction text for page block$")
    public void assertHeaderInstructionTextAtPageBlock(String headerText) {
        pageLayoutPage.assertHeaderInstructionTextAtPageBlock(headerText);
    }

    @Then("^I see \"([^\"]*)\" page block contains \"([^\"]*)\" elements$")
    public void asserPageBlockRowElement(String titleName, String number) {
        pageLayoutPage.assertNumberOfElementsInsidePageBlock(titleName, Integer.parseInt(number));
    }

    @Then("^I see Roles And Responsibilities flex table inside page block$")
    public void assertChangedFlextableRenderingAtPageBlock() {
        pageLayoutPage.assertCorrectFlexTableDisplayedAtPageBlock();
    }

    @Then("^I see Monitoring Schedule For All Active Grants flex grid inside page block$")
    public void assertChangedFlexGridRenderingAtPageBlock() {
        pageLayoutPage.assertCorrectFlexGridDisplayedAtPageBlock();
    }

    @Then("^I see edit icon is disabled inside \"([^\"]*)\" page block$")
    public void assertActionEditIconIsDisabledForAttachmentPageBlock(String pageBlockName) {
        pageLayoutPage.assertEditActionItemDisabledForAttachment(pageBlockName);
    }

    @Then("^I see edit icon is not visible inside \"([^\"]*)\" page block$")
    public void assertEditActionItemNotVisibleForAttachmentPageBlock(String pageBlockName) {
        pageLayoutPage.assertEditActionItemNotVisibleForAttachment(pageBlockName);
    }

    @Then("^I see \"([^\"]*)\" inside page block details$")
    public void assertChangedFieldInsidePageBlockDetail(String changedFieldName) {
        pageLayoutPage.assertChangedFieldInsidePageBlockDetailDisplayed(changedFieldName);
    }

    @Then("^I see \"([^\"]*)\" is not displayed inside page block detail$")
    public void assertSpecificFieldAtPageBlockDetailNotDisplayed(String changedFieldName) {
        pageLayoutPage.assertSpecificFieldInsidePageBlockDetailNotDisplayed(changedFieldName);
    }

    @Then("^I see \"([^\"]*)\" shown at number \"([^\"]*)\" inside page block detail$")
    public void assertSequenceOfPageBlockElement(String changedFieldName, String number) {
        pageLayoutPage.assertSortingOfPageBlockDetailElementSubTab(changedFieldName, Integer.parseInt(number));
    }

    @Then("^I see \"([^\"]*)\" in table header on lookup Modal$")
    public void assertFlexTableHeaderName(String headerColumnName) {
        pageLayoutPage.assertTableHeaderColumnNameForLookupModal(headerColumnName);
    }

    @Then("^I see \"([^\"]*)\" status in lookup modal table$")
    public void assertSpecificStatusCategoryNotDisplayed(String statusCategory) {
        pageLayoutPage.assertTableStatusInsideLookupModal(statusCategory);
    }

    @Then("^I see \"([^\"]*)\" message inside confirmation box is displayed on click \"([^\"]*)\"$")
    public void assertSAConfirmationBoxWithMessageText(String message, String buttonName) {
        pageLayoutPage.assertMessageOfAcceptAlertBox(message, buttonName);
    }

    @Then("^I see Edit opens in overlay window with \"([^\"]*)\" button$")
    public void assertLayoutButtonOpenInOverlayDisplayed(String buttonName) {
        pageLayoutPage.assertActionButtonOfPagrLayoutDisplayed(buttonName);
    }

    @Then("^I see \"([^\"]*)\" button is displayed$")
    public void assertTopRightHeaderButtonDisplayed(String buttonName) {
        pageLayoutPage.assertTopRightButtonDisplayed(buttonName);
    }

    @Then("^I see Edit options inside Menu Dropdown$")
    public void assertEditOptionsInsideMenuBar() {
        pageLayoutPage.assertEditButtonInsideMenuDropDown();
    }

    @Then("^I see \"([^\"]*)\" Button at position \"([^\"]*)\"$")
    public void assertSequenceOfPageLayoutEditButtonAction(String buttonName, String sequenceNumber) {
        pageLayoutPage.assertSequenceOfEditButtonAction(buttonName, Integer.parseInt(sequenceNumber));
    }

    @Then("^I see \"([^\"]*)\" shown as help text$")
    public void assertHelpText(String helpText) {
        pageLayoutPage.assertHelpTextAtPageBlock(helpText);
    }

    @Then("^I see \"([^\"]*)\" at bottom of Attachment Modal$")
    public void assertModalButtons(String buttonName) {
        pageLayoutPage.asserButtonOnModal(buttonName);
    }

    @Then("^I see \"([^\"]*)\" has been added in \"([^\"]*)\" flex table$")
    public void assertTextInsideEditAttachment(String valueToBeSearch, String flexTableHeader) {
        pageLayoutPage.AssertFieldValueIsPresentInFlexTable(valueToBeSearch, flexTableHeader);
    }

    @Then("^I (can see|cannot see) the following messages is not displayed in the page details contains:$")
    public void assertPageMessageValueOnModal(String usage, List<String> message) {
        for (String mes : message) {
            pageLayoutPage.assertMessageOnAttachmentModalDisplayed(mes, "cannot see".equalsIgnoreCase(usage));
        }
    }

    @Then("^I see field \"([^\"]*)\" is disabled$")
    public void assertExpectedFieldIsDisabled(String fieldApiName) {
        pageLayoutPage.assertExpectedFieldAtEditPageDetails(fieldApiName);
    }

    @Then("^I see \"([^\"]*)\" options disabled from menu dropdown$")
    public void assertSpecificMenuBarOptionsDisabled(String option) {
        pageLayoutPage.assertSubmitForApprovalOptionDisabled(option);
    }

    @Then("^I (see|donot see) navigation logo on page$")
    public void assertModalClosedProperly(String usage) {
        pageLayoutPage.assertHoldOnLogoDisappeared(usage);
    }

    @Then("^I see content inside lookup modal in \"([^\"]*)\" order$")
    public void assertContentOfLookUpModalInExpectedOrder(String order) {
        pageLayoutPage.assertAscendingOrderOfLookupModalContent(order);
    }

    @Then("^I see data table box for lookup$")
    public void assertDataTableBoxOfLookUpModal() {
        pageLayoutPage.assertDataTableForLookupModalContent();
    }

    @Then("^I see that svg arrow is in \"([^\"]*)\" order$")
    public void assertOrderOfSVGArrowOfLookUpModal(String order) {
        pageLayoutPage.assertSVGArrowOrderForLightningLookUp(order);
    }

    @Then("^I see expand collapse is working as expected$")
    public void assertExpandCollapseWorking() {
        pageLayoutPage.assertFunctionalityOfExpandCollapse();
    }

    @Then("^I see error message \"([^\"]*)\" for invalid input at \"([^\"]*)\"$")
    public void assertErrorMessageAtLightningLookupSearch(String inputText, String fieldApiName) {
        pageLayoutPage.assertErrorMessageForInvalidInputAtlightningLookup(inputText, fieldApiName);
    }

    @Then("^I see expected field getting focused$")
    public void assertExpectedFieldGettingFocused() {
        pageLayoutPage.assertExpectedFieldGettingFocusedOnClick();
    }

    @Then("^I see mini page layout displayed properly$")
    public void assertMiniPageLayoutPositioning() throws IOException {
        pageLayoutPage.assertMiniPAgeLayoutDisplayedAsExpected();
    }

    @Then("^I see \"([^\"]*)\" status in Lookup window$")
    public void assertEnhancedLookupFilterCriteria(String status) {
        pageLayoutPage.assertEnhancedLookupRecordsGettingFilterOut(status);
    }

    @Then("^I see \"([^\"]*)\" button is present on Modal$")
    public void assertNewRowsWithTextAtParentFlexTable(String topActionName) {
        pageLayoutPage.assertModalContaingTopLevelActionInViewMode(topActionName);
    }

    @Then("^I see session timeout remainder as \"([^\"]*)\" countdown is shown in browser tab$")
    public void assertSessionTimeoutRemainderCountdown(String countDownTimer) {
        pageLayoutPage.assertSessionTimeoutRemainderCountdownIsDisplayed(countDownTimer);
    }

    @Then("^I see \"([^\"]*)\" \"([^\"]*)\" page is displayed$")
    public void assertLogoutPageDisplayed(String usage, String logoutURL) {
        pageLayoutPage.assertLogoutPageIsDisplayed(usage, logoutURL);
    }

    @Then("^I see Session Timeout dialogbox with text \"([^\"]*)\"$")
    public void assertSessionTimeoutDialogboxWithText(String bodyContent) {
        pageLayoutPage.assertSessionTimeoutDialogboxText(bodyContent);
    }

    @Then("^I (softly see|softly cannot see|cannot see|see) Session Timeout dialogue box with title \"([^\"]*)\" is displayed$")
    public void assertSessionTimeoutDialogboxIsDisplayed(String usage, String headerText) {
        pageLayoutPage.assertSessionTimeoutDialogboxDisplayed(usage, headerText);
    }

    @Then("^I see Session Timeout dialogbox with button \"([^\"]*)\"$")
    public void assertSessionTimeoutDialogboxWithButtons(String buttonName) {
        pageLayoutPage.assertSessionTimeoutDialogboxButtons(buttonName);
    }

    @Then("^I see Attachment section is displayed under send email modal$")
    public void assertAttachmentSectionIsDisplayedOnModal() {
        pageLayoutPage.assertAttachmentSectionDisplayedOnModal();
    }

    @Then("^I see iconName \"([^\"]*)\" with user \"([^\"]*)\" is displayed on send email modal$")
    public void assertUserNameDisplayedInSuggestionBox(String iconName, String userName) {
        pageLayoutPage.assertSearchedUserNameDisplayedInSuggestion(iconName, userName);
    }

    @Then("^I see below users is displayed in suggestion box under send email modal:$")
    public void assertInternalExternalUsersIsDisplayedInSuggestionBox(List<Map<String, String>> Parameters) throws IOException {
        pageLayoutPage.assertInternalExternalUsersDisplayedInSuggestionBox(Parameters);
    }

    @Then("^I see attachment \"([^\"]*)\" is present in send email modal$")
    public void assertAttachmentIsPresentInSendEmailModal(String attachmentName) {
        pageLayoutPage.assertAttachmentPresentInSendEmailModal(attachmentName);
    }

    @Then("^I see sticky bottom menu button with id \"([^\"]*)\" is not present$")
    public void assertStickyBottomMenuOptionIsNotDisplayed(String id) {
        pageLayoutPage.assertIsStickyBottomMenuOptionDisplayed(id);
    }

    @Then("^I (softly see|softly cannot see|cannot see|see) column \"([^\"]*)\" inside row \"([^\"]*)\" at position \"([^\"]*)\" and column at position \"([^\"]*)\" contains text \"([^\"]*)\"$")
    public void iSeeInsideRowOfIndexAndColumnIndex(String usage, String colName, String rowNo, String tData, String colNo, String text) {
        pageLayoutPage.assertTextInHistoryTable(usage, colName, rowNo, tData, colNo, text);
    }

    @Then("^I see for \"([^\"]*)\" value is \"([^\"]*)\" in chevron diagram$")
    public void iSeeForValueIsInChevronDiagram(String approverTitle, String approverName) {
        pageLayoutPage.assertIsApproverUserDisplayed(approverTitle, approverName);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" is displayed in dropdown at dashboard$")
    public void assertOptionIsDisplayedInDropdownAtDashboard(String usage, String dropdownOptions) {
        pageLayoutPage.assertOptionsInDropdownAtDashboard(usage, dropdownOptions);
    }

    @Then("^I see icon for \"([^\"]*)\" is present in rich text area description field$")
    public void assertIconIsPresentInCKEditorAtDescriptionField(String iconName) {
        pageLayoutPage.assertIconIsPresentInCKEditorAtDescriptionField(iconName);
    }

    @Then("^I see hyperlink is present at \"([^\"]*)\" in rich text area field$")
    public void assertHyperlinkIsPresentAtRichTextAreaField(String textOrURLValue) {
        pageLayoutPage.assertHyperlinkIsPresentAtRichTextArea(textOrURLValue);
    }

    @Then("^I see hyperlink is not present at \"([^\"]*)\" user$")
    public void hyperlinkIsNotPresentAtUserProfilePage(String userName) {
        pageLayoutPage.assertHyperlinkIsNotPresentAtUserProfilePage(userName);
    }

    @Then("^I (softly see|see) likesCount / label as \"([^\"]*)\" is present at user detail page$")
    public void likesCountOrLabelPresentAtUserDetailPage(String usage, String likesCountOrlabel) {
        pageLayoutPage.assertLikesCountOrLabelIsPresentAtUserDetailPage(usage, likesCountOrlabel);
    }

    @Then("I see arrow is displayed at user drop-down")
    public void assertArrowIsDisplayedAtUserDropDown() {
        pageLayoutPage.assertArrowIsDisplayedAtUserDropDown();
    }

    @Then("^I (softly see|see) \"([^\"]*)\" shown inside \"([^\"]*)\" column in history table$")
    public void dateTimeShownInsideNewOldValueColumnInHistoryTable(String usage, String dateTimeFieldValue, String columnName) {
        pageLayoutPage.assertDateTimeDisplayedInExpectedFormatInHistoryTable(usage, dateTimeFieldValue, columnName);
    }

    @Then("^I see a lookup modal with width as \"([^\"]*)\" is rendered$")
    public void lookupModalWidthIsRenderedProperly(String width) {
        pageLayoutPage.assertLookupModalWidthIsRenderedProperly(width);
    }

    @Then("^I (see|softly see) \"([^\"]*)\" email search by field contains dropdown value as \"([^\"]*)\"$")
    public void searchByFieldDropdownValues(String usage, String fieldLabel, String dropdownValue) {
        pageLayoutPage.assertSearchByFieldDropdownValues(usage,fieldLabel,dropdownValue);
    }

    @Then("^I (softly see|see) \"([^\"]*)\" as \"([^\"]*)\" on send email modal$")
    public void iSoftlySeeAsOnSendEmailModal(String usage, String value, String fieldLabel) {
        pageLayoutPage.assertFieldValueAtSendEmailModal(usage, value, fieldLabel);

    }
}