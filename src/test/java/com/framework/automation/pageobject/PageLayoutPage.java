package com.framework.automation.pageobject;

import com.automation.rei.handlers.govgrants;
import com.framework.automation.projectmanager.GovGrantsManager;
import com.testingblaze.actionsfactory.api.ByUsing;
import com.testingblaze.controller.TestingBlazeGlobal;
import com.testingblaze.objects.Elements;
import com.testingblaze.register.I;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;

import java.io.IOException;
import java.time.YearMonth;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Map;

public class PageLayoutPage extends GovGrantsManager {

    /******* "Variables and Locators" *****************/
    private final By overViewHeader, overViewTitle, headerInstructionText, headerOverviewTab,
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
     * assert if options displayed or not displayed inside menu dropdown for page layout
     *
     * @param options
     * @modifier: ashwini.mahore
     */
    public void assertTopRightParallelLinesBarOptionsAtPageLayout(String usage, String options) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isTopRightParallelLinesBarOptionsAtPageLayoutDisplayed(options));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isTopRightParallelLinesBarOptionsAtPageLayoutDisplayed(options));
        }
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
        I.amPerforming().assertionsTo().assertThat(isChangedSubTabTitleDisplayed(subTabName)).isTrue();
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
     * return true if page block or form section is displayed in expected sort order inside page / dynamic form layout
     *
     * @param pageBlockName
     * @param number
     */
    public void assertSortingOfPageBlockAndFormSections(String pageBlockName, int number) {
        Assert.assertTrue(isPageBlockAndFormSectionDisplayedInOrder(pageBlockName, number));
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
     * assert true if specific field inside page block detail as per name is not
     * displayed
     *
     * @param changedFieldName
     */
    public void assertSpecificFieldInsidePageBlockDetailNotDisplayed(String usage, String changedFieldName) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isSpecificFieldAtPageBlockDetailDisplayed(changedFieldName));
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isSpecificFieldAtPageBlockDetailDisplayed(changedFieldName)).isTrue();
        }
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
    public void assertTopRightButtonDisplayed(String usage, String buttonName) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertFalse(isTopRightHeaderButtonDisplayed(buttonName));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertTrue(isTopRightHeaderButtonDisplayed(buttonName));
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isTopRightHeaderButtonDisplayed(buttonName)).isFalse();
        } else if (usage.equalsIgnoreCase("softly do not see")) {
            I.amPerforming().assertionsTo().assertThat(isTopRightHeaderButtonDisplayed(buttonName)).isTrue();
        }
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
    public void assertFunctionalityOfExpandCollapse(String usage, String blockName) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isExpandCollapseWorkingAsExpected(blockName));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isExpandCollapseWorkingAsExpected(blockName));
        } else if (usage.equalsIgnoreCase("softly do not see")) {
            I.amPerforming().assertionsTo().assertThat(isExpandCollapseWorkingAsExpected(blockName)).isFalse();
        }

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
    public void assertAttachmentPresentInSendEmailModal(String usage, String attachmentName) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isAttachmentPresentInSendEmailModal(attachmentName));
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isAttachmentPresentInSendEmailModal(attachmentName)).isTrue();
        }
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
        I.amPerforming().getElementReference().of(ByUsing.xpath("//button[" + I.amPerforming().sanityOfXpathTo().equals("text()", buttonName) + "] |" +
                "//a[text()='" + buttonName + "']")).click();
    }

    /**
     * select value at By Phase dropdown and click at action
     *
     * @param dropdownValue
     * @param action
     */
    public void selectValueAndClickAtFilter(String dropdownValue, String action) {
        I.amPerforming().click().on(ByUsing.xpath("//input[@aria-label='Select " + dropdownValue + "' and @type='checkbox']"));
        I.amPerforming().click().on(ByUsing.xpath("//button[text()='" + action + "']"));
    }

    /**
     * @param iconName select all text from input-box and click at icons inside CK-Editor (rich text editor) text box
     * @author ashwini.mahore
     */
    public void selectAndClickAtIconToChangeTextFormatting(String iconName) {
        String selectAll = Keys.chord(Keys.CONTROL, "a");
        WebElement ele = I.amPerforming().getElementReference().of(ByUsing.xpath("//body[contains(@class,'cke_editable')]"));
        I.amPerforming().textInput().in(ele, selectAll);
        govgrants.perform().pageDetails().clickAtIconInRichTextAreaEditorMenuOptions(iconName);
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
     * click on send email search by field dropdown
     */
    public void clickOnSendEmailSearchByField(String fieldLabel) {
        I.amPerforming().click().on(getSendEmailSearchByField(fieldLabel));
    }

    /**
     * click on cross icon at uploaded file at attachment section in send email modal
     */
    public void clickOnCrossIconAtAttachmentSectionAtSendEmailModal(String attachmentName) {
        I.amPerforming().click().on(By.xpath("//td[normalize-space(text())='" + attachmentName + "']/following-sibling::td//i[contains(@class,'fa-times')]"));
        ;
    }

    /**
     * select value from radio buttons at form layout
     *
     * @param value
     * @param fieldApiName
     * @author ashwini.mahore
     */
    public void selectValueInsideRadioFieldAtFormLayout(String value, String fieldApiName) {
        By getRadioButtons = By.xpath("//div[@id='" + fieldApiName + "']//*[local-name()='label' and contains(text(),'" + value + "')]");
        I.amPerforming().click().on(getRadioButtons);
    }


    /**
     * mouse hover on help text icon at field inside page block
     *
     * @param fieldName
     * @param pageBlockName
     * @author ashwini.mahore
     */
    public void hoverAttHelpTextAtFieldInsidePageBlock(String fieldName, String pageBlockName, boolean isPageBlock) {
        if (isPageBlock) {
            I.amPerforming().scroll().toMoveToElement(ByUsing.xpath("//span[text()='" + pageBlockName + "']/ancestor::div[@class='panel-heading']/following-sibling::div//span[text()='" + fieldName + "']/..//span[contains(@class,'fa-info')]"));
        } else {
            I.amPerforming().scroll().toMoveToElement(ByUsing.xpath("//span[text()='" + pageBlockName + "']/..//span[text()='" + fieldName + "']/..//span[contains(@class,'fa-info')]"));
        }
    }

    /**
     * select value from collab sidebar menu
     *
     * @param menu
     * @author ashwini.mahore
     */
    public void clickOnCollabSidebarMenu(String menu) {
        By getCollabSidebarMenu = By.xpath("//div[@id='CollabMenu']//*[text()='" + menu + "']");
        I.amPerforming().click().on(getCollabSidebarMenu);
    }

    /**
     * close lightning modal
     *
     * @author ashwini.mahore
     */
    public void closeLightningModal() {
        I.amPerforming().click().on(ByUsing.xpath("//a[@class='dialogClose']"));
    }

    /**
     * select value from radio buttons at form layout
     *
     * @param value
     * @author ashwini.mahore
     */
    public void enterValueInsidePostOrCommentCollab(String value, Boolean isPost) {
        if (isPost) {
            By feedSection = By.xpath("//div/textarea[@class='mention-for-post']");
            I.amPerforming().click().on(feedSection);
            I.amPerforming().textInput().in(feedSection, value);
            I.amPerforming().waitFor().makeThreadSleep(2000);
        } else {
            By commentSection = By.xpath("//div[contains(@class,'createCollabComment') and contains(@class,'active')]//textarea[@class='mention-for-comment']");
            I.amPerforming().waitFor().makeThreadSleep(2000);
            I.amPerforming().click().on(commentSection);
            I.amPerforming().textInput().in(commentSection, value);
        }
    }

    /**
     * get send email search by field at send email modal
     */
    public WebElement getSendEmailSearchByField(String fieldLabel) {
        By searchByField = By.xpath("//label[contains(text(),'" + fieldLabel + "')]/following-sibling::div//button[contains(text(),'Search By')]");
        return I.amPerforming().getElementReference().of(searchByField);
    }

    /**
     * get drop down items from search by field at to/cc email field under send email modal
     */
    public WebElement getSearchByFieldDropDownItems(String fieldLabel, String dropdownValue) {
        By DropDownItem = By.xpath("//label[contains(text(),'" + fieldLabel + "')]/following-sibling::div//input[@value='" + dropdownValue + "']");
        return I.amPerforming().getElementReference().of(DropDownItem);
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
    public WebElement getPDFOptionForVerification(String options) {
        return I.amPerforming().getElementReference().of(By.xpath("//ul[@aria-labelledby='dropdownMenu1']//*[@title='" + options + "']/ancestor::li"));
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
        I.amPerforming().textInput().withJavaScript(attachmentFilePath, defaultFilePath + fileName);
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
            WebElement fieldOnSendEmailModal = I.amPerforming().getElementReference().of(By.xpath("//label[contains(text(),'" + fieldLabel + "')]/following-sibling::div//input[@type='text']" +
                    "| //label[contains(text(),'" + fieldLabel + "')]/parent::th/following-sibling::td//input[@type='text']"));
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
    public void performClickOnLookupLink(String usage, String lookupLink) {
        if (usage.contains("contains")) {
            TestingBlazeGlobal.setVariable("highlightElements", "off");
            By getLookupLink = ByUsing.xpath("//td[contains(@class,'fc-today')]/ancestor::div[@class='fc-bg']//following-sibling::div//tr[1]//span[contains(text(),'" + lookupLink + "')]");
            I.amPerforming().click().on(getLookupLink);
        } else {
            I.amPerforming().click().on(ByUsing.xpath("//dl//dd//a[contains(text(),'" + lookupLink + "')] | //div[@class='listBody']//span[text()='" + lookupLink + "']"));
        }
    }

    /**
     * click on svg arrow on owner orgaisation look up modal at page block detail
     */
    public void clickOnSelectLinkForLookupSpecificRecord(String organizationName) {
        WebElement selectLinkWRTToOrganizationName = I.amPerforming().getElementReference().of(By.xpath("//lightning-formatted-text[text()='" + organizationName + "']/ancestor::td/preceding-sibling::th//button[contains(@title,'selectTitle')]"));
        I.amPerforming().click().on(selectLinkWRTToOrganizationName);
    }

    /**
     * click on refresh button at collab my feed section inside page block detail
     */
    public void clickRefreshButtonAtCollabPhase() {
        WebElement getRefreshButtonAtCollabPhase = I.amPerforming().getElementReference().of(ByUsing.healingXpathName("pageLayout_getCollabRefreshIcon"));
        I.amPerforming().click().on(getRefreshButtonAtCollabPhase);
    }

    /**
     * click on previous/next icon at calendar component
     *
     * @param buttonName
     */
    public void clickNavigationButtonAtCalendar(String buttonName) {
        if (buttonName.equalsIgnoreCase("Previous")) {
            I.amPerforming().click().on(ByUsing.xpath("//*[@id='calendar']//*[contains(@class,'fa-chevron-left')]"));
        }
        if (buttonName.equalsIgnoreCase("Next")) {
            I.amPerforming().click().on(ByUsing.xpath("//*[@id='calendar']//*[contains(@class,'fa fa-chevron-right')]"));
        }
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
     * click on Search By field dropdown on send email modal window
     * Also select value from dropdown
     */
    public void clickSearchByButton(String fieldLabel, String dropdownValue) {
        I.amPerforming().click().on(getSendEmailSearchByField(fieldLabel));
        I.amPerforming().click().on(getSearchByFieldDropDownItems(fieldLabel, dropdownValue));
        I.amPerforming().click().on(getSendEmailSearchByField(fieldLabel));
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
    public void assertExpectedFieldAtEditPageDetails(String usage, String fieldAPIName) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isExpectedFieldIsDisplayedOnEditPageDetails(fieldAPIName));
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isExpectedFieldIsDisplayedOnEditPageDetails(fieldAPIName)).isTrue();
        }
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
     * return true if expected arrow is displayed at user drop-down at header
     */
    public void assertArrowIsDisplayedAtUserDropDown() {
        Assert.assertTrue(isExpectedArrowDisplayedAtUserDropDown());
    }

    /**
     * return true if dateTime field value is displayed in an expected format as per selected LOCAL - in History table
     *
     * @param dateTimeFieldValue
     * @param columnName
     */
    public void assertDateTimeDisplayedInExpectedFormatInHistoryTable(String usage, String dateTimeFieldValue, String columnName) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isDateTimeDisplayedInExpectedFormatInHistoryTable(dateTimeFieldValue, columnName));
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isDateTimeDisplayedInExpectedFormatInHistoryTable(dateTimeFieldValue, columnName)).isTrue();
        }
    }

    /**
     * return true if lookup modal window width is rendered as expected
     */
    public void assertLookupModalWidthIsRenderedProperly(String width) {
        Assert.assertTrue(isLookupModalWidthRenderedProperly(width));
    }

    /**
     * return true if search by field dropdown contains expected values at send email modal
     *
     * @param dropdownValue
     * @param fieldLabel
     */
    public void assertSearchByFieldDropdownValues(String usage, String fieldLabel, String dropdownValue) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isExpectedDropDownValueDisplayedAtSendEmailModal(fieldLabel, dropdownValue));
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isExpectedDropDownValueDisplayedAtSendEmailModal(fieldLabel, dropdownValue)).isTrue();
        }
    }

    /**
     * return true if subject/body displays expected values in it at send email modal
     *
     * @param value
     * @param fieldLabel
     */
    public void assertFieldValueAtSendEmailModal(String usage, String value, String fieldLabel) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isExpectedFieldValueDisplayedAtSendEmailModal(value, fieldLabel));
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isExpectedFieldValueDisplayedAtSendEmailModal(value, fieldLabel)).isTrue();
        }
    }

    /**
     * return true if boarder is displayed at page block detail section
     */
    public void assertBoarderIsDisplayedAtPageBlockSection() {
        Assert.assertTrue(isBoarderDisplayedAtPageBlockSection());
    }

    /**
     * return true if attached file is deleted successfully at send email modal
     */
    public void assertAttachedFileIsDeletedSuccessfullyAtSendEmail(String attachmentName) {
        Assert.assertTrue(isAttachedFileIsDeletedSuccessfullyAtSendEmail(attachmentName));
    }

    /**
     * return true if if at TO or CC field , a search item display box size is displayed properly at Send Email Modal
     */
    public void assertSearchItemDisplayBoxSizeIsProperAtSendEmailModal(String fieldName, String condition) {
        Assert.assertTrue(isSearchItemDisplayBoxSizeIsDisplayedProperlyAtSendEmailModal(fieldName, condition));
    }

    /**
     * return true if asterisk mark at required field is displayed at Send Email Modal
     */
    public void assertAsteriskMarkAtSendEmailModal(String usage, String fieldName) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isAsteriskMarkDisplayAtSendEmailModal(fieldName));
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(isAsteriskMarkDisplayAtSendEmailModal(fieldName)).isFalse();
        }
    }

    /**
     * return true if search icon displayed at lookup field
     *
     * @param searchBtnName
     */
    public void assertSearchIconAtLookupField(String searchBtnName) {
        Assert.assertTrue(isSearchIconAtLookupFieldDisplay(searchBtnName));
    }

    /**
     * return true if select files section displayed under send email modal window
     *
     * @author ashwini.mahore
     */
    public void assertSelectFilesSectionIsDisplayedUnderSendEmailModal(String usage) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isSelectFilesSectionDisplayUnderSendEmailModal());
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(isSelectFilesSectionDisplayUnderSendEmailModal()).isFalse();
        }
    }

    /**
     * return true if disabled date field value is not changes after page scroll on page layout edit mode
     *
     * @param fieldValue
     * @param fieldName
     * @author ashwini.mahore
     */
    public void assertDisabledFieldValueAfterPageScroll(String fieldValue, String fieldName) {
        Assert.assertTrue(isDisabledFieldValueChangedAfterPageScroll(fieldValue, fieldName));
    }

    /**
     * return true if current date is displayed on send email modal
     *
     * @param label
     * @author ashwini.mahore
     */
    public void assertDisplayOfCurrentDateOnSendEmailModal(String label) {
        Assert.assertTrue(isCurrentDateDisplayedOnSendEmailModal(label));
    }

    /**
     * return true if hyperlink is displayed at value inside table/modal
     *
     * @param value
     * @param modalId
     * @author ashwini.mahore
     */
    public void assertHyperlinkIsDisplayedAtValueInsideModal(String value, String modalId) {
        Assert.assertTrue(isHyperlinkIsDisplayedAtColumnValueInsideEnhancedGrid(value, modalId));
    }

    /**
     * return true if text alignment displayed properly in my feed section
     *
     * @author ashwini.mahore
     */
    public void assertAlignmentOfTextInsideMyFeedSection() {
        Assert.assertTrue(isAlignmentOfTextInsideMyFeedSectionDisplayedProperly());
    }

    /**
     * assert true if correct page instruction text is displayed
     */
    public void assertPageInstructionText(String usage, String text) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isPageInstructionTextDisplayed(text));
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isPageInstructionTextDisplayed(text)).isTrue();
        }
    }

    /**
     * assert true if bulb icon displayed at page instruction inside page layout
     */
    public void assertBulbIconAtHeaderInstruction(String usage) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isBulbIconDisplayedAtPageInstructionInsidePageLayout());
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isBulbIconDisplayedAtPageInstructionInsidePageLayout()).isTrue();
        }
    }

    /**
     * assert true if collab my feed section refreshed
     *
     * @author ashwini.mahore
     */
    public void assertCollabPageRefreshed() {
        Assert.assertTrue(isCollabMyFeedPageRefreshed());
    }

    /**
     * return true if expected triangle symbol displayed at required for submit field at page layout
     *
     * @param symbol
     * @param fieldName
     * @author ashwini.mahore
     */
    public void assertSymbolAtRequiredForSubmitField(String symbol, String fieldName) {
        Assert.assertTrue(isExpectedSymbolDisplayedAtRequiredForSubmitField(symbol, fieldName));
    }

    /**
     * return true if required field message displayed at page layout top right header
     *
     * @param message1
     * @param message2
     * @author ashwini.mahore
     */
    public void assertRequiredFieldMessageAtHeader(String message1, String message2) {
        Assert.assertTrue(isExpectedRequiredFieldMessageDisplayedAtHeader(message1, message2));
    }


    /**
     * return true if yellow dot badge displayed at tab under page layout if any required field is blank
     *
     * @param tabName
     * @author ashwini.mahore
     */
    public void assertMissingFieldBadgeOnTab(String usage, String tabName) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isRequiredFieldBadgeDisplayedAtExpectedTab(tabName));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isRequiredFieldBadgeDisplayedAtExpectedTab(tabName));
        } else if (usage.equalsIgnoreCase("softly do not see")) {
            I.amPerforming().assertionsTo().assertThat(isRequiredFieldBadgeDisplayedAtExpectedTab(tabName));
        }
    }

    /**
     * return true if yellow dot badge displayed at tab under page layout if any required field is blank
     *
     * @param comment
     * @param post
     * @author ashwini.mahore
     */
    public void assertCommentAtCollabPhase(String usage, String comment, String post) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isCommentRequiredAtCollabPhase(comment, post));
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isCommentRequiredAtCollabPhase(comment, post)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isCommentRequiredAtCollabPhase(comment, post));
        } else if (usage.equalsIgnoreCase("softly do not see")) {
            I.amPerforming().assertionsTo().assertThat(isCommentRequiredAtCollabPhase(comment, post)).isFalse();
        }
    }

    /**
     * return true if expected options displayed under menu at collab
     *
     * @param option
     * @author ashwini.mahore
     */
    public void assertMenuOptionsUnderCollab(String option) {
        Assert.assertTrue(isMenuOptionsUnderCollabDisplayed(option));
    }

    /**
     * return true if expected page displayed
     *
     * @param page
     * @author ashwini.mahore
     */
    public void assertchatterPageDisplayed(String page) {
        Assert.assertTrue(isChatterPageDisplayed(page));
    }

    /**
     * return true if expected text displayed inside upload file modal
     *
     * @param text
     * @author ashwini.mahore
     */
    public void assertTextInsideUploadFileModal(String text) {
        Assert.assertTrue(isTextInsideUploadFileModalDisplayed(text));
    }

    /**
     * return true if @ mention autocomplete list is displayed inside collab - my feed section
     *
     * @author ashwini.mahore
     */
    public void isMentionAutoCompleteListDisplayedAtCollab(String usage, Boolean isPost) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isMentionAutoCompleteListDisplayed(isPost));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isMentionAutoCompleteListDisplayed(isPost));
        }
    }

    /**
     * return true if expected tab displayed inside home phase
     *
     * @param myWorkspaceItem
     * @author ashwini.mahore
     */
    public void isTabDisplayedAtHomePhase(String myWorkspaceItem) {
        Assert.assertTrue(isExpectedTabDisplayedAtHomePhase(myWorkspaceItem));
    }


    /**
     * return true if expected sidebar global search box color displayed
     *
     * @param colorName
     * @author ashwini.mahore
     */
    public void assertSidebarGlobalSearchColor(String colorName) {
        Assert.assertTrue(isExpectedSidebarGlobalSearchColorDisplayed(colorName));
    }

    /**
     * return true if menu bar is not displayed at my feed section
     *
     * @author ashwini.mahore
     */
    public void assertMenuBarAtMyFeedSection() {
        Assert.assertTrue(isMenuBarAtMyFeedSectionDisplayed());
    }

    /**
     * return true if suggestion box displayed at  to/cc email field in send email modal
     *
     * @author ashwini.mahore
     */
    public void assertSuggestionBoxAtSendEmailModal(String usage) {
        if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isSuggestionBoxDisplayedAtSendEmailModal()).isTrue();
        } else if (usage.equalsIgnoreCase("softly do not see")) {
            I.amPerforming().assertionsTo().assertThat(isSuggestionBoxDisplayedAtSendEmailModal()).isFalse();
        }
    }

    /**
     * return true if favIcon displayed at browser tab
     *
     * @param tabName
     * @author ashwini.mahore
     */
    public void assertFavIconAtBrowserTab(String usage, String tabName) {
        if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isFavIconAtBrowserTab(tabName)).isTrue();
        } else if (usage.equalsIgnoreCase("softly do not see")) {
            I.amPerforming().assertionsTo().assertThat(isFavIconAtBrowserTab(tabName)).isFalse();
        }
    }

    /**
     * return true if menu icon is not displayed at collab my feed section - home phase
     *
     * @author ashwini.mahore
     */
    public void assertMenuIconAtMyFeedSectionCollab() {
        Assert.assertTrue(isMenuIconDisplayedAtMyFeedSectionCollab());
    }

    /**
     * return true if field are displayed without whitespace inside modal window
     *
     * @author ashwini.mahore
     */
    public void assertFieldAlignmentInsideModal() throws IOException {
        TestingBlazeGlobal.setVariable("highlightElements", "off");
        WebElement fieldsAligned = I.amPerforming().getElementReference().of(ByUsing.xpath("//div[@id='fieldName__c']//ancestor::div[@class='textFieldWrapFlex']"));
        I.amPerforming().waitFor().makeThreadSleep(1000);
        I.amPerforming().snapShotTo().takeElementScreenShot(fieldsAligned, "captureFields");
        Assert.assertTrue(I.amPerforming().comparisonOf().image().isImagesSame("target/Automation-Report/captureFields.png", "src/main/resources/captureModalFields.png"));
    }

    /**
     * return true if menu icon is not displayed at collab my feed section - home phase
     *
     * @author ashwini.mahore
     */
    public void assertAlignmentOfValidationButtonAtFormTable() throws IOException {
        TestingBlazeGlobal.setVariable("highlightElements", "off");
        WebElement getValidationButton = I.amPerforming().getElementReference().of(ByUsing.xpath("//*[text()='Business Forms']/ancestor::div[@class='panel-heading']"));
        I.amPerforming().waitFor().makeThreadSleep(1000);
        I.amPerforming().snapShotTo().takeElementScreenShot(getValidationButton, "captureValidationButton");
        Assert.assertTrue(I.amPerforming().comparisonOf().image().isImagesSame("target/Automation-Report/captureValidationButton.png", "src/main/resources/captureValidateButtonAtLayout.png"));
    }

    /**
     * return true if mini page layout displayed completely inside modal window
     *
     * @author ashwini.mahore
     */
    public void assertMiniPageLayoutDisplayedAtModalWindow(String imageName) throws IOException {
        TestingBlazeGlobal.setVariable("highlightElements", "off");
        WebElement getValidationButton = I.amPerforming().getElementReference().of(ByUsing.xpath("//div[@class='tooltipster-content']"));
        I.amPerforming().waitFor().makeThreadSleep(1000);
        I.amPerforming().snapShotTo().takeElementScreenShot(getValidationButton, "captureMiniPageLayout");
        Assert.assertTrue(I.amPerforming().comparisonOf().image().isImagesSame("target/Automation-Report/captureMiniPageLayout.png", "src/main/resources/" + imageName + ""));
    }

    /**
     * return true if help text is displayed on hover at visual indicator inside page layout
     *
     * @param helpText
     * @author ashwini.mahore
     */
    public void assertHelpTextAtVisualIndicator(String helpText) {
        Assert.assertTrue(isHelpTextDisplayedAtVisualIndicatorInsidePageBlock(helpText));
    }

    /**
     * return true if loading icon is not displayed at modal window
     *
     * @param modalTitle
     * @author ashwini.mahore
     */
    public void assertLoadingIconAtModalWindow(String usage, String modalTitle) {
        if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(isLoadingIconDisplayedAtModalWindow(modalTitle)).isFalse();
        } else if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(isLoadingIconDisplayedAtModalWindow(modalTitle)).isTrue();
        }
    }

    /**
     * return true if if mini-page layout is displayed with bold label and value
     *
     * @param isTitle
     * @author ashwini.mahore
     */
    public void assertMiniPageLayoutFormating(Boolean isTitle) {
        I.amPerforming().assertionsTo().assertThat(isMiniPageLayoutDisplayedInExpectedFormating(isTitle)).isTrue();
    }

    /**
     * return true if user logo is displayed small in size at collab - my feed section
     *
     * @param comment
     * @author ashwini.mahore
     */
    public void assertCommentSectionLogoSizeAtMyFeed(String comment, Boolean isHome) {
        I.amPerforming().assertionsTo().assertThat(isCommentSectionLogoDisplayedSmallInSizeAtMyFeedSection(comment, isHome)).isTrue();
    }

    /**
     * return true if dropdown window at More Actions is displayed inside collab - my feed section
     *
     * @author ashwini.mahore
     */
    public void assertMoreActionsDropdownAtCollab() {
        I.amPerforming().assertionsTo().assertThat(isMoreActionsDropdownWindowDisplayedAtMyFeedSection()).isTrue();
    }


    /**
     * return true if expand/collapsed icons displayed at sidebar sub-menu/menu
     *
     * @param sidebarMenu
     * @author ashwini.mahore
     */
    public void assertExpandCollapsedIconAtSidebarMenu(boolean isExpanded, String sidebarMenu) {
        I.amPerforming().assertionsTo().assertThat(isExpandCollapsedIconDisplayedAtSidebarMenu(isExpanded, sidebarMenu)).isTrue();
    }

    /**
     * return true if attached file is not displayed at collab - my feed section
     *
     * @param fileName
     * @author ashwini.mahore
     */
    public void assertAttachedFileInsideCollabMyFeedSection(String fileName) {
        I.amPerforming().assertionsTo().assertThat(isAttachedFileDisplayedInsideCollabMyFeedSection(fileName)).isTrue();
    }

    /**
     * return true if value under mini page layout is displayed in normal unbold format
     *
     * @param fontWeight
     * @author ashwini.mahore
     */
    public void assertValueIsDisplayedInNormalTextInsideMiniLayout(String fontWeight) {
        I.amPerforming().assertionsTo().assertThat(isValueAtMiniPageLayoutDisplayedInExpectedFontWeight(fontWeight)).isTrue();
    }

    /**
     * return true if mini page layout is displayed in grey background color
     *
     * @author ashwini.mahore
     */
    public void assertBackgroundColorInsideMiniLayout() {
        I.amPerforming().assertionsTo().assertThat(isMiniPageLayoutDisplayedInGreyBackgroundColor()).isTrue();
    }

    /**
     * return true if expected sub-menu is displayed/not displayed inside collab sidebar
     *
     * @param subMenu
     * @param mainMenu
     * @author ashwini.mahore
     */
    public void assertMenuAtCollabSidebar(String usage, String subMenu, String mainMenu) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isExpectedMenuDisplayedInsideCollabSidebar(subMenu, mainMenu));
        } else {
            Assert.assertFalse(isExpectedMenuDisplayedInsideCollabSidebar(subMenu, mainMenu));
        }
    }


    /**
     * return true if calender displayed in expected format like (month/week/day)
     *
     * @param uiType
     * @author ashwini.mahore
     */
    public void assertFormatOfCalenderDisplayedAtUI(String uiType) {
        Assert.assertTrue(isCalenderDisplayedInExpectedFormat(uiType));

    }

    /**
     * return true  if today's date is displayed by highlighting with light pink color inside calendar
     *
     * @author ashwini.mahore
     */
    public void assertBackgroundColorAtTodaysDate() {
        Assert.assertTrue(isTodaysDateDisplayedWithExpectedBackgroundColorAtCalendar());
    }

    /**
     * return true  if alert message displayed in an expected color
     *
     * @param desiredMessage
     * @param colorName
     * @author ashwini.mahore
     */
    public void assertAlertMessageWithColorAtPageLayout(String colorName, String desiredMessage) {
        Assert.assertTrue(isAlertMessageDisplayedWithExpectedBackgroundColorAtPageLayout(colorName, desiredMessage));
    }

    /**
     * return true if title, label and value is displayed at mini-page layout
     *
     * @param displayType
     * @param value
     * @author ashwini.mahore
     */
    public void assertTypeAndTextInsideMiniPageLayout(String displayType, String value) {
        I.amPerforming().assertionsTo().assertThat(isTypeAndTextDisplayedInsideMiniPageLayout(displayType, value)).isTrue();
    }

    /**
     * return true if rich text area field with ck-editor is displayed at page detail
     *
     * @param fieldName
     * @author ashwini.mahore
     */
    public void assertRichTextAreaFieldInsidePageDetail(String fieldName) {
        I.amPerforming().assertionsTo().assertThat(isRichTextAreaFieldDisplayedInsidePageDetail(fieldName)).isTrue();
    }

    /**
     * It will check color of ck-editor (rich text editor) text box
     *
     * @param colorName
     * @author ashwini.mahore
     */
    public void assertColorOfRichTextEditorBox(String colorName) {
        Assert.assertTrue(isExpectedColorOfRichTextEditorBoxDisplayed(colorName));
    }

    /**
     * @param wordCount
     * @return true if character count is displayed at bottom of CK-Editor (rich text editor) text box
     * @author ashwini.mahore
     */
    public void assertCharacterCountDisplayedInsideCKEditorAtPageLayout(String wordCount) {
        Assert.assertTrue(isCharacterCountDisplayedInsideCKEditor(wordCount));
    }

    /**
     * @param textFormat
     * @return true if text inside ck editor input box is displayed in an expected format  like bold,italic etc
     * @author ashwini.mahore
     */
    public void assertTextFormattingInsideCKEditorInputBox(String value, String textFormat) {
        Assert.assertTrue(isTextInsideCKEditorInputBoxDisplayedInAnExpectedFormat(value, textFormat));
    }

    /**
     * @param record
     * @param colorName
     * @return true if record label displayed in an expected color at calendar
     * @author ashwini.mahore
     */
    public void isRecordDisplayedInExpectedColorAtCalendar(String record, String colorName) {
        Assert.assertTrue(isRecordDisplayedInAnExpectedColorAtCalendar(record, colorName));
    }

    /**
     * @param monthName
     * @return true if is expected month is displayed at calendar by click at prev/next arrow
     * @author ashwini.mahore
     */
    public void isAcceptedMonthIsDisplayed(String monthName) {
        Assert.assertTrue(isAcceptedMonthIsDisplayedAtCalender(monthName));
    }


    /**
     * @return true if is external user registration page displayed
     * @author ashwini.mahore
     */
    public void iSeeExternalUserRegistrationPageDisplayed() {
        Assert.assertTrue(isExternalUserRegistrationPageDisplayed());
    }

    /**
     * return true if help text rendered at bottom of help icon
     *
     * @author ashwini.mahore
     */
    public void assertHelpTextIsRenderedAtBottom() {
        Assert.assertTrue(isHelpTextDisplayedAtBottomOfHelpIcon());
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
     * @param options
     * @return: if options displayed or not displayed inside menu dropdown for page layout
     * @modifier - ashwini.mahore
     */
    private boolean isTopRightParallelLinesBarOptionsAtPageLayoutDisplayed(String options) {
        TestingBlazeGlobal.setVariable("highlightElements", "off");
        boolean flag = true;

        if (getPDFOptionForVerification(options).getAttribute("style").toLowerCase().contains("display: none")) {
            flag = false;

        } else if (getPDFOptionForVerification(options).isDisplayed()) {
            flag = true;
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
     * return true if page block or form section is displayed in expected sort order inside page / dynamic form layout
     *
     * @param pageBlockName
     */
    private Boolean isPageBlockAndFormSectionDisplayedInOrder(String pageBlockName, int number) {
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
                + "')]/ancestor::div[@class='panel-heading']/following-sibling::div[contains(@id,'toggleBlock')]/div[1]/div"));
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
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath(
                    "//div[@id='" + fieldApiName + "']//select[@disabled] | //span[@id='" + fieldApiName + "']//input[@disabled] | //span[@id='" + fieldApiName + "']//select[@disabled]"))) {
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
    private boolean isExpandCollapseWorkingAsExpected(String blockName) {
        boolean flag = false;
        if (I.amPerforming().actionToGet().attribute(By.xpath("//div[@class='panel-heading']//a[@title='" + blockName + "']"), "class").equalsIgnoreCase("collapsed")) {
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
        double yoffSet1 = I.amPerforming().browserOperationsTo().getPageYOffSet();
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
        String ele = I.amPerforming().browserOperationsTo().getPageTitle();
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
            String ele = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String[] d = ele.split("/", 4);
            String d1 = d[0] + "/" + d[1] + "/" + d[2];
            if (d1.equalsIgnoreCase(logoutURL)) {
                flag = true;
            }
        } else {
            String ele = I.amPerforming().browserOperationsTo().getCurrentUrl();
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

        if (I.amPerforming().getElementReference().of(By.xpath("//tbody//tr//td[contains(text(),'" + attachmentName + "')] | //a[text()='" + attachmentName + "']")).isDisplayed()) {
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

    /**
     * @return true if expected arrow is displayed at user drop-down at header
     */
    private boolean isExpectedArrowDisplayedAtUserDropDown() {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//li[contains(@class,'userDropdown')]//i[contains(@class,'fa-chevron-down')]"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * return true if dateTime field value is displayed in an expected format as per selected LOCAL - in History table
     *
     * @param dateTimeFieldValue
     * @param columnName
     * @return
     */
    private boolean isDateTimeDisplayedInExpectedFormatInHistoryTable(String dateTimeFieldValue, String columnName) {
        boolean flag = false;
        By getNewValue = By.xpath("//div[@id='History']//tr[1]//td[3]");
        By getOldValue = By.xpath("//div[@id='History']//tr[1]//td[4]");

        if (columnName.equalsIgnoreCase("New Value")) {
            try {
                if (I.amPerforming().getElementReference().of(getNewValue).getText().contains(dateTimeFieldValue)) {
                    flag = true;
                }
            } catch (Exception e) {
                flag = false;

            }
        } else if (columnName.equalsIgnoreCase("Old Value")) {
            try {
                if (I.amPerforming().getElementReference().of(getOldValue).getText().contains(dateTimeFieldValue)) {
                    flag = true;
                }
            } catch (Exception e) {
                flag = false;
            }
        }
        return flag;
    }

    /**
     * @return true if lookup modal window width is rendered as expected
     */
    private boolean isLookupModalWidthRenderedProperly(String width) {
        boolean flag = false;
        WebElement getModalWidth = I.amPerforming().getElementReference().of(ByUsing.healingXpathName("pageLayout_getLookupModalWidth"));
        try {
            if (getModalWidth.getCssValue("width").equalsIgnoreCase(width)) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }


    /**
     * @param dropdownValue
     * @param fieldLabel
     * @return true if search by field dropdown contains expected values at send email modal
     */
    private boolean isExpectedDropDownValueDisplayedAtSendEmailModal(String fieldLabel, String dropdownValue) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(getSearchByFieldDropDownItems(fieldLabel, dropdownValue))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @param value
     * @param fieldLabel
     * @return true if subject/body displays expected values in it at send email modal
     */
    private boolean isExpectedFieldValueDisplayedAtSendEmailModal(String value, String fieldLabel) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//label[contains(text(),'" + fieldLabel + "')]/..//span[contains(text(),'" + value + "')]"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * return true if boarder is displayed at page block detail section
     *
     * @return
     */
    private boolean isBoarderDisplayedAtPageBlockSection() {
        boolean flag = false;
        WebElement getPageBlockBoarder = I.amPerforming().getElementReference().of(By.xpath("//span[text()='Program Information']/ancestor::div[contains(@class,'panel-default')]"));
        try {
            if (getPageBlockBoarder.getCssValue("border-top-width").equalsIgnoreCase("3px") &&
                    getPageBlockBoarder.getCssValue("border-top-color").contains("rgba(176, 196, 223, 1)")) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * return true if if attached file is deleted successfully at send email modal
     *
     * @return
     */
    private boolean isAttachedFileIsDeletedSuccessfullyAtSendEmail(String attachmentName) {
        boolean flag = true;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//table//td[normalize-space(text())='" + attachmentName + "']"))) {
                flag = false;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * return true if at TO or CC field , a search item display box size is displayed properly at Send Email Modal
     *
     * @return
     */
    private boolean isSearchItemDisplayBoxSizeIsDisplayedProperlyAtSendEmailModal(String fieldName, String condition) {
        boolean flag = true;
        if (condition.equalsIgnoreCase("GREATER THAN 5")) {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//label[normalize-space(text())='" + fieldName + "']/following-sibling::div//*[@class='listDropdownToScroll']"))) {
                return true;
            }
        } else if (condition.equalsIgnoreCase("LESS THAN 5")) {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//label[normalize-space(text())='" + fieldName + "']/following-sibling::div//*[@class='listDropdownTo']"))) {
                return true;
            }
        }
        return flag;
    }

    /**
     * @param fieldName return true if asterisk mark at required field is displayed at Send Email Modal
     * @return
     */
    private boolean isAsteriskMarkDisplayAtSendEmailModal(String fieldName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//label[contains(@class,'control-label') and contains(text(),'" + fieldName + "')]"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * return true if search icon displayed at lookup field
     *
     * @param searchBtnName
     * @return
     */
    private boolean isSearchIconAtLookupFieldDisplay(String searchBtnName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//img[@title='" + searchBtnName + "']"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * return true if select files section displayed under send email modal window
     *
     * @author ashwini.mahore
     */
    private boolean isSelectFilesSectionDisplayUnderSendEmailModal() {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//button[text()='Select Files']/parent::div"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * return true if disabled date field value is not changes after page scroll on page layout edit mode
     *
     * @param fieldValue
     * @param fieldName
     * @author ashwini.mahore
     */
    private boolean isDisabledFieldValueChangedAfterPageScroll(String fieldValue, String fieldName) {
        boolean flag = false;
        By getDisabledFieldValue = By.xpath("//span[text()='" + fieldName + "']/ancestor::dt/following-sibling::dd//input[@value='" + fieldValue + "']");
        I.amPerforming().scroll().toMoveToElement(getDisabledFieldValue);
        try {
            if (I.amPerforming().checkToSee().isDisplayed(getDisabledFieldValue)) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * return true if current date is displayed on send email modal
     *
     * @param label
     * @author ashwini.mahore
     */
    private boolean isCurrentDateDisplayedOnSendEmailModal(String label) {
        boolean flag = false;
        WebElement getCurrentDateOnModal = I.amPerforming().getElementReference().of(By.xpath("//label[text()='Sent Date']/following-sibling::div"));
        try {
            if (getCurrentDateOnModal.getText().contains(I.amPerforming().dateOperationsToGet().currentDateInDesiredFormat(DateTimeFormatter.ofPattern("M/D/YYYY")))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * return true if text alignment displayed properly in my feed section
     *
     * @author ashwini.mahore
     */
    private boolean isAlignmentOfTextInsideMyFeedSectionDisplayedProperly() {
        boolean flag = false;
        WebElement getInputBoxStyle = I.amPerforming().getElementReference().of(By.xpath("//textarea[@class='mention-for-post']"));
        try {
            if (getInputBoxStyle.getCssValue("max-width").equals("100%")) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
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
        if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[contains(@class,'article')]//div[" + I.amPerforming().sanityOfXpathTo().equals(".", text) + "]"))) {
            flag = true;
        }
        return flag;
    }


    /**
     * @return return true if text is displayed
     * @author ashwini.mahore
     */
    private boolean isBulbIconDisplayedAtPageInstructionInsidePageLayout() {
        boolean flag = false;
        TestingBlazeGlobal.setVariable("highlightElements", "off");
        //if (I.amPerforming().checkToSee().isDisplayed(ByUsing.healingXpathName("pageLayout_getBulbIconAtHeaderInstruction"))) {
        if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[contains(@class,'article')]//*[@class='bulbIcon']"))) {
            flag = true;
        }
        return flag;
    }


    /**
     * @return return true if collab my feed section refreshed
     * @author ashwini.mahore
     */
    private boolean isCollabMyFeedPageRefreshed() {
        boolean flag = false;
        if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='collabContainer']//div[@class='loadingCollabFeed active'] | //div[@class='loadingCollabFeed active']"))) {
            flag = true;
        }
        return flag;
    }

    /**
     * return true if expected triangle symbol displayed at required for submit field at page layout
     *
     * @param symbol
     * @param fieldName
     * @author ashwini.mahore
     */
    public Boolean isExpectedSymbolDisplayedAtRequiredForSubmitField(String symbol, String fieldName) {
        boolean flag = false;
        if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + fieldName + "']//span[contains(@class,'" + symbol + "')]"))) {
            flag = true;
        }
        return flag;
    }

    /**
     * return true if expected triangle symbol displayed at required for submit field at page layout
     *
     * @param message1
     * @param message2
     * @author ashwini.mahore
     */
    public Boolean isExpectedRequiredFieldMessageDisplayedAtHeader(String message1, String message2) {
        boolean flag = false;
        WebElement fieldMessage = I.amPerforming().getElementReference().of(ByUsing.xpath("//div[@class='fieldMessage']"));
        if (fieldMessage.getText().contains(message1) && fieldMessage.getText().contains(message2)) {
            flag = true;
        }
        return flag;
    }

    /**
     * return true if yellow dot badge displayed at tab under page layout if any required field is blank
     *
     * @param tabName
     * @author ashwini.mahore
     */
    public Boolean isRequiredFieldBadgeDisplayedAtExpectedTab(String tabName) {
        boolean flag = false;
        TestingBlazeGlobal.setVariable("highlightElements", "off");
        WebElement getBadgesOnTab = I.amPerforming().getElementReference().of(ByUsing.xpath("//span[" + I.amPerforming().sanityOfXpathTo().equals("text()", tabName) + "]//span[contains(@class,'tabYellowDot')]"));
        if (getBadgesOnTab.getAttribute("style").contains("inline-block")) {
            flag = true;
        } else if (getBadgesOnTab.getAttribute("style").contains("display:none")) {
            flag = false;
        }
        return flag;
    }

    /**
     * return true if yellow dot badge displayed at tab under page layout if any required field is blank
     *
     * @param comment
     * @param post
     * @author ashwini.mahore
     */
    public Boolean isCommentRequiredAtCollabPhase(String comment, String post) {
        boolean flag = false;
        WebElement getComment = I.amPerforming().getElementReference().of(ByUsing.xpath("//div[@id='collabContainer']//*[text()='" + post + "']/ancestor::div[contains(@class,'feedItem')]//div[contains(@class,'singleCommentTextWrap')]//div/following-sibling::div"));
        if (getComment.getText().contains(comment)) {
            flag = true;
        }
        return flag;
    }

    /**
     * return true if expected options displayed under menu at collab
     *
     * @param option
     * @author ashwini.mahore
     */
    public Boolean isMenuOptionsUnderCollabDisplayed(String option) {
        boolean flag = false;
        if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//ul[contains(@class,'dropdown-menu')]//*[text()='" + option + "']"))) {
            flag = true;
        }
        return flag;
    }

    /**
     * return true if expected page displayed
     *
     * @param option
     * @author ashwini.mahore
     */
    public Boolean isChatterPageDisplayed(String option) {
        boolean flag = false;
        if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@class='" + option + "']"))) {
            flag = true;
        }
        return flag;
    }

    /**
     * return true if expected text displayed inside upload file modal
     *
     * @param text
     * @author ashwini.mahore
     */
    public Boolean isTextInsideUploadFileModalDisplayed(String text) {
        boolean flag = false;
        if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='WorkspaceFiles']//*[contains(normalize-space(text()),'" + text + "')]"))) {
            flag = true;
        }
        return flag;
    }

    /**
     * return true if @ mention autocomplete list is displayed inside collab - my feed section
     *
     * @author ashwini.mahore
     */
    public Boolean isMentionAutoCompleteListDisplayed(Boolean isPost) {
        boolean flag = true;
        TestingBlazeGlobal.setVariable("highlightElements", "off");
        try {
            if (isPost) {
                WebElement getActivePost = I.amPerforming().getElementReference().of(ByUsing.xpath("//div[contains(@class,'post active')]//div[@class='mentions-autocomplete-list']"));
                if (getActivePost.getAttribute("style").contains("none")) {
                    flag = false;
                } else if (getActivePost.getAttribute("style").contains("block")) {
                    flag = true;
                }
            } else {
                WebElement getActiveComment = I.amPerforming().getElementReference().of(ByUsing.xpath("//div[(contains(@class,'firstColor active'))]//div[@class='mentions-autocomplete-list']"));
                if (getActiveComment.getAttribute("style").contains("none")) {
                    flag = false;
                } else if (getActiveComment.getAttribute("style").contains("block")) {
                    flag = true;
                }
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * return true if expected tab displayed inside home phase
     *
     * @param myWorkspaceItem
     * @author ashwini.mahore
     */
    public Boolean isExpectedTabDisplayedAtHomePhase(String myWorkspaceItem) {
        boolean flag = false;
        if (I.amPerforming().checkToSee().isDisplayed(govgrants.perform().mainPage().getMyWorkSpaceSpecificItem(myWorkspaceItem))) {
            flag = true;
        }
        return flag;
    }

    /**
     * return true if expected sidebar global search box color displayed
     *
     * @param colorName
     * @author ashwini.mahore
     */
    private boolean isExpectedSidebarGlobalSearchColorDisplayed(String colorName) {
        boolean flag = false;
        WebElement getGlobalSearchBoxProperty = I.amPerforming().getElementReference().of(ByUsing.xpath("//a[contains(@class,'sidebarSearchBtn')]"));
        switch (colorName.toUpperCase()) {
            case "BLUE":
                if (getGlobalSearchBoxProperty.getCssValue("background-color").contains("rgba(5, 89, 156, 1)")
                        || getGlobalSearchBoxProperty.getCssValue("background-color").contains("rgb(5, 89, 156)")) {
                    flag = true;
                }
        }
        return flag;
    }

    /**
     * return true if menu bar is not displayed at my feed section
     *
     * @author ashwini.mahore
     */
    public Boolean isMenuBarAtMyFeedSectionDisplayed() {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//a[contains(@class,'menuLinks')]"))) {
                flag = false;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
            flag = true;
        }
        return flag;
    }


    /**
     * return true if suggestion box displayed at  to/cc email field in send email modal
     *
     * @author ashwini.mahore
     */
    public Boolean isSuggestionBoxDisplayedAtSendEmailModal() {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//li[contains(@class,'list-group-item')]/ancestor::div[@class='listDropdownTo']"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
            flag = false;
        }
        return flag;
    }

    /**
     * return true if favIcon displayed at browser tab
     *
     * @param tabName
     * @author ashwini.mahore
     */
    public Boolean isFavIconAtBrowserTab(String tabName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isEnabled(ByUsing.xpath("//title[text()='" + tabName + "']/preceding-sibling::link[contains(@href,'FaviconIcon')]"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
            flag = false;
        }
        return flag;
    }

    /**
     * return true if menu icon is not displayed at collab my feed section - home phase
     *
     * @author ashwini.mahore
     */
    public Boolean isMenuIconDisplayedAtMyFeedSectionCollab() {
        boolean flag = true;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//a[contains(@class,'menuLinks')]"))) {
                flag = false;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * return true if help text is displayed on hover at visual indicator inside page layout
     *
     * @param helpText
     * @author ashwini.mahore
     */
    public Boolean isHelpTextDisplayedAtVisualIndicatorInsidePageBlock(String helpText) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isEnabled(ByUsing.xpath("//span[contains(@class,'tabYellowDot') and contains(@style,'inline-block') and @title='" + helpText + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * return true if loading icon is not displayed at modal window
     *
     * @param modalTitle
     * @author ashwini.mahore
     */
    public Boolean isLoadingIconDisplayedAtModalWindow(String modalTitle) {
        boolean flag = false;
        TestingBlazeGlobal.setVariable("highlightElements", "off");
        try {
            if (I.amPerforming().getElementReference().of(ByUsing.xpath("//p[text()='" + modalTitle + "']/parent::div/following-sibling::div/div[@class='modalLoadIcon']")).getAttribute("style").contains("none")) {
                flag = false;
            } else if (I.amPerforming().getElementReference().of(ByUsing.xpath("//p[text()='" + modalTitle + "']/parent::div/following-sibling::div//img[@id='govGrantsPleaseWaitHolderId']")).isDisplayed()) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * return true if mini-page layout is displayed with bold label and value
     *
     * @param isTitle
     * @author ashwini.mahore
     */
    public Boolean isMiniPageLayoutDisplayedInExpectedFormating(Boolean isTitle) {
        boolean flag = false;
        try {
            if (isTitle) {
                if (I.amPerforming().checkToSee().isEnabled(ByUsing.xpath("//p[@class='tooltipObjname']/..//div[@class='tooltipLabel']"))) {
                    flag = true;
                }
            } else if (I.amPerforming().checkToSee().isEnabled(ByUsing.xpath("//div[@class='tooltipValue']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }


    /**
     * return true if user logo is displayed small in size at collab - my feed section
     *
     * @param comment
     * @author ashwini.mahore
     */
    public Boolean isCommentSectionLogoDisplayedSmallInSizeAtMyFeedSection(String comment, Boolean isHome) {
        boolean flag = false;
        TestingBlazeGlobal.setVariable("highlightElements", "off");
        WebElement getCommentLogoSizeAtCollab = I.amPerforming().getElementReference().of(By.xpath("//div[text()='" + comment + "']/parent::div/preceding-sibling::div[@class='usrImgLeft' or @class='collabCommentUserImage']/img"));
        if (isHome) {
            if (getCommentLogoSizeAtCollab.getCssValue("width").equals("25px")
                    && getCommentLogoSizeAtCollab.getCssValue("height").equals("25px")) {
                flag = true;
            }
        } else {
            if (getCommentLogoSizeAtCollab.getCssValue("width").equals("30px")
                    && getCommentLogoSizeAtCollab.getCssValue("height").equals("30px")) {
                flag = true;
            }
        }
        return flag;
    }

    /**
     * return true if dropdown window at More Actions is displayed inside collab - my feed section
     *
     * @author ashwini.mahore
     */
    public Boolean isMoreActionsDropdownWindowDisplayedAtMyFeedSection() {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath(" //div[@class='moreActions active' or @class='active']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }


    /**
     * return true if expand/collapsed icons displayed at sidebar sub-menu/menu
     *
     * @param sidebarMenu
     * @author ashwini.mahore
     */
    public Boolean isExpandCollapsedIconDisplayedAtSidebarMenu(Boolean isCollapsed, String sidebarMenu) {
        boolean flag = false;
        try {
            if (isCollapsed) {
                if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//span[text()='" + sidebarMenu + "']/ancestor::li[not(contains(@class,'clicked'))]"))) {
                    flag = true;
                }
            } else {
                if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//span[text()='" + sidebarMenu + "']/ancestor::li[contains(@class,'clicked')]"))) {
                    flag = true;
                }
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * return true if attached file is not displayed at collab - my feed section
     *
     * @param fileName
     * @author ashwini.mahore
     */
    public Boolean isAttachedFileDisplayedInsideCollabMyFeedSection(String fileName) {
        boolean flag = true;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@class='existingCommentFileDiv active']//div[text()='" + fileName + "']"))) {
                flag = false;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * return true if value under mini page layout is displayed in normal un-bold format
     *
     * @param fontWeight
     * @author ashwini.mahore
     */
    public Boolean isValueAtMiniPageLayoutDisplayedInExpectedFontWeight(String fontWeight) {
        boolean flag = false;
        WebElement getFontWeightOfValueAtMiniLayout = I.amPerforming().getElementReference().of(ByUsing.xpath("//div[@class='tooltipValue']"));
        try {
            if (getFontWeightOfValueAtMiniLayout.getCssValue("font-weight").equals(fontWeight)) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * return true if mini page layout is displayed in grey background color
     *
     * @author ashwini.mahore
     */
    public Boolean isMiniPageLayoutDisplayedInGreyBackgroundColor() {
        boolean flag = false;
        TestingBlazeGlobal.setVariable("highlightElements", "off");
        WebElement getBackgroundColorAtMiniLayout = I.amPerforming().getElementReference().of(ByUsing.xpath("//div[@class='tooltipster-content']"));
        try {
            if (getBackgroundColorAtMiniLayout.getCssValue("background").contains("rgb(245, 243, 243)")
                    || getBackgroundColorAtMiniLayout.getCssValue("background").contains("rgba(245, 243, 243, 1)")) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * return true if expected sub-menu is displayed/not displayed inside collab sidebar
     *
     * @param subMenu  - displayed inside main menu at collab sidebar
     * @param mainMenu - displayed inside collab sidebar
     * @author ashwini.mahore
     */
    public Boolean isExpectedMenuDisplayedInsideCollabSidebar(String subMenu, String mainMenu) {
        boolean flag = false;
        List<Elements> getSubMenusFromCollabSidebar = I.amPerforming().getElementReference().forListOfElements().of(ByUsing.xpath("//a[text()='" + mainMenu + "']/following-sibling::div[@class='collabSubMenuOptions']//a"));
        int count = getSubMenusFromCollabSidebar.size();
        try {
            for (int i = 0; i < count; i++) {
                if (getSubMenusFromCollabSidebar.get(i).getText().equals(subMenu)) {
                    flag = true;
                }
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
            flag = false;
        }
        return flag;
    }

    /**
     * return true if calender displayed in expected format like (month/week/day)
     *
     * @param uiType
     * @author ashwini.mahore
     */
    public Boolean isCalenderDisplayedInExpectedFormat(String uiType) {
        boolean flag = true;
        try {
            if (uiType.equalsIgnoreCase("Month")) {
                if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[contains(@class,'fc-month-view')]"))) {
                    flag = true;
                }
            } else if (uiType.equalsIgnoreCase("Week")) {
                if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[contains(@class,'fc-agendaWeek-view')]"))) {
                    flag = true;
                }
            } else if (uiType.equalsIgnoreCase("Day")) {
                if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[contains(@class,'fc-agendaDay-view')]"))) {
                    flag = true;
                }
            }
        } catch (
                Exception e) {
        }
        return flag;
    }


    /**
     * return true if today's date is displayed by highlighting with light pink color inside calendar
     *
     * @author ashwini.mahore
     */
    public Boolean isTodaysDateDisplayedWithExpectedBackgroundColorAtCalendar() {
        boolean flag = false;
        WebElement getTodaysDateBackgroundColor = I.amPerforming().getElementReference().of(ByUsing.xpath("//td[not(contains(@class,'number')) and contains(@class,'fc-today')]"));
        try {
            if (getTodaysDateBackgroundColor.getCssValue("background").contains("rgb(252, 248, 227)")
                    || getTodaysDateBackgroundColor.getCssValue("background").contains("rgba(252, 248, 227, 1)")) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * return true  if alert message displayed in an expected color
     *
     * @param desiredMessage
     * @param colorName
     * @author ashwini.mahore
     */
    public Boolean isAlertMessageDisplayedWithExpectedBackgroundColorAtPageLayout(String colorName, String desiredMessage) {
        boolean flag = false;
        TestingBlazeGlobal.setVariable("highlightElements", "off");
        WebElement getAlertMessageBackgroundColor = I.amPerforming().getElementReference().of(ByUsing.xpath("//div[contains(@class,'alert alert-warning')]"));
        System.out.println(getAlertMessageBackgroundColor.getAttribute("style"));
        WebElement getAlertMessageText = I.amPerforming().getElementReference().of(ByUsing.xpath("//div[contains(@class,'alert alert-warning')]//span[text()='" + desiredMessage + "']"));
        switch (colorName.toUpperCase()) {
            case "BLUE":
                if (getAlertMessageBackgroundColor.getAttribute("style").contains("rgb(217, 237, 247)")
                        && getAlertMessageText.isDisplayed()) {
                    flag = true;
                }
                break;
            case "BROWN":
                if (getAlertMessageBackgroundColor.getAttribute("style").contains("rgb(247, 221, 178")
                        && getAlertMessageText.isDisplayed()) {
                    flag = true;
                }
                break;
            case "GREEN":
                if (getAlertMessageBackgroundColor.getAttribute("style").contains("rgb(223, 240, 216)")
                        && getAlertMessageText.isDisplayed()) {
                    flag = true;
                }
                break;
            case "RED":
                if (getAlertMessageBackgroundColor.getAttribute("style").contains("rgb(252, 248, 227)")
                        && getAlertMessageText.isDisplayed()) {
                    flag = true;
                }
                break;
            case "PURPLE":
                if (getAlertMessageBackgroundColor.getAttribute("style").contains("rgb(242, 222, 222)")
                        && getAlertMessageText.isDisplayed()) {
                    flag = true;
                }
                break;
        }
        return flag;
    }


    /**
     * return true if help text rendered at bottom of help icon
     *
     * @author ashwini.mahore
     */
    public Boolean isHelpTextDisplayedAtBottomOfHelpIcon() {
        boolean flag = true;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[contains(@class,'tooltipster-arrow-bottom')]"))
                    || I.amPerforming().checkToSee().isEnabled(ByUsing.xpath("//div[contains(@class,'tooltipster-arrow-bottom')]"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * return true if title, label and value is displayed at mini-page layout
     *
     * @param displayType
     * @param value
     * @author ashwini.mahore
     */
    public Boolean isTypeAndTextDisplayedInsideMiniPageLayout(String displayType, String value) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//*[contains(@class,'" + displayType + "') and text()='" + value + "']"), false)) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * return true if rich text area field with ck-editor is displayed at page detail
     *
     * @param fieldName
     * @author ashwini.mahore
     */
    public Boolean isRichTextAreaFieldDisplayedInsidePageDetail(String fieldName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//span[text()='" + fieldName + "']/ancestor::dt/following-sibling::dd//textarea[contains(@class,'ckeditor')]"))
                    || I.amPerforming().checkToSee().isEnabled(ByUsing.xpath("//span[text()='" + fieldName + "']/ancestor::dt/following-sibling::dd//textarea[contains(@class,'ckeditor')]"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * It will check color of ck-editor (rich text editor) text box
     *
     * @param colorName
     * @author ashwini.mahore
     */
    public Boolean isExpectedColorOfRichTextEditorBoxDisplayed(String colorName) {
        boolean flag = false;
        TestingBlazeGlobal.setVariable("highlightElements", "off");
        WebElement getCKEditorBox = I.amPerforming().getElementReference().of(ByUsing.xpath("//span[@id='cke_1_top']"));
        try {
            if (colorName.equalsIgnoreCase("yellow") && (getCKEditorBox.getCssValue("background-color").equals("rgb(255, 255, 102)"))
                    || getCKEditorBox.getCssValue("background-color").equals("rgba(255, 255, 102, 1)")) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @param wordCount
     * @return true if character count is displayed at bottom of CK-Editor (rich text editor) text box
     * @author ashwini.mahore
     */
    public Boolean isCharacterCountDisplayedInsideCKEditor(String wordCount) {
        boolean flag = false;
        WebElement getCountAtCKEditorBox = I.amPerforming().getElementReference().of(ByUsing.xpath("//span[contains(@class,'cke_path_item')]"));
        try {
            if (getCountAtCKEditorBox.getText().contains(wordCount)) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @param textFormat
     * @return true if text inside ck editor input box is displayed in an expected format like bold,italic etc
     * @author ashwini.mahore
     */
    public Boolean isTextInsideCKEditorInputBoxDisplayedInAnExpectedFormat(String value, String textFormat) {
        boolean flag = false;
        switch (textFormat.toUpperCase()) {
            case "BOLD":
                if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//body[contains(@class,'cke_editable')]//strong[text()='" + value + "']"))) {
                    flag = true;
                }
                break;
            case "ITALIC":
                if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//body[contains(@class,'cke_editable')]//em[text()='" + value + "']"))) {
                    flag = true;
                }
                break;
            case "UNDERLINE":
                if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//body[contains(@class,'cke_editable')]//u[text()='" + value + "']"))) {
                    flag = true;
                }
                break;
            case "PLAIN":
                if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//body[contains(@class,'cke_editable') and text()='" + value + "']"))) {
                    flag = true;
                }
                break;
            case "STRIKE THROUGH":
                if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//body[contains(@class,'cke_editable')]//s[text()='" + value + "']"))) {
                    flag = true;
                }
                break;
            case "ALL":
                if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//body[contains(@class,'cke_editable')]/s/u/em/strong[text()='" + value + "']"))) {
                    flag = true;
                }
                break;
        }
        return flag;
    }

    /**
     * @param record
     * @param colorName
     * @return true if record label displayed in an expected color at calendar
     * @author ashwini.mahore
     */
    public Boolean isRecordDisplayedInAnExpectedColorAtCalendar(String record, String colorName) {
        boolean flag = false;
        TestingBlazeGlobal.setVariable("highlightElements", "off");
        WebElement getRecordAtCalendar = I.amPerforming().getElementReference().of(ByUsing.xpath("//span[text()='" + record + "']/ancestor::td[@class='fc-event-container']//a"));
        System.out.println(getRecordAtCalendar.getAttribute("style"));
        switch (colorName.toUpperCase()) {
            case "AQUA BLUE":
                if (getRecordAtCalendar.getAttribute("style").contains("rgb(176, 206, 225)")) {
                    flag = true;
                }
                break;
            case "TEAL GREEN":
                if (getRecordAtCalendar.getAttribute("style").contains("rgb(158, 234, 182)")) {
                    flag = true;
                }
                break;
            case "TURQUOISE":
                if (getRecordAtCalendar.getAttribute("style").contains("rgb(167, 244, 243)")) {
                    flag = true;
                }
                break;
            case "WHITE":
                if (getRecordAtCalendar.getAttribute("style").contains("rgb(255, 255, 255)")) {
                    flag = true;
                }
                break;
        }
        return flag;
    }


    /**
     * @param monthName
     * @return true if is expected month is displayed at calendar by click at prev/next arrow
     * @author ashwini.mahore
     */
    public Boolean isAcceptedMonthIsDisplayedAtCalender(String monthName) {
        boolean flag = false;
        String getMonthDisplayedAtCalendar = I.amPerforming().getElementReference().of(ByUsing.xpath("//div[contains(@class,'calendarDateAlignCenter')]//h2")).getText();
        YearMonth current = YearMonth.now();
        String previousMonths = current.minusMonths(1).format(DateTimeFormatter.ofPattern("MMMM yyyy"));
        String nextMonths = current.plusMonths(1).format(DateTimeFormatter.ofPattern("MMMM yyyy"));
        try {
            if (monthName.equalsIgnoreCase("Previous") && previousMonths.equalsIgnoreCase(getMonthDisplayedAtCalendar)) {
                flag = true;
            } else if (monthName.equalsIgnoreCase("Next") && nextMonths.equalsIgnoreCase(getMonthDisplayedAtCalendar)) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }


    /**
     * @return true if is external user registration page displayed
     * @author ashwini.mahore
     */
    public Boolean isExternalUserRegistrationPageDisplayed() {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[contains(@class,'bs external-login-page')]"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }
}