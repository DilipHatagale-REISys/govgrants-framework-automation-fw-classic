package com.framework.automation.steps;

import com.framework.automation.pageobject.PageLayoutPage;
import com.helperPackage.actionsfactory.api.ByUsing;
import com.helperPackage.objects.Elements;
import com.helperPackage.register.I;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.testng.Assert;

import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

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

    @When("^I enter values \"([^\"]*)\" into textarea description field for Edit Attachment(| and save)$")
    public void textAreaFieldAtEditAttachment(String enteredValue, String usage) {
        pageLayoutPage.enterValueForTextareaDescriptionFieldUnderEditAttachment(enteredValue, usage);
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

    @When("^I click on lookup link (|contains )\"([^\"]*)\"$")
    public void clickOnLookupLinkAtPage(String usage, String lookupLink) {
        pageLayoutPage.performClickOnLookupLink(usage, lookupLink);
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

    @When("^I enter value \"([^\"]*)\" into field \"([^\"]*)\" on send email modal$")
    public void enterValueInSendEmailModal(String value, String fieldLabel) {
        pageLayoutPage.enterValueInSendEmailModalFields(value, fieldLabel);
    }

    @When("^I click on \"([^\"]*)\" email Search By field and select dropdown value as \"([^\"]*)\"$")
    public void clickSearchByButtonOnSendEmailModal(String fieldLabel, String dropdownValue) {
        pageLayoutPage.clickSearchByButton(fieldLabel, dropdownValue);
    }

    @When("^I select value \"([^\"]*)\" with iconName \"([^\"]*)\" into field on send email modal$")
    public void selectValueInSendEmailModal(String userName, String iconName) {
        pageLayoutPage.selectValueInSendEmailModalFields(userName, iconName);
    }

    @When("^I select \"([^\"]*)\" from dropdown inside page block$")
    public void selectValueFromDropdown(String objectName) {
        pageLayoutPage.selectValueFromDropdown(objectName);
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

    @When("^I click on cross icon at \"([^\"]*)\" attachment inside send email modal$")
    public void iClickOnCrossIconAtAttachmentSectionAtSendEmailModal(String attachmentName) {
        pageLayoutPage.clickOnCrossIconAtAttachmentSectionAtSendEmailModal(attachmentName);
    }

    @When("I select value as {string} inside {string} radio field")
    public void iSelectValueAsInsideRadioField(String value, String fieldApiName) {
        pageLayoutPage.selectValueInsideRadioFieldAtFormLayout(value, fieldApiName);
    }

    @When("^I hovering mouse on help text icon at \"([^\"]*)\" inside \"([^\"]*)\" (page block|header)$")
    public void iHoveringMouseOnHelpTextIconAtInsidePageBlock(String fieldName, String pageBlockName, String uiType) {
        pageLayoutPage.hoverAttHelpTextAtFieldInsidePageBlock(fieldName, pageBlockName, uiType.equalsIgnoreCase("page block"));
    }

    @When("I navigate to {string} menu inside collab sidebar")
    public void iNavigateToMenuInsideCollabSidebar(String menu) {
        pageLayoutPage.clickOnCollabSidebarMenu(menu);
    }

    @And("I hovering mouse on help text icon at {string} inside send email modal")
    public void iHoveringMouseOnHelpTextIconAtInsideSendEmailModal(String fieldLabel) {
        pageLayoutPage.hoverOnFieldAtSendEmailModal(fieldLabel);
    }

    @And("I close lightning modal")
    public void iCloseLightningModal() {
        pageLayoutPage.closeLightningModal();
    }

    @And("^I enter value \"([^\"]*)\" in the (post|comment) at collab$")
    public void iEnterValueInThePostAtMyFeedSection(String postOrComment, String sharingType) {
        pageLayoutPage.enterValueInsidePostOrCommentCollab(postOrComment, sharingType.equalsIgnoreCase("post"));
    }

    @And("^I click on expand collapse icon for panel heading \"([^\"]*)\"$")
    public void clickOnExpandColapseIcon(String panelHeaderName) {
        pageLayoutPage.clickExpandCollapseIconAtTableHeader(panelHeaderName);
    }

    @And("^I select value \"([^\"]*)\" from lightning lookup table$")
    public void clickOnSelectOfParticularOrganizationInsideLightningLookup(String organizationName) {
        pageLayoutPage.clickOnSelectLinkForLookupSpecificRecord(organizationName);
    }

    @And("I click on refresh button at collab")
    public void iClickOnRefreshButtonAtCollab() {
        pageLayoutPage.clickRefreshButtonAtCollabPhase();
    }

    @And("I click on {string} navigation button at calendar")
    public void iClickOnNavigationButtonAtCalendar(String buttonName) {
        pageLayoutPage.clickNavigationButtonAtCalendar(buttonName);
    }

    @And("I perform scroll on page layout")
    public void iPerformScroll() {
        pageLayoutPage.andIScrollPageLayout();
    }

    @Then("^I see \"([^\"]*)\" shown as over view title in header \"([^\"]*)\"$")
    public void assertOverViewTitleWithHeader(String overViewTitle, String overViewHeader) {
        pageLayoutPage.assertOverViewTitleWithHeader(overViewTitle, overViewHeader);
    }


    @And("I select {string} and click at {string}")
    public void iSelectAndClickAt(String dropdownValue, String action) {
        pageLayoutPage.selectValueAndClickAtFilter(dropdownValue, action);
    }

    @And("I change formatting of all text to {string} inside CK editor")
    public void iChangeFormattingOfAllTextToInsideCKEditor(String iconName) {
        pageLayoutPage.selectAndClickAtIconToChangeTextFormatting(iconName);
    }

    @Then("^I see \"([^\"]*)\" shown as over view header$")
    public void assertOverViewHeaderDisplayed(String headerName) {
        pageLayoutPage.assertOverViewHeaderDisplayed(headerName);
    }

    @Then("^I see \"([^\"]*)\" button is not displayed$")
    public void assertTopRightHeaderButtonNotDisplayed(String buttonName) {
        pageLayoutPage.assertTopRightButtonNotDisplayed(buttonName);
    }

    @Then("^I (see|do not see|softly see|softly do not see) \"([^\"]*)\" options is displayed$")
    public void assertTopRightParallelLinesBarOptionsAtPageLayout(String usage, String options) {
        pageLayoutPage.assertTopRightParallelLinesBarOptionsAtPageLayout(usage, options);
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

    @Then("^I see \"([^\"]*)\" shown as header instruction text$")
    public void assertHeaderInstructionText(String headerText) {
        pageLayoutPage.assertHeaderInstructionText(headerText);
    }

    @Then("^I softly see \"([^\"]*)\" sub tab is displayed at view detail page$")
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

    @Then("^I see \"([^\"]*)\" shown at number \"([^\"]*)\" inside detail page$")
    public void assertSequenceOfPageBlockAndFormSections(String pageBlockName, String number) {
        pageLayoutPage.assertSortingOfPageBlockAndFormSections(pageBlockName, Integer.parseInt(number));
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

    @Then("^I (see|softly see) \"([^\"]*)\" is not displayed inside page block detail$")
    public void assertSpecificFieldAtPageBlockDetailNotDisplayed(String usage, String changedFieldName) {
        pageLayoutPage.assertSpecificFieldInsidePageBlockDetailNotDisplayed(usage, changedFieldName);
    }

    @Then("^I see \"([^\"]*)\" in table header on lookup Modal$")
    public void assertFlexTableHeaderName(String headerColumnName) {
        pageLayoutPage.assertTableHeaderColumnNameForLookupModal(headerColumnName);
    }

    @Then("^I see \"([^\"]*)\" message inside confirmation box is displayed on click \"([^\"]*)\"$")
    public void assertSAConfirmationBoxWithMessageText(String message, String buttonName) {
        pageLayoutPage.assertMessageOfAcceptAlertBox(message, buttonName);
    }

    @Then("^I see Edit opens in overlay window with \"([^\"]*)\" button$")
    public void assertLayoutButtonOpenInOverlayDisplayed(String buttonName) {
        pageLayoutPage.assertActionButtonOfPagrLayoutDisplayed(buttonName);
    }

    @Then("^I (see|softly see|do not see|softly do not see) \"([^\"]*)\" button is displayed$")
    public void assertTopRightHeaderButtonDisplayed(String usage, String buttonName) {
        pageLayoutPage.assertTopRightButtonDisplayed(usage, buttonName);
    }

    @Then("^I see Edit options inside Menu Dropdown$")
    public void assertEditOptionsInsideMenuBar() {
        pageLayoutPage.assertEditButtonInsideMenuDropDown();
    }

    @Then("^I see \"([^\"]*)\" Button at position \"([^\"]*)\"$")
    public void assertSequenceOfPageLayoutEditButtonAction(String buttonName, String sequenceNumber) {
        pageLayoutPage.assertSequenceOfEditButtonAction(buttonName, Integer.parseInt(sequenceNumber));
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

    @Then("^I (see|do not see|softly do not see) \"([^\"]*)\" (table|block) is collapsed$")
    public void assertExpandCollapseWorking(String usage, String blockName, String uiType) {
        pageLayoutPage.assertFunctionalityOfExpandCollapse(usage, blockName, uiType.contains("table"));
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

    @Then("^I see button \"([^\"]*)\"$")
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

    @Then("^I (see|softly see) attachment \"([^\"]*)\" is present in send email modal$")
    public void assertAttachmentIsPresentInSendEmailModal(String usage, String attachmentName) {
        pageLayoutPage.assertAttachmentPresentInSendEmailModal(usage, attachmentName);
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
        pageLayoutPage.assertSearchByFieldDropdownValues(usage, fieldLabel, dropdownValue);
    }

    @Then("^I (softly see|see) \"([^\"]*)\" as \"([^\"]*)\" on send email modal$")
    public void iSoftlySeeAsOnSendEmailModal(String usage, String value, String fieldLabel) {
        pageLayoutPage.assertFieldValueAtSendEmailModal(usage, value, fieldLabel);
    }

    @Then("I see a boarder is displayed at page block section")
    public void assertBoarderIsDisplayedAtPageBlockSection() {
        pageLayoutPage.assertBoarderIsDisplayedAtPageBlockSection();
    }

    @Then("^I see attached file \"([^\"]*)\" is deleted successfully inside send email modal$")
    public void assertAttachedFileIsDeletedSuccessfullyAtSendEmail(String attachmentName) {
        pageLayoutPage.assertAttachedFileIsDeletedSuccessfullyAtSendEmail(attachmentName);
    }

    @Then("^I see search item display box size at \"([^\"]*)\" field is proper for \"([^\"]*)\" results$")
    public void iSeeSearchItemDisplayBoxSizeIsProperForResults(String fieldName, String condition) {
        pageLayoutPage.assertSearchItemDisplayBoxSizeIsProperAtSendEmailModal(fieldName, condition);
    }

    @Then("^I (see|do not see) asterisk mark at \"([^\"]*)\" field is displayed at send email modal$")
    public void iSeeAsteriskMarkAtFieldIsDisplayedAtSendEmailModal(String usage, String fieldName) {
        pageLayoutPage.assertAsteriskMarkAtSendEmailModal(usage, fieldName);
    }

    @Then("I see search icon for lookup {string}")
    public void iSeeSearchIconForLookup(String searchBtnName) {
        pageLayoutPage.assertSearchIconAtLookupField(searchBtnName);
    }

    @Then("^I (see|do not see) select files section is displayed under send email modal$")
    public void iSeeSelectFilesSectionIsDisplayedUnderSendEmailModal(String usage) {
        pageLayoutPage.assertSelectFilesSectionIsDisplayedUnderSendEmailModal(usage);
    }

    @Then("I see value {string} of {string} field is not changed on page scroll")
    public void iSeeValueOfFieldIsNotChangedAfterScroll(String fieldValue, String fieldName) {
        pageLayoutPage.assertDisabledFieldValueAfterPageScroll(fieldValue, fieldName);
    }

    @Then("I see current date is displayed in {string} on send email modal")
    public void iSeeCurrentDateIsDisplayedInOnSendEmailModal(String label) {
        pageLayoutPage.assertDisplayOfCurrentDateOnSendEmailModal(label);
    }

    @Then("I see hyperlink at value \"([^\"]*)\" inside \"([^\"]*)\" modal$")
    public void assertHyperlinkAtColumnValueInsideEnhancedGrid(String value, String modalId) {
        pageLayoutPage.assertHyperlinkIsDisplayedAtValueInsideModal(value, modalId);
    }

    @Then("I see entered text in my feed section displayed properly")
    public void iSeeEnteredTextInMyFeedSectionDisplayedProperly() {
        pageLayoutPage.assertAlignmentOfTextInsideMyFeedSection();
    }

    @Then("^I (see|softly see) \"([^\"]*)\" shown as page instruction text$")
    public void assertPageInstructionText(String usage, String pageInstructionText) {
        pageLayoutPage.assertPageInstructionText(usage, pageInstructionText);
    }

    @Then("^I (see|softly see) bulb icon at header instruction is displayed$")
    public void iSeeBulbIconAtHeaderInstructionIsDisplayed(String usage) {
        pageLayoutPage.assertBulbIconAtHeaderInstruction(usage);
    }

    @Then("I see collab my feed page refreshed")
    public void iSeeCollabMyFeedPageRefreshed() {
        pageLayoutPage.assertCollabPageRefreshed();
    }

    @Then("I see required for submit symbol as {string} at {string} field")
    public void iSeeRequiredForSubmitSymbolAsAtField(String symbol, String fieldName) {
        pageLayoutPage.assertSymbolAtRequiredForSubmitField(symbol, fieldName);
    }

    @Then("^I (see|do not see|softly see|softly do not see) field message with text as \"([^\"]*)\" and \"([^\"]*)\"$")
    public void iSeeFieldMessageWithTextAsAnd(String usage, String message1, String message2) {
        pageLayoutPage.assertRequiredFieldMessageAtHeader(usage, message1, message2);
    }

    @Then("^I (see|do not see|softly do not see) missing field badge on \"([^\"]*)\" tab$")
    public void iSeeMissingFieldBadgeOnTab(String usage, String tabName) {
        pageLayoutPage.assertMissingFieldBadgeOnTab(usage, tabName);
    }

    @Then("^I (see|do not see|softly see|softly do not see) \"([^\"]*)\" comment inside \"([^\"]*)\" post at collab$")
    public void iSoftlySeeCommentInsidePostAtCollab(String usage, String comment, String post) {
        pageLayoutPage.assertCommentAtCollabPhase(usage, comment, post);
    }

    @Then("I see {string} option is displayed at collab menu")
    public void iSeeOptionIsDisplayedAtCollabMenu(String option) {
        pageLayoutPage.assertMenuOptionsUnderCollab(option);
    }

    @Then("I see {string} page displayed")
    public void iSeePageDisplayed(String page) {
        pageLayoutPage.assertchatterPageDisplayed(page);
    }

    @Then("I see informative text as {string} inside upload file modal")
    public void iSeeTextAsInsideUploadFileModal(String text) {
        pageLayoutPage.assertTextInsideUploadFileModal(text);
    }

    @Then("^I (see|do not see) mention auto complete list is displayed at collab (comment|post)$")
    public void iSeeMentionAutoCompleteListIsNotDisplayedAtCollab(String usage, String isPostOrComment) {
        pageLayoutPage.isMentionAutoCompleteListDisplayedAtCollab(usage, isPostOrComment.equalsIgnoreCase("post"));
    }

    @Then("I see {string} tab is displayed at Home")
    public void iSeeTabIsDisplayedAtHome(String myWorkspaceItem) {
        pageLayoutPage.isTabDisplayedAtHomePhase(myWorkspaceItem);
    }

    @Then("I see sidebar global search box displayed in {string}")
    public void iSeeSidebarGlobalSearchBoxDisplayedIn(String colorName) {
        pageLayoutPage.assertSidebarGlobalSearchColor(colorName);
    }

    @Then("I see Menu bar is not displayed at my feed")
    public void iSeeMenuBarIsNotDisplayedAtMyFeed() {
        pageLayoutPage.assertMenuBarAtMyFeedSection();
    }

    @Then("^I (softly see|softly do not see) user suggestion box displayed at send email modal$")
    public void iSeeUserSuggestionBoxDisplayedAtSendEmailModal(String usage) {
        pageLayoutPage.assertSuggestionBoxAtSendEmailModal(usage);
    }

    @Then("^I (softly see|softly do not see) FaviconIcon at \"([^\"]*)\" browser tab$")
    public void iSoftlySeeAtBrowserTab(String usage, String tabName) {
        pageLayoutPage.assertFavIconAtBrowserTab(usage, tabName);
    }

    @Then("I see Menu Icon is not displayed at my feed section")
    public void iSeeMenuIconIsNotDisplayedAtMyFeedSection() {
        pageLayoutPage.assertMenuIconAtMyFeedSectionCollab();
    }

    @Then("I see fields are displayed without white space in modal")
    public void iSeeFieldsAreAlignedWithoutWhiteSpaceInModal() throws IOException {
        pageLayoutPage.assertFieldAlignmentInsideModal();
    }

    @Then("I see validate button is aligned at pannel header")
    public void iSeeValidateButtonIsAlignedAtHeader() throws IOException {
        pageLayoutPage.assertAlignmentOfValidationButtonAtFormTable();
    }

    @Then("I see mini page layout displayed and compared with {string}")
    public void iSeeMiniPageLayoutDisplayedAtLookupModalWindowAndComparedWith(String imageName) throws IOException {
        pageLayoutPage.assertMiniPageLayoutDisplayedAtModalWindow(imageName);
    }

    @Then("I see {string} shown as help text at visual indicator inside page layout")
    public void iSeeShownAsHelpTextAtVisualIndicatorInsidePageLayout(String helpText) {
        pageLayoutPage.assertHelpTextAtVisualIndicator(helpText);
    }

    @Then("^I (see|do not see) loading icon at \"([^\"]*)\" modal$")
    public void iDoNotSeeLoadingIconAtModal(String usage, String modalTitle) {
        pageLayoutPage.assertLoadingIconAtModalWindow(usage, modalTitle);
    }

    @Then("^I softly see (title|value) at miniPageLayout is displayed as bold and left aligned$")
    public void iSeeMiniPageLayoutIsDisplayedWithExpectedFormating(String titleOrValue) {
        pageLayoutPage.assertMiniPageLayoutFormating(titleOrValue.equalsIgnoreCase("title"));
    }

    @Then("^I see user logo at comment \"([^\"]*)\" is small in size inside my feed (home|collab)$")
    public void iSeeUserLogoAtCommentIsSmallInSizeInsideMyFeed(String comment, String uiType) {
        pageLayoutPage.assertCommentSectionLogoSizeAtMyFeed(comment, uiType.equalsIgnoreCase("home"));
    }

    @Then("I see More Actions dropdown window displayed at collab")
    public void iSeeMoreActionsDropdownWindowDisplayedAtCollab() {
        pageLayoutPage.assertMoreActionsDropdownAtCollab();
    }

    @Then("^I softly see (plus|minus) icon is displayed at \"([^\"]*)\" menu inside sidebar$")
    public void iSeeExpandIconIsDisplayedAtMenuInsideSidebar(String uiType, String sidebarMenu) {
        pageLayoutPage.assertExpandCollapsedIconAtSidebarMenu(uiType.equalsIgnoreCase("plus"), sidebarMenu);
    }

    @Then("I do not see attached file as {string} inside collab my feed")
    public void iDoNotSeeAttachedFileAsInsideCollabMyFeed(String fileName) {
        pageLayoutPage.assertAttachedFileInsideCollabMyFeedSection(fileName);
    }

    @Then("I see mini page layout value is displayed in normal text with {string} font-weight")
    public void iSeeValueIsDisplayedInNormalTextWithFontWeight(String fontWeight) {
        pageLayoutPage.assertValueIsDisplayedInNormalTextInsideMiniLayout(fontWeight);
    }

    @Then("I see mini page layout background is in grey color")
    public void iSeeMiniPageLayoutBackgroundIsInGreyColor() {
        pageLayoutPage.assertBackgroundColorInsideMiniLayout();
    }

    @Then("^I (see|do not see) \"([^\"]*)\" inside \"([^\"]*)\" menu at collab sidebar$")
    public void iDoNotSeeSubMenuInsideMenuAtCollabSidebar(String usage, String subMenu, String mainMenu) {
        pageLayoutPage.assertMenuAtCollabSidebar(usage, subMenu, mainMenu);
    }

    @Then("I see calender displayed in {string} format")
    public void iSeeCalenderDisplayedInFormat(String uiType) {
        pageLayoutPage.assertFormatOfCalenderDisplayedAtUI(uiType);
    }

    @Then("I see today's Date is displayed with light pink background at calendar")
    public void iSeeTodaySDateIsDisplayedWithLightPinkBackgroundAtCalendar() {
        pageLayoutPage.assertBackgroundColorAtTodaysDate();

    }

    @Then("^I see below message at page detail in \"([^\"]*)\" color:$")
    public void iSeeBelowMsgAtPageLayout(String colorName, List<String> list) {
        Iterator var4 = list.iterator();
        while (var4.hasNext()) {
            String alertMessage = (String) var4.next();
            pageLayoutPage.assertAlertMessageWithColorAtPageLayout(colorName, alertMessage);
        }
    }

    @Then("I see help text is displayed at bottom")
    public void iSeeHelpTextIsRenderedAtBottom() {
        pageLayoutPage.assertHelpTextIsRenderedAtBottom();
    }

    @Then("^I softly see \"([^\"]*)\" as \"([^\"]*)\" inside mini page layout$")
    public void iSoftlySeeBelowTextInsideMiniPageLayout(String displayType, String value) {
        pageLayoutPage.assertTypeAndTextInsideMiniPageLayout(displayType, value);
    }

    @Then("^I see \"([^\"]*)\" field is rendered as (rich|long) text area$")
    public void iSeeRichTextAreaFieldAsIsDisplayedAtPageDetail(String fieldName, String usage) {
        pageLayoutPage.assertRichTextAreaFieldInsidePageDetail(fieldName, usage.equalsIgnoreCase("rich"));
    }

    @Then("I see CK editor box color changed to {string}")
    public void iSeeRichTextEditerBoxColorChangedTo(String colorName) {
        pageLayoutPage.assertColorOfRichTextEditorBox(colorName);
    }

    @Then("I softly see word count as {string} in ck editor at page layout")
    public void iSoftlySeeWordCountAsInCkEditorAtPageLayout(String wordCount) {
        pageLayoutPage.assertCharacterCountDisplayedInsideCKEditorAtPageLayout(wordCount);
    }

    @Then("I see {string} displayed in {string} format inside CK editor")
    public void iSeeTextDisplayedInFormatInsideCKEditor(String value, String textFormat) {
        pageLayoutPage.assertTextFormattingInsideCKEditorInputBox(value, textFormat);
    }

    @Then("I see {string} month is displayed")
    public void iSeeMonthIsDisplayed(String monthName) {
        pageLayoutPage.isAcceptedMonthIsDisplayed(monthName);
    }

    @Then("I see external user registration page displayed")
    public void iSeeExternalUserRegistrationPageDisplayed() {
        pageLayoutPage.iSeeExternalUserRegistrationPageDisplayed();
    }

    @Then("I see value {string} for label {string}")
    public void iSeeValueForLabelInSendEmailModal(String fieldValue, String fieldLabel) {
        pageLayoutPage.assertFieldValueUsingFieldLabel(fieldValue, fieldLabel);
    }

    @Then("I see modal with id {string} displayed properly")
    public void iSeeModalWithIdDisplayedProperly(String modalID) {
        pageLayoutPage.assertModalSizeAtNotesAndAttachment(modalID);
    }

    @Then("I see field {string} is vertically resized")
    public void iSeeFieldIsVerticallyResized(String fieldAPIName) {
        pageLayoutPage.assertFieldAlignmentAtPageLayout(fieldAPIName);
    }

    @Then("I see checkbox is displayed for field {string}")
    public void iSeeCheckboxIsDisplayedForField(String fieldAPIName) {
        pageLayoutPage.assertCheckboxIsDisplayedForField(fieldAPIName);
    }

    @Then("I see text as {string} on reply email modal")
    public void iSeeAsOnModal(String value) {
        pageLayoutPage.assertFieldOnModal(value);
    }

    @Then("I validate that following reply back content is aligned properly:")
    public void iValidateThatFollowingReplyBackContentIsAlignedProperly(List<String> replyContent) {
        pageLayoutPage.assertThatFollowingReplyBackContentIsAlignedProperly(replyContent);

    }

    @Then("^I (softly see|softly do not see) filter by phase \"([^\"]*)\"$")
    public void iSeeFilterByPhaseValue(String usage, String value) {
        pageLayoutPage.assertFilterByPhaseValue(usage, value);
    }

    @And("I click on button {string} under collab for comment box")
    public void iClickOnInsideMyFeed(String buttonName) {
        pageLayoutPage.ClickOnInsideMyFeed(buttonName);
    }

    @Then("I see lookup link {string} inside page block")
    public void iSeeLookupLinkInsidePageBlock(String name) {
        pageLayoutPage.assertLookupLinkInsidePageBlock(name);
    }

    @And("I select {string} from ck editor")
    public void iChangeStyleOfAllTextToInsideCKEditor(String styleName) {
        By StyleSelector = By.xpath("//a[@title='Formatting Styles']/span[2]");
        I.amPerforming().click().on(StyleSelector);
        By ChangeStyle = By.xpath("//*[text()='" + styleName + "']");
        I.amPerforming().click().on(ChangeStyle);
    }

    @And("I change font {string} from ck editor")
    public void iChangeFontOfAllTextToInsideCKEditor(String fontName) {
        By StyleSelector = By.xpath("//a[@title='Font Name']/span[2]");
        I.amPerforming().click().on(StyleSelector);
        By ChangeStyle = By.xpath("//*[text()='" + fontName + "']");
        I.amPerforming().click().on(ChangeStyle);
    }

    @And("I click on Right allign in description field")
    public void iClickOnRightAllignInDescriptionField() {
        pageLayoutPage.ClickOnRightAllignInDescriptionField();
    }

    @And("I click on {string} checkbox inside {string} field")
    public void iClickOnCheckboxInsideField(String value, String field) {
        boolean checkBoxSelected = I.amPerforming().getElementReference().of(ByUsing.xpath("//div[@id='" + field + "']//label[contains(text(),'" + value + "')]/preceding-sibling::input[@type='checkbox']")).isSelected();
        if (checkBoxSelected) {
            I.amPerforming().checkToSee().isSelected(ByUsing.xpath("//div[@id='" + field + "']//label[contains(text(),'" + value + "')]/preceding-sibling::input[@type='checkbox']"), true);
        } else {
            I.amPerforming().click().on(ByUsing.xpath("//div[@id='" + field + "']//label[contains(text(),'" + value + "')]/preceding-sibling::input[@type='checkbox']"));
        }
    }

    @And("I upload attachment {string} after click on {string} in Download & Upload wizard modal window")
    public void iUploadAttachmentAfterClickOnInDownloadUploadWizardModalWindow(String file, String button) {
        By attachmentChooseFilePath = By.xpath("//input[@id='fileUpload' or @type='file']");
        By modalButton = By.xpath("//button[contains(text(),'" + button + "') and contains(@class,'customBtn')]");
        String defaultFilePath = System.getProperty("user.dir") + "/src/main/resources/";
        I.amPerforming().waitFor().makeThreadSleep(15000);
        I.amPerforming().textInput().in(attachmentChooseFilePath, defaultFilePath + file);
        I.amPerforming().click().on(modalButton);
    }

    @And("I click on {string} arrow inside {string} field")
    public void iClickOnArrowInsideField(String arrow, String columnName) {
        I.amPerforming().click().on(ByUsing.xpath("//th//span[text()='" + columnName + "']/following::span[contains(@class,'" + arrow + "') and contains(@ng-if,'desc')] | //th//span[text()='" + columnName + "']/following::span[contains(@class,'" + arrow + "') and contains(@ng-if,'asc')] | //span[text()='" + columnName + "']/following::span[@class='fa fa-arrow-" + arrow + " ng-scope']"));
    }

    @Then("^I (see|do not see) \"([^\"]*)\" arrow is Displayed inside \"([^\"]*)\" field$")
    public void iSeeArrowIsDisplayedInsideField(String usage, String arrow, String columnName) {
//        boolean ArrowDisplayed = I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//span[text()='"+ columnName +"']/following::span[@class='fa fa-arrow-"+ arrow +" ng-scope']"));
//        Assert.assertTrue(ArrowDisplayed);
        pageLayoutPage.assertUpOrDownArrowDisplayedOrNotDisplayed(usage, arrow, columnName);
    }

    @And("I click on {string} column inside Internal Programs")
    public void iClickOnColumnInsideInternalPrograms(String columnValue) {
        I.amPerforming().click().on(ByUsing.xpath("//a/span/span[@title='" + columnValue + "'] |  //th//span//span[text()='" + columnValue + "']"));
    }

    @And("I upload attachment {string} in attachment modal")
    public void iUploadAttachmentInAttachmentModal(String attachmentName) {
        By attachmentChooseFilePath = By.xpath("//input[@class='spacer'] | //div[@class='panel panel-default ng-scope']/div/div//button[contains(@title,'Attachments')]//*[text()='Add']");
        String defaultFilePath = System.getProperty("user.dir") + "/src/main/resources/";
        I.amPerforming().textInput().in(attachmentChooseFilePath, defaultFilePath + attachmentName);
    }

    @And("I click on {string} button in current date")
    public void iClickOnButtonInCurrentDate(String buttonName) {
        try {
            By moreOptionDisplayed = By.xpath("//td[@class='fc-day fc-widget-content fc-wed fc-today fc-state-highlight']/ancestor::div[@class='fc-bg']/following-sibling::div/table/tbody/tr/td[@class='fc-more-cell']/div/a[contains(text(),'" + buttonName + "')]");
            if (I.amPerforming().checkToSee().isDisplayed(moreOptionDisplayed)) {
                for (int i = 7; i >= 1; i--) {
                    System.out.println("value of i :" + i);
                    try {
                        By attachmentDescriptionPath1 = By.xpath("(//td[@class='fc-day fc-widget-content fc-wed fc-today fc-state-highlight']/ancestor::div[@class='fc-bg']/following-sibling::div/table/tbody/tr/td[@class='fc-more-cell']/div/a[contains(text(),'" + buttonName + "')])[" + i + "]");
                        I.amPerforming().click().on(attachmentDescriptionPath1);
                        break;
                    } catch (Exception e) {
                    }
                }
            }
        } catch (Exception e) {
            System.out.println("more button is not available...");
        }
    }

    @When("I delete specific Sticky Notes with title {string} on clicking {string} in notes")
    public void iDeleteSpecificStickyNotesWithTitleOnClickingInNotes(String NotesTitle, String button) {
        pageLayoutPage.clickOnCrossButtonInNotesSection(NotesTitle, button);
    }

    @Then("^I (see|do not see) help text icon is displayed for field \"([^\"]*)\"$")
    public void iDoNotSeeHelpTextIconIsDisplayedForField(String usage, String fieldName) {
        pageLayoutPage.assertDisplayedHelpIconornot(usage, fieldName);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" icon is displayed on pagelayout$")
    public void iSeeIconIsDisplayedOnPagelayout(String usage, String menu) {
        pageLayoutPage.assertMenuOptionorNot(usage, menu);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" button is displayed on top right of pagelayout$")
    public void iSeeButtonIsDisplayedOnTopRightOfPagelayout(String usage, String buttonName) {
        pageLayoutPage.assertButtonIsDisplayedOnPageLayout(usage, buttonName);
    }

    @And("I hover the mouse on button \"([^\"]*)\"$")
    public void iHoverTheMouseOnButton(String buttonName) {
        pageLayoutPage.assertHoverTheMouse(buttonName);
    }

    @Then("^I (see|do not see) the text \"([^\"]*)\" on hovering button$")
    public void iSeeTheTextOnHoveringButton(String usage, String buttonName) {
        pageLayoutPage.assertHoverText(usage, buttonName);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" subtab is present in page details$")
    public void iSeeSubtabIsPresentInPageDetails(String usage, String subTab) {
        pageLayoutPage.assertSubtabDisplayed(usage, subTab);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" subtab is present with icon \"([^\"]*)\" in page details$")
    public void iSeeSubtabIsPresentWithIconInPageDetails(String usage, String subTab, String icon) {
        pageLayoutPage.assertSubtabWithIcon(usage, subTab, icon);
    }

    @Then("^I (see|do not see) sequence of \"([^\"]*)\" subtab is \"([^\"]*)\" on page layout$")
    public void iSeeSequenceOfSubtabIsOnPageLayout(String usage, String subTab, String sequence) {
        pageLayoutPage.assertSubtabSequence(usage, subTab, sequence);
    }

    @Then("^I (see|do not see) bulb icon at header instruction is displayed on pagelayout$")
    public void iDoNotSeeBulbIconAtHeaderInstructionIsDisplayed(String usage) {
        pageLayoutPage.assertBulbIconAtHeaderInstructionDiplayedOrNot(usage);
    }

    @Then("^I (see|do not see|softly see) field \"([^\"]*)\" inside page header$")
    public void iSoftlySeeFieldInsidePageHeader(String usage, String fieldName) {
        pageLayoutPage.assertfieldHeader(usage, fieldName);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" page message displayed in page layout$")
    public void iSeeMessageDisplayedInPageLayout(String usage, String pageMessage) {
        pageLayoutPage.isPageMessageDisplayedOnPageLayoutOrNot(usage, pageMessage);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" shown at the number \"([^\"]*)\" inside page layout$")
    public void iSeeShownAtTheNumberInsidePageLayout(String usage, String subTabName, String number) {
        pageLayoutPage.assertSortingOfPageBlock(usage, subTabName, Integer.parseInt(number));
    }

    @Then("^I (see|do not see) contacts \"([^\"]*)\" in suggestion box$")
    public void iSeeContactsInSuggestionBox(String usage, String contacts) {
        pageLayoutPage.assertIfContactDisplayedInuggestionBox(usage, contacts);
    }

    @When("I click {string} after selection of {string} by showing entries {string} in flex table with id {string}")
    public void iClickAfterSelectionOfInTheTables(String buttonName, String recordValue, String numberOfEntries, String flexTableId) {
        pageLayoutPage.clickAfterSelectionOfInTheTables(buttonName, recordValue, numberOfEntries, flexTableId);
    }

    @Then("^I (see|do not see|softly see|softly do not see) field \"([^\"]*)\" is editable field$")
    public void iSeeFieldIseditableForTheUser(String usage, String fieldname) {
        pageLayoutPage.assertIfFieldIsReadOnly(usage, fieldname);
    }

    @Then("^I (see|do not see|softly see|softly do not see) \"([^\"]*)\" phase is active$")
    public void iSeePhaseIsActive(String usage, String phaseName) {
        pageLayoutPage.assertIfPhaseIsActive(usage, phaseName);
    }
}