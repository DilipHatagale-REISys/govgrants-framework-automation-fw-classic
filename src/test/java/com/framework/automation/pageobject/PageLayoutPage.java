package com.framework.automation.pageobject;

import com.automation.rei.handlers.govgrants;
import com.framework.automation.projectmanager.GovGrantsManager;
import com.testingblaze.controller.TestingBlazeGlobal;
import com.testingblaze.objects.Elements;
import com.testingblaze.register.I;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.io.IOException;
import java.util.List;
import java.util.Map;

public class PageLayoutPage extends GovGrantsManager {

    /******* "Variables and Locators" *****************/
    private final By overViewHeader, overViewTitle, pageInstructionText, headerInstructionText, headerOverviewTab,
            headerInstructionTextForPageBlock, rolesAndResponsibilitiesFlexTableTitle, monitoringFlexGridTitle,
            addAttachmentIframe,
            ownerOrganizationModalTitle, completeTableRowInsideLookupModal,
            manageAttachmentInsidePageBlockDetail, manageAttachmentIframe, editActionModalIframe, pageLayoutButton,
            editAttachmentDescription, editAttachmentSaveButton, textInsideMiniPageLayout;

    /**
     * Constructor to handle dependency injection and framework library
     */
    public PageLayoutPage() {
        overViewHeader = By.cssSelector("h2.panel-title>div>span.customLabelstyle");
        overViewTitle = By.cssSelector("h2.panel-title>div>span.overview-title");
        pageInstructionText = By.cssSelector("div.article>div");
        headerInstructionText = By.cssSelector("div.tabheaderinstruction");
        headerOverviewTab = By.xpath("//div[@class='panel-body']//span[contains(text(),'ID')]");
        headerInstructionTextForPageBlock = By.xpath("//div//span[contains(text(),'Header for Automation')]");
        rolesAndResponsibilitiesFlexTableTitle = By.xpath(
                "//div[@class='panel-heading']//div[contains(@class,'panel-title')]//a//span[contains(text(),'Roles And Responsibilities')]");
        monitoringFlexGridTitle = By.xpath(
                "//div[@class='panel-heading']//div[contains(@class,'panel-title')]//a[@title='Monitoring Schedule For All Active Grant']");
        addAttachmentIframe = By.cssSelector("#addmodaldialog iframe");
        ownerOrganizationModalTitle = By.xpath("//p[@id='customLookupModalTitle']");
        completeTableRowInsideLookupModal = By
                .xpath("//div[@id='lookuploading']//div[contains(@class,'panel-body')]//div/table/tbody/tr");
        manageAttachmentInsidePageBlockDetail = By.xpath(
                "//span[contains(text(),'Additional Documentation')]/..//following-sibling::span/a[contains(text(),'Manage Attachments')]");
        manageAttachmentIframe = By.xpath("//iframe[@id='iframeviewFieldAttContentIdField']");
        editActionModalIframe = By.xpath("//iframe[@id='iframeActionModalIdViewLayout']");
        pageLayoutButton = By.xpath("//div[@id='headerButtonsPanel']/span/button");
        editAttachmentDescription = By.xpath("//div[@id='modaltemp']//textarea");
        editAttachmentSaveButton = By.xpath("//div[@id='modaltemp']//input[@type='submit' or @value='Save and Close Modal']");
        textInsideMiniPageLayout = By.xpath("//div[@class='tooltipster-base tooltipster-shadow tooltipster-fade tooltipster-fade-show']//div[@class='tooltipster-content']");
    }

    /******* "Key Methods with complete functionality - public" *****************/

    /**
     * assert true if correct overview header is displayed
     *
     * @param overViewTitle
     * @param overViewHeader
     */
    public void assertOverViewTitleWithHeader(String overViewTitle, String overViewHeader) {
        Assert.assertTrue(isOverViewTitleWithHeaderDisplayed(overViewHeader, overViewTitle));
    }

    /**
     * assert true if correct page instruction text is displayed
     */
    public void assertPageInstructionText(String text) {
        Assert.assertTrue(isPageInstructionTextDisplayed(text));
    }

    /**
     * return true if correct overview header is displayed
     *
     * @param overViewHeaderName
     */
    public void assertOverViewHeaderDisplayed(String overViewHeaderName) {
        Assert.assertTrue(isOverViewHeaderDisplayed(overViewHeaderName));
    }

    /**
     * return true if top right header button as per name is not idsplayed
     *
     * @param buttonName
     */
    public void assertTopRightButtonNotDisplayed(String buttonName) {
        Assert.assertTrue(isTopRightHeaderButtonDisplayed(buttonName));
    }

    /**
     * assert download pdf option not displayed inside menu dropdown for program
     * detail page
     */
    public void assertDownloadPDFDisabled() {
        Assert.assertTrue(isOptionsDownloadPDFDisabled());
    }

    /**
     * assert take snapshot option not displayed inside menu dropdown for program
     * detail page
     *
     * @param option
     */
    public void assertTakeSnapshotDisabled(String option) {
        Assert.assertTrue(isTakeSnapshotDisabled(option));
    }

    /**
     * assert submit for approval option not displayed inside menu dropdown for grant detail page
     *
     * @param option
     */
    public void assertSubmitForApprovalOptionDisabled(String option) {
        try {
            Assert.assertTrue(getItemFromTopRightHeaderBars(option).isDisplayed());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * assert prompt dialog box displayed on button click
     */
    public void assertPromptDialogBoxDisplayed() {
        Assert.assertTrue(isPromptBoxDisplayed());
    }

    /**
     * assert true if header button inside detail page as per name is not displayed
     *
     * @param buttonName
     */
    public void assertHeaderButtonsNotDisplayed(String buttonName) {
        Assert.assertTrue(isHeaderButtonDisplayed(buttonName));
    }

    /**
     * assert true if header button inside edit detail page as per name is displayed
     *
     * @param buttonName
     */
    public void assertHeaderButtonsDisplayed(String buttonName) {
        Assert.assertTrue(isHeaderButtonDisplayed(buttonName));
    }

    /**
     * assert true if sub tab inside detail page as per name is not displayed
     *
     * @param subTabName
     */
    public void assertSubTabButtonsNotDisplayed(String subTabName) {
        Assert.assertTrue(isSubTabButtonDisplayed(subTabName));
    }

    /**
     * @param subTabName
     * @param number
     */
    public void assertSortingOfSubTab(String subTabName, int number) {
        Assert.assertTrue(isSubTabSequence(subTabName, number));
    }

    /**
     * assert true if correct header instruction text is displayed
     */
    public void assertHeaderInstructionText(String headerText) {
        Assert.assertTrue(isHeaderInstructionTextDisplayed(headerText));
    }

    /**
     * assert true if changed title of sub tab inside detail page as per name is
     * displayed
     *
     * @param subTabName
     */
    public void assertChangedTitleOfSubTab(String subTabName) {
        Assert.assertTrue(isChangedSubTabTitleDisplayed(subTabName));
    }

    /**
     * assert true if changed icon css of sub tab inside detail page as per name is
     * displayed
     *
     * @param subTabName
     */
    public void assertSubTabIconDisplayed(String subTabName) {
        Assert.assertTrue(I.amPerforming().checkToSee().isDisplayed(By.xpath(
                "//div[@id='myTabs']/ul/li/a[@name='" + subTabName + "']//i[contains(@class,'fa-pencil')]")));
    }

    /**
     * assert navigation hold on logo disappeared and modal closes properly
     */
    public void assertHoldOnLogoDisappeared(String usage) {
        try {
            if (usage.equalsIgnoreCase("see")) {
                Assert.assertTrue(I.amPerforming().checkToSee().isDisplayed(I.amPerforming().getElementReference().of(navigationLogo)));
            } else if (usage.equalsIgnoreCase("donot see")) {
                Assert.assertFalse(I.amPerforming().checkToSee().isDisplayed(I.amPerforming().getElementReference().of(navigationLogo)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * assert true if header overview tab inside detail page is displayed
     */
    public void assertHeaderOverviewTabDisplayed() {
        Assert.assertTrue(isHeaderOviewTabDisplayed());
    }

    /**
     * @param pageBlockName
     * @param number
     */
    public void assertSortingOfPageBlock(String pageBlockName, int number) {
        Assert.assertTrue(isPageBlockSequence(pageBlockName, number));
    }

    /**
     * assert true if correct header instruction text is displayed at page block
     */
    public void assertHeaderInstructionTextAtPageBlock(String headerText) {
        Assert.assertTrue(isHeaderInstructionTextDisplayedAtPageBlock(headerText));
    }

    /**
     * @param titleName
     * @param number
     */
    public void assertNumberOfElementsInsidePageBlock(String titleName, int number) {
        Assert.assertTrue(isExpectedNumberOfElementPresent(titleName, number));
    }

    /**
     * assert changed flex table is displayed at page block
     */
    public void assertCorrectFlexTableDisplayedAtPageBlock() {
        Assert.assertTrue(isChangedFlexTableTitleDisplayedAtPageBlock());
    }

    /**
     * assert changed flex grid is displayed at page block
     */
    public void assertCorrectFlexGridDisplayedAtPageBlock() {
        Assert.assertTrue(isChangedFlexGridTitleDisplayedAtPageBlock());
    }

    /**
     * assert if Edit action item is disabled inside attachment page block
     *
     * @param pageBlockName
     */
    public void assertEditActionItemDisabledForAttachment(String pageBlockName) {
        Assert.assertTrue(isEditActionItemDisabledForAttachment(pageBlockName));
    }

    /**
     * assert if Edit action item is not visible inside attachment page block
     *
     * @param pageBlockName
     */
    public void assertEditActionItemNotVisibleForAttachment(String pageBlockName) {
        Assert.assertFalse(isEditActionItemDisabledForAttachment(pageBlockName));
    }

    /**
     * assert if changed field inside page block detail is displayed
     *
     * @param changedFieldName
     */
    public void assertChangedFieldInsidePageBlockDetailDisplayed(String changedFieldName) {
        Assert.assertTrue(isChangedPageBlockDetailFieldDisplayed(changedFieldName));
    }

    /**
     * assert true if specific field inside page block detail as per name is not
     * displayed
     *
     * @param changedFieldName
     */
    public void assertSpecificFieldInsidePageBlockDetailNotDisplayed(String changedFieldName) {
        Assert.assertTrue(isSpecificFieldAtPageBlockDetailDisplayed(changedFieldName));
    }

    /**
     * @param changedFieldName
     * @param number
     */
    public void assertSortingOfPageBlockDetailElementSubTab(String changedFieldName, int number) {
        Assert.assertTrue(isPageBlockDetailElementSequence(changedFieldName, number));
    }

    /**
     * assert true if header column name is present on lookup modal
     *
     * @param headerColumnName
     */
    public void assertTableHeaderColumnNameForLookupModal(String headerColumnName) {
        Assert.assertTrue(isTableColumnHeaderNameOnLookModal(headerColumnName));
    }

    /**
     * return true if specific status category is displayed inside lookup modal
     * table
     *
     * @param statusName
     */
    public void assertTableStatusInsideLookupModal(String statusName) {
        Assert.assertTrue(isStatusDisplayedForLookupModal(statusName));
    }

    /**
     * assert if message is displayed on accept alert pop up on submit for approval
     * button
     *
     * @param message
     */
    public void assertMessageOfAcceptAlertBox(String message, String buttonName) {
        govgrants.perform().pageDetails().clickAnyTopRightButtonWithoutSwitching(buttonName);
        Assert.assertTrue(getBootBoxConfirmationText().getText().equalsIgnoreCase(message));
    }

    /**
     * assert true if header button inside overlay layout is displayed
     *
     * @param buttonName
     */
    public void assertActionButtonOfPagrLayoutDisplayed(String buttonName) {
        Assert.assertTrue(isButtonDisplayedAtOverlayWindow(buttonName));
    }

    /**
     * return false if top right header button as per name is displayed
     *
     * @param buttonName
     */
    public void assertTopRightButtonDisplayed(String buttonName) {
        Assert.assertFalse(isTopRightHeaderButtonDisplayed(buttonName));
    }

    /**
     * assert edit option displayed inside menu dropdown for program detail page
     */
    public void assertEditButtonInsideMenuDropDown() {
        Assert.assertFalse(isEditButtonDisplayedInsideMenuDropDown());
    }

    /**
     * assert if specific page layout action button appears at a specific position
     *
     * @param buttonName
     */
    public void assertSequenceOfEditButtonAction(String buttonName, int sequenceNumber) {
        Assert.assertTrue(isEditButtonActionSequence(buttonName, sequenceNumber));
    }

    /**
     * assert true if mentioned help text displayed
     */
    public void assertHelpTextAtPageBlock(String helptext) {
        Assert.assertTrue(govgrants.perform().pageDetails().isHelpTextDisplayed(helptext));
    }

    /**
     * assert if specified button is displayed on modal
     *
     * @param buttonName
     */
    public void asserButtonOnModal(String buttonName) {
        Assert.assertTrue(isSpecificButtonOnModalDisplayed(buttonName));
    }

    /**
     * return true if content of owner organisation lookup modal is in ascending order
     */
    public void assertAscendingOrderOfLookupModalContent(String order) {
        Assert.assertTrue(isContentOfLookupModalInExepctedOrder(order));
    }

    /**
     * return true if data table box of owner organisation lookup modal is displayed
     */
    public void assertDataTableForLookupModalContent() {
        Assert.assertTrue(isDataTableForLookupDisplayed());
    }

    /**
     * return true if correct order is displayed for SVG arror at lightning lookup modal
     *
     * @param order
     */
    public void assertSVGArrowOrderForLightningLookUp(String order) {
        Assert.assertTrue(isOrderOfSVGArrowIsInExpectedOrder(order));
    }

    /**
     * return true if expand collapse working correctly
     */
    public void assertFunctionalityOfExpandCollapse() {
        Assert.assertTrue(isExpandCollapseWorkingAsExpected());
    }

    /**
     * return true if error message is displpayed for invalid input at lightning lookup
     */
    public void assertErrorMessageForInvalidInputAtlightningLookup(String inputText, String fieldApiName) {
        Assert.assertTrue(isErrorMessageAtLightningLookupSearch(inputText, fieldApiName));
    }

    /**
     * return true if mini page layout postion is displayed as expected
     */
    public void assertMiniPAgeLayoutDisplayedAsExpected() throws IOException {
        WebElement miniPageLayout = I.amPerforming().getElementReference().of(By.xpath("//div[@class='tooltipster-base tooltipster-shadow tooltipster-fade tooltipster-fade-show']//div[@class='tooltipster-content']"));
        Assert.assertTrue(I.amPerforming().comparisonOf().image().isElementImage(miniPageLayout, "miniPageLayoutImage.png"));
    }

    /**
     * return true if given internal & external user is displayed in suggestion box under send email modal
     */
    public void assertInternalExternalUsersDisplayedInSuggestionBox(List<Map<String, String>> status) {
        Assert.assertTrue(isInternalExternalUsersDisplayedInSuggestionBox(status));
    }

    /**
     * return true if uploaded attachment is present under send email modal
     */
    public void assertAttachmentPresentInSendEmailModal(String attachmentName) {
        Assert.assertTrue(isAttachmentPresentInSendEmailModal(attachmentName));
    }

    /**
     * hover mouse on lookup field inside page block details page
     *
     * @param label
     * @param lookupField
     */
    public void hoverMouseOnExpectedLookupField(String label, String lookupField) {
        I.amPerforming().scroll().toMoveToElement(By.xpath("//span[@class='customLabelstyle' and contains(text(),'" + label + "')]/ancestor::dl//dd//a[contains(text(),'" + lookupField + "')]"));
    }

    /**
     * click on session time out dialog box button
     *
     * @param buttonName
     */
    public void clickButtonInSessionTimeoutDialogbox(String buttonName) {
        I.amPerforming().getElementReference().of(By.xpath("//button[text()='" + buttonName + "']")).click();
    }

    /**
     * click on any button on Download & upload wizard modal content
     *
     * @param buttonName
     */
    public void clickModalContentSpecificButton(String buttonName) {
        By modalButton = By.xpath("//button[contains(text(),'" + buttonName + "') and contains(@class,'customBtn')]");
        I.amPerforming().click().on(modalButton);
    }

    /**
     * click on -By phase- drop-down at refine filter section in Dashboard
     */
    public void clickOnByPhaseDropdownAtDashboard() {
        By ByPhaseButton = By.xpath("//button[contains(text(),'By Phase')]");
        I.amPerforming().click().on(ByPhaseButton);
    }

    /**
     * get icon in rich text area description field at page layout
     */
    public WebElement getIconInRichTextAreaField(String iconName) {
        By getIcon = By.xpath("//div[@id='fieldObjectives__c']//a[contains(@title,'" + iconName + "')]");
        return I.amPerforming().getElementReference().of(getIcon);
    }

    /**
     * return true if expected field on page getting focused
     */
    public void assertExpectedFieldGettingFocusedOnClick() {
        Assert.assertTrue(isExpectedFieldGettingFocused());
    }

    /**
     * return true if records with status as Active are shown in owner organisation lookup modal
     */
    public void assertEnhancedLookupRecordsGettingFilterOut(String status) {
        Assert.assertTrue(isEnhancedLookupRecordsGettingFilterOut(status));
    }

    /**
     * click on help text inside program information page block
     *
     * @param blockTitle
     */
    public void getHelpTextAtPageBlock(String blockTitle) {
        I.amPerforming().scroll().toMoveToElement(By.xpath("//h3//a[contains(text(),'" + blockTitle + "')]/..//span[contains(@class,'fa-info')]"));
    }

    /**
     * hover on help text inside program name page block details
     *
     * @param pageBlockDetailTitle
     */
    public void getHelpTextAtPageBlockDetail(String pageBlockDetailTitle) {
        I.amPerforming().scroll().toMoveToElement(By.xpath("//span[contains(text(),'" + pageBlockDetailTitle + "')]/..//span[contains(@class,'fa-info')]"));
    }


    /**
     * hover on look up link at page block details
     *
     * @param lookUpLink
     */
    public void getLookUpLinkToHover(String lookUpLink) {
        I.amPerforming().scroll().toMoveToElement(By.xpath("//dl//dd//a[contains(text(),'" + lookUpLink + "') or @class='tooltipstered']"), false);
    }

    /**
     * get Edit Button inside menu without waiting for presence.
     *
     * @return
     */
    public WebElement getEditButtonOptionVerification() {
        return I.amPerforming().getElementReference().of(By.cssSelector(".dropdown.open>.dropdown-menu-right>li:nth-child(2)"));
    }

    /**
     * return true if modal containing top level action
     */
    public void assertModalContaingTopLevelActionInViewMode(String topActionName) {
        Assert.assertTrue(isModalContainingTopLevelAction(topActionName));
    }

    /**
     * return true if dialog box body contains text as Test Automation Body Text
     */
    public void assertSessionTimeoutDialogboxText(String bodyContent) {
        Assert.assertTrue(isSessionTimeoutDialogboxTextDisplayed(bodyContent));
    }

    /**
     * return true if session timeout remainder dialog box appears in browser tab
     */
    public void assertSessionTimeoutRemainderCountdownIsDisplayed(String countDownTimer) {
        Assert.assertTrue(IsSessionTimeoutRemainderCountdownDisplayed(countDownTimer));
    }

    /**
     * return true if Logout Page is Displayed after session expiry
     */
    public void assertLogoutPageIsDisplayed(String usage, String logoutURL) {
        Assert.assertTrue(IsLogoutPageDisplayed(usage, logoutURL));
    }

    /**
     * return true if given buttonName is displayed under session timeout dialog box
     */
    public void assertSessionTimeoutDialogboxButtons(String buttonName) {
        Assert.assertTrue(IsButtonDisplayedUnderDialogBox(buttonName));
    }

    /**
     * return true if attachment section is displayed under send email modal
     */
    public void assertAttachmentSectionDisplayedOnModal() {
        Assert.assertTrue(I.amPerforming().checkToSee().isDisplayed(By.xpath("//label[contains(text(),'Attachments')]/following-sibling::div[@class='fileDragDropWrap']")));
    }

    /**
     * return true if user searched in search-box is displayed in suggestion box under send email modal
     */
    public void assertSearchedUserNameDisplayedInSuggestion(String iconName, String userName) {
        Assert.assertTrue(I.amPerforming().checkToSee().isDisplayed(By.xpath("//span[@class='" + iconName + "']/following-sibling::b[contains(text(),'" + userName + "')]")));
    }


    /**
     * assert if sticky bottom menu option is not present at footer
     */
    public void assertIsStickyBottomMenuOptionDisplayed(String id) {
        Assert.assertFalse(isStickyBottomMenuOptionDisplayed(id));
    }

    /**
     * assert if Approver user is displyed for program approver manager inside chevron diagraom
     */
    public void assertIsApproverUserDisplayed(String approverTitle, String approverName) {
        Assert.assertTrue(isUserDisplayedInsideChevron(approverTitle, approverName));
    }

    /**
     * return true if Warning dialog box appears/not appears
     */
    public void assertSessionTimeoutDialogboxDisplayed(String usage, String headerText) {
        By sessionTimeoutDialogboxField = By.xpath("//div[contains(@class,'ui-dialog-titlebar')]//span[contains(text(),'" + headerText + "')]");
        if (usage.contains("softly")) {
            if (usage.contains("cannot see")) {
                I.amPerforming().assertionsTo().assertThat(I.amPerforming().checkToSee().isDisplayed(sessionTimeoutDialogboxField)).isFalse();
            } else {
                I.amPerforming().assertionsTo().assertThat(I.amPerforming().checkToSee().isDisplayed(sessionTimeoutDialogboxField)).isTrue();
            }
        } else {
            if (usage.contains("cannot see")) {
                Assert.assertFalse(I.amPerforming().checkToSee().isDisplayed(sessionTimeoutDialogboxField));
            } else {
                Assert.assertTrue(I.amPerforming().checkToSee().isDisplayed(sessionTimeoutDialogboxField));
            }
        }
    }

    /**
     * assert if text is present inside history table
     */
    public void assertTextInHistoryTable(String usage, String colName, String rowNo, String tData, String colNo, String text) {
        if (usage.contains("softly")) {
            if (usage.contains("cannot")) {
                I.amPerforming().assertionsTo().assertThat(isTextPresentInsideHistoryTable(colName, rowNo, tData, colNo, text)).isFalse();
            } else {
                I.amPerforming().assertionsTo().assertThat(isTextPresentInsideHistoryTable(colName, rowNo, tData, colNo, text)).isTrue();
            }
        } else {
            if (usage.contains("cannot")) {
                Assert.assertFalse(isTextPresentInsideHistoryTable(colName, rowNo, tData, colNo, text));
            } else {
                Assert.assertTrue(isTextPresentInsideHistoryTable(colName, rowNo, tData, colNo, text));
            }
        }
    }

    /**
     * get complete rows of table inside lookup modal
     *
     * @return
     */
    public List<Elements> getCompleteTableRowOfLookupModal() {
        return I.amPerforming().getElementReference().forListOfElements().of(completeTableRowInsideLookupModal);
    }

    /**
     * return locator for status column inside lookup modal
     *
     * @param columnValueName
     * @return
     */
    public By getTableColumnOfLookupModal(String columnValueName) {
        return By.xpath("//td//span/a[@title='" + columnValueName + "' or text()='" + columnValueName + "']| //td//span[@title='" + columnValueName + "' or text()='" + columnValueName + "']");
    }

    /**
     * click on page block detail element and switching to respective iframe
     */
    public void clickPageBlockDetailParticularElement() {
        I.amPerforming().scroll().toElementCenter(manageAttachmentInsidePageBlockDetail);
        I.amPerforming().click().on(manageAttachmentInsidePageBlockDetail);
    }

    /**
     * click on error message at page details
     */
    public void performClickOnErrorMessageAtPage(String linkName) {
        I.amPerforming().click().on(By.xpath("//a[contains(text(),'" + linkName + "')]"));
    }

    /**
     * get pdf download item from top right bar inside menu without waiting for
     * presence.
     *
     * @return
     */
    public WebElement getPDFOptionForVerification() {
        return I.amPerforming().getElementReference().of(By.cssSelector(".dropdown.open>.dropdown-menu-right>li:nth-child(8)"));
    }

    /**
     * get prompt box details
     *
     * @return
     */
    public WebElement getPromptBoxForVerification() {
        return I.amPerforming().getElementReference().of(By.xpath("//div[@class='modal-dialog modal-sm']/div[@class='modal-content']"));
    }

    /**
     * click search icon of owner organization at page block detail edit page
     *
     * @param frameId
     */
    public void handleLookUpSearchWithFrame(String frameId, String... lookupText) {
        By lookupButton = By.xpath("//img[@title='" + lookupText[0] + "']");
        By lookupInputBox = By.xpath("//img[@title='" + lookupText[0] + "']/../../input[@type='text']");
        By lookupFrame = By.xpath("//iframe[@id='" + frameId + "']");
        I.amPerforming().getElementReference().of(lookupButton);
        if (lookupText.length > 1) {
            I.amPerforming().textInput().in(lookupInputBox, "Allen");
        } else {
            I.amPerforming().textInput().toClear(lookupInputBox);
        }
        I.amPerforming().click().withJavaScript(lookupButton);
        I.amPerforming().switchTo().frame(lookupFrame);
    }

    /**
     * get list of element inside page block detail like program name, program code
     * etc.
     */
    public List<Elements> getListOfPageBlockDetailElement() {
        return I.amPerforming().getElementReference().forListOfElements().of(By
                .xpath("//h3//a[contains(text(),'Program Information')]/ancestor::div[2]/following-sibling::div//dt"));
    }

    /**
     * click on textarea and enter values for description field inside edit attachment modal
     *
     * @param enteredValue
     */
    public void enterValueForTextareaDescriptionFieldUnderEditAttachment(String enteredValue) {
        WebElement saveAndCloseButton = I.amPerforming().getElementReference().of(editAttachmentSaveButton);
        I.amPerforming().textInput().toClear(By.xpath("//div[@id='modaltemp']//textarea"));
        I.amPerforming().textInput().in(By.xpath("//div[@id='modaltemp']//textarea"), enteredValue);
        I.amPerforming().click().on(saveAndCloseButton);
    }

    /**
     * click on close icon to close AlertBox on notes and attachment
     */
    public void closeAlertBoxFromPage() {
        I.amPerforming().click().on(By.xpath("//button[contains(@class,'bootbox-close-button')]"));
    }

    /**
     * complete steps to upload attachment and perform click on second tab on same modal
     */
    public void uploadAttachmentAndMoveOnSecondTab(String fileName, String fileType) {
        By attachmentClassificationPath = By.xpath("//select[@title='Classification' or text()='Classification']");
        By attachmentDescriptionPath = By.xpath("//div//label[text()='Description']/..//textarea");
        By attachmentFilePath = By.xpath(""
                + "//td//label[text()='File']/../..//input[@type='file']"
                + " | //div//label[text()='File']/..//input[@type='file']"
                + " | //div//span[text()='File']/../..//input[@type='file']");
        String defaultFilePath = System.getProperty("user.dir") + "/src/main/resources/";
        String tableId = I.amPerforming().getElementReference().of(By.xpath("//*[contains(@class, 'panel-heading')]//button[text()='Add']")).getAttribute("data-target");
        tableId = tableId.substring(tableId.length() - 18);
        govgrants.perform().flexTable().clickTableTopRightButton(tableId, "Add");
        I.amPerforming().dropDownSelection().from(attachmentClassificationPath).selectByValue(fileType);
        I.amPerforming().textInput().in(attachmentDescriptionPath, "Success message on second tab");
        I.amPerforming().textInput().in(attachmentFilePath, defaultFilePath + fileName);
        I.amPerforming().click().on(By.xpath("//input[@value='Save']"));
        I.amPerforming().waitFor().makeThreadSleep(500);
        I.amPerforming().click().on(By.xpath("//div[@id='Attachmentadd']//span[text()='Upload file from Workspace']"));
    }

    /**
     * Handles to upload the file from workspace
     *
     * @param fileNameFromWorkSpace - file which is to be upload
     */
    public void uploadAttachmentFromWorkspace(String... fileNameFromWorkSpace) {
        I.amPerforming().waitFor().makeThreadSleep(3000);
        I.amPerforming().getElementReference().of(By.xpath("//div[@id='myTabbedContent']//span[contains(text(),'Attachment')]/..//div[@class='panel-heading']//*[text()='Add']")).click();
        I.amPerforming().switchTo().frame(By.xpath("//iframe[contains(@ng-src, 'apex') or contains(@src,'apex')]"));
        I.amPerforming().click().on(By.xpath("//div[@id='Attachmentadd']//span[text()='Upload file from Workspace']"));
        for (String uniqueColumn : fileNameFromWorkSpace) {
            I.amPerforming().click().on(By.xpath("//div[@id='Attachmentadd']//td[text()='" + uniqueColumn + "']/..//input"));
        }
        govgrants.perform().modal().clickModalContentSpecificButton("Attach");
        govgrants.perform().modal().closeModalByClickingTopRightCloseButton();
    }

    /**
     * complete steps to upload sheet JS file inside download and upload wizard modal
     */
    public void uploadSheetJSFIle(String fileName, String buttonName) {
        By attachmentFilePath = By.xpath("//input[@id='fileUpload' or @type='file']");
        By modalButton = By.xpath("//button[contains(text(),'" + buttonName + "') and contains(@class,'customBtn')]");
        String defaultFilePath = System.getProperty("user.dir") + "/src/main/resources/";
        I.amPerforming().textInput().in(attachmentFilePath, defaultFilePath + fileName);
        I.amPerforming().click().on(modalButton);
    }

    /**
     * click and enter value in fields on send email modal
     */
    public void enterValueInSendEmailModalFields(String value, String fieldLabel) {
        if (fieldLabel.equalsIgnoreCase("Body Content")) {
            WebElement fieldOnSendEmailModal = I.amPerforming().getElementReference().of(By.xpath("//label[contains(text(),'" + fieldLabel + "')]/following-sibling::div//textarea"));
            I.amPerforming().textInput().toClear(fieldOnSendEmailModal);
            fieldOnSendEmailModal.sendKeys(value);
        } else {
            WebElement fieldOnSendEmailModal = I.amPerforming().getElementReference().of(By.xpath("//label[contains(text(),'" + fieldLabel + "')]/following-sibling::div//input[@type='text']"));
            I.amPerforming().textInput().toClear(fieldOnSendEmailModal);
            fieldOnSendEmailModal.sendKeys(value);
        }
    }

    /**
     * click and select package type and package for business form
     */
    public void selectPackageAndPackageType() {
        I.amPerforming().waitFor().makeThreadSleep(3000);
        I.amPerforming().click().on(By.xpath("//select[@id='selectPackageType']"));
        I.amPerforming().dropDownSelection().from(By.xpath("//select[@id='selectPackageType']")).selectByVisibleText("Application");
        I.amPerforming().click().on(By.xpath("//input[@id='radio1']"));
    }

    /**
     * click on svg arrow on owner orgaisation look up modal at page block detail
     */
    public void clickSVGArrowElementAtOwnerOrganisationLookUpModal(String order) {
        WebElement svgArrowElement = I.amPerforming().getElementReference().of(By.xpath("//div[@class='ltngDataTable']//lightning-primitive-icon/*[name()='svg' and @data-key='arrowdown']/ancestor::th[@aria-sort]"));
        if (!svgArrowElement.getAttribute("aria-sort").equalsIgnoreCase(order)) {
            I.amPerforming().click().on(svgArrowElement);
        }
    }

    /**
     * click on expand collapse icon at table header
     */
    public void clickExpandCollapseIconAtTableHeader(String panelHeaderName) {
        WebElement expandCollapseIcon = I.amPerforming().getElementReference().of(By.xpath("//div[@class='panel-heading']//a[@title='" + panelHeaderName + "']"));
        I.amPerforming().click().on(expandCollapseIcon);
    }

    /**
     * click on look up link at page
     */
    public void performClickOnLookupLink(String lookupLink) {
        I.amPerforming().click().on(By.xpath("//dl//dd//a[contains(text(),'" + lookupLink + "')]"));
    }

    /**
     * click on svg arrow on owner orgaisation look up modal at page block detail
     */
    public void clickOnSelectLinkForLookupSpecificRecord(String organizationName) {
        WebElement selectLinkWRTToOrganizationName = I.amPerforming().getElementReference().of(By.xpath("//lightning-formatted-text[text()='" + organizationName + "']/ancestor::td/preceding-sibling::th//button[contains(@title,'selectTitle')]"));
        I.amPerforming().click().on(selectLinkWRTToOrganizationName);
    }

    /**
     * click on close/search for lightning look up modal at page block detail
     */
    public void clickOnIconsAtOwnerOrganisationLightningLookUpModal(String iconName) {
        try {
            I.amPerforming().getElementReference().of(By.xpath("//lightning-primitive-icon/*[name()='svg' and @data-key='" + iconName + "']/../parent::button[not(contains(@class,'hide'))]"));
        } catch (Exception e) {
        }
        WebElement iconAtLightningLookUp1 = I.amPerforming().getElementReference().of(By.xpath("//lightning-primitive-icon/*[name()='svg' and @data-key='" + iconName + "']"));
        I.amPerforming().scroll().toMoveToElement(By.xpath("//div[@id='custom_lookupAccount__c']"));
        I.amPerforming().click().on(iconAtLightningLookUp1);
    }

    /**
     * click on send button present on send email modal window
     */
    public void clickOnSendEmailModalButton(String buttonName) {
        I.amPerforming().click().withJavaScript(By.xpath("//button[text()='" + buttonName + "' or @title='" + buttonName + "'][not(contains(@class,'btn btn-default'))]"));
    }

    /**
     * click on Search By field dropdown on send email modal window
     * Also select value from dropdown
     */
    public void clickSearchByButton(String fieldLabel, String dropdownValue) {
        By searchByField = By.xpath("//label[contains(text(),'" + fieldLabel + "')]/following-sibling::div//button[contains(text(),'Search By')]");
        By DropDownItem = By.xpath("//label[contains(text(),'" + fieldLabel + "')]/following-sibling::div//input[@value='" + dropdownValue + "']");
        I.amPerforming().click().on(searchByField);
        I.amPerforming().click().on(DropDownItem);
        I.amPerforming().click().on(searchByField);
    }

    /**
     * click on user/group from suggestion box appears by entering text in To/CC fields on send email modal window
     */
    public void selectValueInSendEmailModalFields(String userName, String iconName) {
        By selectValueFromSuggestionBox = By.xpath("//span[@class='" + iconName + "']/following-sibling::b[contains(text(),'" + userName + "')]");
        I.amPerforming().click().on(selectValueFromSuggestionBox);
    }

    /**
     * complete steps to upload attachment on send email modal window
     */
    public void uploadAttachmentInSendEmailModal(String attachmentName) {
        By attachmentChooseFilePath = By.xpath("//div//input[@id='fileselect']");
        String defaultFilePath = System.getProperty("user.dir") + "/src/main/resources/";
        I.amPerforming().textInput().in(attachmentChooseFilePath, defaultFilePath + attachmentName);
    }

    /**
     * click on user/group from suggestion box appears by entering text in To/CC fields on send email modal window
     */
    public void selectValueFromDropdownInHistory(String objectName) {
        By selectValueFromDropdown = By.xpath("//div[@id='History']//option[contains(text(),'" + objectName + "')]");
        I.amPerforming().click().on(selectValueFromDropdown);
    }

    /**
     * assert true/false for success messages on attachment modal
     */
    public void assertMessageOnAttachmentModalDisplayed(String pageblockName, boolean assertcan) {
        By pageMessagesSelector = By.xpath("//div[@id='errorDiv']//li//descendant-or-self::*[text()]| //div[contains(@class, 'alert') and @ng-repeat]| //div[contains(@class,'alertMessages')]//div[contains(@class,'alertMessage')]//span[@class='ng-binding']");
        List<Elements> elements = I.amPerforming().getElementReference().forListOfElements().of(pageMessagesSelector, false);
        if (assertcan) {
            Assert.assertNotEquals(elements.size(), 0);
        } else {
            Assert.assertEquals(elements.size(), 0);
        }
    }

    /**
     * click on footer links present at bottom of any page
     */
    public void clickOnAnyFooterLinks(String footerLinks) {
        I.amPerforming().click().on(By.xpath("//span[contains(@class,'footer-links')]//a[contains(text(),'" + footerLinks + "')]"));
    }

    /**
     * return true if specific text is displayed inside Attachment flex table
     *
     * @param valueToBeSearch
     * @param flexTableHeader
     */
    public void AssertFieldValueIsPresentInFlexTable(String valueToBeSearch, String flexTableHeader) {
        Assert.assertTrue(isTextDisplayedInsideEditAttachmentTable(valueToBeSearch, flexTableHeader));
    }

    /**
     * return true if expected field/element id disabled on edit page details
     */
    public void assertExpectedFieldAtEditPageDetails(String fieldAPIName) {
        Assert.assertTrue(isExpectedFieldIsDisplayedOnEditPageDetails(fieldAPIName));
    }

    /**
     * return true if expected link is present on page footer
     */
    public void assertFooterLinkIsPresent(String footerLinkName) {
        Assert.assertTrue(isExpectedLinkIsDisplayedInPageFooter(footerLinkName));
    }

    /**
     * return true if expected option is present under dropdown at dashboard
     */
    public void assertOptionsInDropdownAtDashboard(String usage, String dropdownOptions) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(IsExpectedOptionDisplayedInDropdownAtDashboard(dropdownOptions));
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(IsExpectedOptionDisplayedInDropdownAtDashboard(dropdownOptions)).isFalse();
        }
    }

    /**
     * return true if expected icon is present in CK Editor at page layout
     */
    public void assertIconIsPresentInCKEditorAtDescriptionField(String iconName) {
        Assert.assertTrue(isExpectedIconIsDisplayedInCKEditor(iconName));
    }

    /**
     * return true if hyperlink is present at text/URL in rich text area field at page layout
     */
    public void assertHyperlinkIsPresentAtRichTextArea(String textOrURLValue) {
        Assert.assertTrue(isHyperlinkPresentAtRichTextArea(textOrURLValue));
    }

    /**
     * return true if hyperlink is not present at user name at user profile page
     */
    public void assertHyperlinkIsNotPresentAtUserProfilePage(String userName) {
        Assert.assertTrue(isHyperlinkPresentAtUserName(userName));
    }

    /**
     * return true if likes count / label is displayed at user profile page
     */
    public void assertLikesCountOrLabelIsPresentAtUserDetailPage(String usage, String likesCountOrlabel) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isLikesCountOrLabelPresentAtUserDetailPage(likesCountOrlabel));
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isLikesCountOrLabelPresentAtUserDetailPage(likesCountOrlabel)).isTrue();
        }
    }

    /**
     * get owner organisation lookup modal complete content
     *
     * @return
     */

    public List<Elements> getCompleteContentForLookupModal() {
        return I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//lightning-formatted-text[text()]"));
    }

    /**
     * This function will return us list of users present in suggestion box under send email modal
     */
    public List<Elements> getCompleteContentForSendEmailSuggestionBox() {
        List<Elements> element = I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//div[@class='listDropdownToScroll']//ul//li//b"));
        return element;
    }

    /*********
     * "Local Methods with complete functionality - private"
     *****************/

    /**
     * return true if suggested over view header and title are displayed
     *
     * @param overViewTitleName
     * @param overViewHeaderName
     * @return
     */
    private boolean isOverViewTitleWithHeaderDisplayed(String overViewHeaderName, String overViewTitleName) {
        boolean flag = false;
        if ((I.amPerforming().actionToGet().text(overViewHeader).contains(overViewHeaderName))
                && (I.amPerforming().actionToGet().text(overViewTitle).contains(overViewTitleName))) {
            flag = true;
        }
        return flag;
    }

    /**
     * return true if text is displayed
     *
     * @param text
     * @return
     */
    private boolean isPageInstructionTextDisplayed(String text) {
        boolean flag = false;
        if (I.amPerforming().actionToGet().text(pageInstructionText).equalsIgnoreCase(text)) {
            flag = true;
        }
        return flag;
    }

    /**
     * return true if over view header is displayed
     *
     * @param overViewHeaderName
     * @return
     */
    private boolean isOverViewHeaderDisplayed(String overViewHeaderName) {
        boolean flag = false;
        if ((I.amPerforming().actionToGet().text(overViewHeader).contains(overViewHeaderName))) {
            flag = true;
        }
        return flag;
    }

    /**
     * return true if any specific top right hand button is not displayed
     *
     * @param buttonName
     * @return
     */
    private boolean isTopRightHeaderButtonDisplayed(String buttonName) {
        boolean flag = true;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//div[contains(@class,'panel-heading')]//*[@title='"
                    + buttonName + "' or text()='" + buttonName + "' or @value='" + buttonName + "']"))) {
                flag = false;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * validate if options are not displayed in Detail page
     *
     * @return: true if it is not displayed
     */
    private boolean isOptionsDownloadPDFDisabled() {
        TestingBlazeGlobal.setVariable("highlightElements", "off");
        boolean flag = false;
        try {
            if (getPDFOptionForVerification().getAttribute("style").toLowerCase().contains("display: none")) {
                flag = true;
            }
        } catch (Exception e) {
            flag = false;
        }
        return flag;
    }

    /**
     * validate if options are not displayed in Detail page
     *
     * @param option
     * @return: true if it is not displayed
     */
    private boolean isTakeSnapshotDisabled(String option) {
        TestingBlazeGlobal.setVariable("highlightElements", "off");
        boolean flag = false;
        try {
            if (getTakeSnapshotOptionForVerification(option).getAttribute("style").toLowerCase()
                    .contains("display: none")) {
                flag = true;
            }
        } catch (Exception e) {
            flag = false;
        }
        return flag;
    }

    /**
     * get take snapshot item from top right bar inside menu without waiting for
     * presence.
     *
     * @param headerItem
     * @return
     */
    private WebElement getTakeSnapshotOptionForVerification(String headerItem) {
        return I.amPerforming().getElementReference().of(By.xpath("//div[@id='headerButtonsPanel']//ul/li//a[@title='" + headerItem + "']"));
    }

    /**
     * validate if prompt dialog box is displayed on click of submit for approval
     * button
     *
     * @return: true if it is not displayed
     */
    private boolean isPromptBoxDisplayed() {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(getPromptBoxForVerification()) || I.amPerforming().checkToSee().isEnabled(getPromptBoxForVerification())) {
                flag = true;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return flag;
    }

    /**
     * return true if any header button is not displayed
     *
     * @param buttonName
     * @return
     */
    private boolean isHeaderButtonDisplayed(String buttonName) {
        boolean flag = true;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//div[@id='headerButtonsPanel']//*[@title='" + buttonName + "']"))) {
                flag = false;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * return true if any header button is not displayed
     *
     * @param subTabName
     * @return
     */
    private boolean isSubTabButtonDisplayed(String subTabName) {
        boolean flag = true;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(getSubTabsInsideMainDetailPage(subTabName))) {
                flag = false;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {

        }
        return flag;
    }

    /**
     * Boolean status of Sub tab sorting order
     *
     * @param subTabName
     */
    private boolean isSubTabSequence(String subTabName, int number) {
        if (getListSubTabsInsideMainDetailPage().get(number).getText().contains(subTabName)) {
            return true;
        } else
            return false;
    }

    /**
     * return true if text is displayed
     *
     * @param headerText
     * @return
     */
    private boolean isHeaderInstructionTextDisplayed(String headerText) {
        boolean flag = false;
        if (I.amPerforming().actionToGet().text(headerInstructionText).equalsIgnoreCase(headerText)) {
            flag = true;
        }
        return flag;
    }

    /**
     * return true if changed tile of sub tab is displayed
     *
     * @param subTabName
     * @return
     */
    private boolean isChangedSubTabTitleDisplayed(String subTabName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(getSubTabsInsideMainDetailPage(subTabName))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {

        }
        return flag;
    }

    /**
     * return true if header overview tab is displayed
     *
     * @return
     */
    private boolean isHeaderOviewTabDisplayed() {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(headerOverviewTab)) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * Boolean status of page block sorting order
     *
     * @param pageBlockName
     */
    private Boolean isPageBlockSequence(String pageBlockName, int number) {
        if (getListPageBlockInsideMainDetailPage().get(number).getText().contains(pageBlockName)) {
            return true;
        } else
            return false;
    }

    /**
     * return true if text is displayed
     *
     * @param headerText
     * @return
     */
    private boolean isHeaderInstructionTextDisplayedAtPageBlock(String headerText) {
        boolean flag = false;
        if (I.amPerforming().actionToGet().text(headerInstructionTextForPageBlock).equalsIgnoreCase(headerText)) {
            flag = true;
        }
        return flag;
    }

    /**
     * Boolean status of no of elements inside page block row
     *
     * @param titleName
     */
    private Boolean isExpectedNumberOfElementPresent(String titleName, int number) {
        boolean flag = false;
        List<Elements> firstRowElements = I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//h3//a[contains(text(),'" + titleName
                + "')]/ancestor::div[2]/following-sibling::div[contains(@id,'toggleBlock')]/div[1]/div"));
        if (firstRowElements.size() == number) {
            flag = true;
        } else {
            flag = false;
        }
        return flag;
    }

    /**
     * validate if flex table title is displayed with respective title at page block
     *
     * @return
     */
    private boolean isChangedFlexTableTitleDisplayedAtPageBlock() {
        I.amPerforming().scroll().toElementCenter(rolesAndResponsibilitiesFlexTableTitle);
        try {
            if (I.amPerforming().checkToSee().isDisplayed(rolesAndResponsibilitiesFlexTableTitle)) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            return false;
        }
    }

    /**
     * validate if changed flex grid is displayed with respective title at page
     * block
     *
     * @return
     */
    private boolean isChangedFlexGridTitleDisplayedAtPageBlock() {
        I.amPerforming().scroll().toElementCenter(monitoringFlexGridTitle);
        try {
            if (I.amPerforming().checkToSee().isDisplayed(monitoringFlexGridTitle)) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            return false;
        }
    }

    /**
     * Boolean status of Edit action item inside attachment page block row
     *
     * @param pageBlockName
     */
    private boolean isEditActionItemDisabledForAttachment(String pageBlockName) {
        boolean flag = false;
        try {
            if (getListAttachmentTableSpecificColumnActions(pageBlockName).size() > 0) {
                flag = true;
            }
        } catch (Exception e) {
            flag = false;
        }
        return flag;
    }

    /**
     * get list of element in attachment table action
     *
     * @param pageBlockName
     * @return
     */
    private List<Elements> getListAttachmentTableSpecificColumnActions(String pageBlockName) {
        return I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//div[@class='panel-heading']//a[@title='"
                + pageBlockName
                + "']/../../../following-sibling::div[contains(@class,'panel-body')]//table/tbody/tr/td//a/span[contains(@class,'fa fa-pencil disable-action')]"));
    }

    /**
     * @param changedFieldName
     * @return true if changed field inside page block detail is displayed
     */
    private boolean isChangedPageBlockDetailFieldDisplayed(String changedFieldName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(getPageBlockDetailsElement(changedFieldName))) {
                flag = true;
            }
        } catch (Exception e) {

        }
        return flag;
    }

    /**
     * return true if Specified field at page block detail is not displayed
     *
     * @param changedFieldName
     * @return
     */
    private boolean isSpecificFieldAtPageBlockDetailDisplayed(String changedFieldName) {
        boolean flag = true;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(getPageBlockDetailsElement(changedFieldName))) {
                flag = false;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {

        }
        return flag;
    }

    /**
     * get item from page block details
     *
     * @param changedFieldName
     * @return
     */
    private WebElement getPageBlockDetailsElement(String changedFieldName) {
        return I.amPerforming().getElementReference().of(By.xpath("//span[contains(text(),'" + changedFieldName + "')]"));
    }

    /**
     * Boolean status of page block detail element sorting order
     *
     * @param changedFieldName
     */
    private Boolean isPageBlockDetailElementSequence(String changedFieldName, int number) {
        if (getListOfPageBlockDetailElement().get(number).getText().contains(changedFieldName)) {
            return true;
        } else
            return false;
    }

    /**
     * @return false if expected element is not displayed on look modal
     */
    private Boolean isTableColumnHeaderNameOnLookModal(String titleName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(govgrants.perform().flexTable().getSpecificElementFromTableHeader(titleName))
                    || I.amPerforming().checkToSee().isEnabled(govgrants.perform().flexTable().getSpecificElementFromTableHeader(titleName))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
            flag = false;
        }
        return flag;
    }

    /**
     * return true if statusName is displayed
     *
     * @param statusName
     * @return
     */
    private Boolean isStatusDisplayedForLookupModal(String statusName) {
        boolean flag = false;
        I.amPerforming().waitFor().makeThreadSleep(5000);
        try {
            if (I.amPerforming().checkToSee().isDisplayed(getTableColumnOfLookupModal(statusName))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * return true if cancel button is displayed
     *
     * @param buttonName
     * @return
     */
    private boolean isButtonDisplayedAtOverlayWindow(String buttonName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//span/a[contains(text(),'" + buttonName + "')]"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * validate if options are not displayed in Detail page
     *
     * @return: true if it is not displayed
     */
    private boolean isEditButtonDisplayedInsideMenuDropDown() {
        boolean flag = false;
        try {
            if (getEditButtonOptionVerification().getAttribute("style").toLowerCase().contains("display: none")) {
                flag = true;
            }
        } catch (Exception e) {
            flag = false;
        }
        return flag;
    }

    /**
     * check the sequence of the edit button action at page layout action
     *
     * @param buttonName
     * @param sequenceNumber
     * @return true/false
     */
    private boolean isEditButtonActionSequence(String buttonName, int sequenceNumber) {
        if (I.amPerforming().getElementReference().forListOfElements().of(pageLayoutButton).get(sequenceNumber).getAttributes("title").contains(buttonName)) {
            return true;
        } else
            return false;
    }

    /**
     * return true if specified Button is displayed on opened modal
     *
     * @param buttonName
     * @return
     */
    private boolean isSpecificButtonOnModalDisplayed(String buttonName) {
        boolean flag = false;
        if (I.amPerforming().checkToSee().isDisplayed(By.xpath(
                "//input[@value='" + buttonName + "' or @type='" + buttonName + "' or text()='" + buttonName + "']"))) {
            flag = true;
        }
        return flag;
    }

    /**
     * To verify any value is present in specifically in attachment flex table or not
     *
     * @param valueToBeSearch
     * @param flexTableHeader
     * @return
     */
    public boolean isTextDisplayedInsideEditAttachmentTable(String valueToBeSearch, String flexTableHeader) {
        if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//a[@title='" + flexTableHeader + "']/../../../following-sibling::div//tbody//td/span[text()='" + valueToBeSearch + "']")))
            return true;
        else
            return false;
    }

    /**
     * return true if expected field on edit page detail is displayed
     *
     * @param fieldApiName
     * @return
     */
    private boolean isExpectedFieldIsDisplayedOnEditPageDetails(String fieldApiName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath(
                    "//div[@id='" + fieldApiName + "']//select[@disabled]"))) {
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    /**
     * return true if content appears in Ascending/Descending order for look up modal
     *
     * @return
     */
    private boolean isContentOfLookupModalInExepctedOrder(String order) {
        return I.amPerforming().comparisonOf().sortAndCompareOneTableColumn(getCompleteContentForLookupModal(), order);
    }

    /**
     * return true if data table is displayed
     *
     * @return
     */
    private boolean isDataTableForLookupDisplayed() {
        boolean flag = false;
        if (getCompleteContentForLookupModal().size() > 0) {
            flag = true;
        }
        return flag;
    }

    /**
     * return true if order of svg arrow is in expected order
     *
     * @param order
     * @return
     */
    private boolean isOrderOfSVGArrowIsInExpectedOrder(String order) {
        boolean flag = false;
        if (I.amPerforming().actionToGet().attribute(By.xpath("//div[@class='ltngDataTable']//lightning-primitive-icon/*[name()='svg' and @data-key='arrowdown']/ancestor::th[@aria-sort]"), "aria-sort").equalsIgnoreCase(order)) {
            flag = true;
        }
        return flag;
    }

    /**
     * return true if order of svg arrow is in expected order
     *
     * @return
     */
    private boolean isExpandCollapseWorkingAsExpected() {
        boolean flag = false;
        if (I.amPerforming().actionToGet().attribute(By.xpath("//div[@class='panel-heading']//a[@title='Internal Review Panel Users']"), "class").equalsIgnoreCase("collapsed")) {
            flag = true;
        }
        return flag;
    }

    /**
     * return true if expected error messge is displayed for invalid input
     *
     * @return
     */
    private boolean isErrorMessageAtLightningLookupSearch(String inputText, String fieldApiName) {
        boolean flag = false;
        if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//div[@id='" + fieldApiName + "']//b[contains(text(),'" + inputText + "')]"))) {
            flag = true;
        }
        return flag;
    }

    /**
     * return true if expected element getting focused on click of error message
     */
    private boolean isExpectedFieldGettingFocused() {
        boolean flag = false;
        double yoffSet1 = I.amPerforming().actionToGet().getPageOffSetYAxis();
        if (yoffSet1 > 0) {
            flag = true;
        }
        return flag;
    }

    /**
     * @return false if element is not displayed
     */
    private Boolean isEnhancedLookupRecordsGettingFilterOut(String status) {
        boolean flag = false;
        for (int i = 0; i < getCompleteContentForLookupModal().size(); i++) {
            if (getCompleteContentForLookupModal().get(i).getText().contains(status))
                flag = true;
        }
        return flag;
    }

    /**
     * return true if  modal containing top level action
     *
     * @return
     */
    private boolean isModalContainingTopLevelAction(String topActionName) {
        boolean flag = false;
        if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//button[text()='" + topActionName + "']"))) {
            flag = true;
        }
        return flag;
    }

    /**
     * return true if session timeout remainder dialog box appears in browser tab
     *
     * @return
     */
    private boolean IsSessionTimeoutRemainderCountdownDisplayed(String countDownTimer) {
        boolean flag = false;
        I.amPerforming().waitFor().makeThreadSleep(2000);
        String ele = I.amPerforming().actionToGet().pageTitle();
        try {
            if (ele.contains(countDownTimer)) {
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    /**
     * return true if Logout Page is Displayed after session expiry
     *
     * @return
     */
    private boolean IsLogoutPageDisplayed(String usage, String logoutURL) {
        boolean flag = false;
        if (!usage.equalsIgnoreCase("complete")) {
            String ele = I.amPerforming().actionToGet().currentURL();
            String[] d = ele.split("/", 4);
            String d1 = d[0] + "/" + d[1] + "/" + d[2];
            if (d1.equalsIgnoreCase(logoutURL)) {
                flag = true;
            }
        } else {
            String ele = I.amPerforming().actionToGet().currentURL();
            if (ele.equalsIgnoreCase(logoutURL)) {
                flag = true;
            }
        }
        return flag;
    }

    /**
     * return true if dialog box body contains text as Test Automation Body Text
     *
     * @return
     */
    private boolean isSessionTimeoutDialogboxTextDisplayed(String bodyContent) {
        WebElement ele = I.amPerforming().getElementReference().of(By.xpath("//div[contains(@class,'ui-dialog-content')]"));
        boolean flag = false;
        if (ele.getText().contains(bodyContent)) {
            flag = true;
        }
        return flag;
    }

    /**
     * return true if given buttonName is displayed under session timeout dialog box
     *
     * @return
     */
    private boolean IsButtonDisplayedUnderDialogBox(String buttonName) {
        boolean flag = false;
        if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//button[text()='" + buttonName + "']"))) {
            flag = true;
        }
        return flag;
    }

    /**
     * return true if internal & external both users are displayed in suggestion box under send email modal
     *
     * @return
     */
    private Boolean isInternalExternalUsersDisplayedInSuggestionBox(List<Map<String, String>> status) {
        boolean flag = false;
        Loop1:
        for (Map<String, String> pStatus : status) {
            List<Elements> elements = getCompleteContentForSendEmailSuggestionBox();
            Loop2:
            for (int i = 0; i < elements.size(); i++) {
                if (elements.get(i).getText().equalsIgnoreCase(pStatus.get("userName"))) {
                    flag = true;
                    break Loop2;
                } else {
                    flag = false;
                }
            }
            if (flag == false) {
                break Loop1;
            }
        }
        return flag;
    }

    /**
     * return true if uploaded attachment is present under send email modal
     *
     * @return
     */
    private Boolean isAttachmentPresentInSendEmailModal(String attachmentName) {
        boolean flag = false;

        if (I.amPerforming().getElementReference().of(By.xpath("//tbody//tr//td[contains(text(),'" + attachmentName + "')]")).isDisplayed()) {
            flag = true;
        }
        return flag;
    }

    /**
     * @return true if sticky bottom menu is displayed at footer
     */
    private boolean isStickyBottomMenuOptionDisplayed(String id) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(govgrants.perform().phasePanel().getStickyBottomMenu(id))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @return true if expected text is displyed inside history table
     */
    private boolean isTextPresentInsideHistoryTable(String colName, String rowNo, String tData, String colNo, String text) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(I.amPerforming().getElementReference().of(By.xpath("//th[text()='" + colName + "']//ancestor::tbody/following-sibling::tbody[" + rowNo + "]/tr[" + tData + "]//td[" + colNo + "]//*[text()='" + text + "']")))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @return true if expected footer link is displayed
     */
    private boolean isExpectedLinkIsDisplayedInPageFooter(String footerLinkName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//a[contains(text(),'" + footerLinkName + "')]"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * return true if specified Approver is displayed inside chevron
     */
    private boolean isUserDisplayedInsideChevron(String approverTitle, String approverName) {
        boolean flag = false;
        if (approverTitle.equalsIgnoreCase("Initial Submitter")) {
            try {
                if (I.amPerforming().checkToSee().isDisplayed(I.amPerforming().getElementReference().of(By.xpath("//div[@id='chevronBarId']//a[contains(text(),'" + approverTitle + "')]//ancestor::ul/following-sibling::ul//li[1]//a/span[contains(text(),'" + approverName + "')]")))) {
                    flag = true;
                }
            } catch (Exception e) {
                flag = false;
            }

        } else if (approverTitle.equalsIgnoreCase("Program Manager Approver")) {
            try {
                if (I.amPerforming().checkToSee().isDisplayed(I.amPerforming().getElementReference().of(By.xpath("//div[@id='chevronBarId']//a[contains(text(),'" + approverTitle + "')]//ancestor::ul/following-sibling::ul//li[2]//a/span[contains(text(),'" + approverName + "')]")))) {
                    flag = true;
                }
            } catch (Exception e) {
                flag = false;
            }
        }
        return flag;
    }

    /**
     * @return true if expected option is present under dropdown at dashboard
     */
    private boolean IsExpectedOptionDisplayedInDropdownAtDashboard(String dropdownOptions) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//button[@id='menuPhase']/following-sibling::ul//input[" + I.amPerforming().sanityOfXpathTo().equals("@aria-label", dropdownOptions) + "]"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @return true if expected icon is present in CK Editor for rich text area at page layout
     */
    private boolean isExpectedIconIsDisplayedInCKEditor(String iconName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(getIconInRichTextAreaField(iconName))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @return true if hyperlink is present at text/URL in rich text area field at page layout
     */
    private boolean isHyperlinkPresentAtRichTextArea(String textOrURLValue) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//body/a[text()='" + textOrURLValue + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @return true if hyperlink is not present at user name at user profile page
     */
    private boolean isHyperlinkPresentAtUserName(String userName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//div[contains(@class,'profileSidebar')]//span[text()='" + userName + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @return true  likes count / label is displayed at user profile page
     */
    private boolean isLikesCountOrLabelPresentAtUserDetailPage(String likesCountOrlabel) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//div[@class='postInfo']//span[text()='" + likesCountOrlabel + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }
}