package com.framework.automation.pageobject;

import com.automation.rei.govgrantsSteps.GovGrantsObjects;
import com.automation.rei.handlers.GovGrantsHandler;
import com.framework.automation.projectmanager.GovGrantsManager;
import eyethink.automation.bots.controller.CoreHandlers;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.junit.Assert;

import java.util.List;

public class PageLayoutPage extends GovGrantsManager {

    /******* "Variables and Locators" *****************/
    private final By overViewHeader, overViewTitle, pageInstructionText, headerInstructionText, headerOverviewTab,
            headerInstructionTextForPageBlock, rolesAndResponsibilitiesFlexTableTitle, monitoringFlexGridTitle,
            addButtonUnderAttachments, selectTypeDropdown, addAttachmentIframe, lookupSearchInputBox,
            lookupSearchButton, ownerOrganizationModalTitle, completeTableRowInsideLookupModal,
            manageAttachmentInsidePageBlockDetail, manageAttachmentIframe, editActionModalIframe, pageLayoutButton,
            editAttachmentDescription, editAttachmentSaveButton;

    /**
     * Constructor to handle dependency injection and framework library
     */
    public PageLayoutPage(CoreHandlers reiDriver, GovGrantsHandler govgrants) {
        super(reiDriver, govgrants);
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
        addButtonUnderAttachments = By.xpath("//button[@title='AddAttachments']");
        selectTypeDropdown = By.xpath("//select[@title='Classification']");
        addAttachmentIframe = By.cssSelector("#addmodaldialog iframe");
        lookupSearchInputBox = By.xpath("//img[@title='Organization Lookup (New Window)']/../../input[@type='text']");
        lookupSearchButton = By.xpath("//img[@title='Organization Lookup (New Window)']");
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
        Assert.assertTrue(reiDriver.WaitFor()
                .WaitForElementToBePresent(By.xpath(
                        "//div[@id='myTabs']/ul/li/a[@name='" + subTabName + "']//i[contains(@class,'fa-pencil')]"))
                .isDisplayed());
    }

    /**
     * assert true if header overview tab inside detail page is displayed
     */
    public void assertHeaderOverviewTabDisplayed() {
        Assert.assertTrue(isHeaderOviewTabDisplayed());
    }

    /**
     * assert if changed page block title is displayed
     *
     * @param titleName
     */
    public void assertChangedPageBlockTitleDisplayed(String titleName) {
        Assert.assertTrue(isPageBlockTitleDisplayed(titleName));
    }

    /**
     * assert if page block is not displayed
     *
     * @param titleName
     */
    public void assertPageBlockIsNotDisplayed(String titleName) {
        Assert.assertFalse(isPageBlockTitleDisplayed(titleName));
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
     * assert if specific value is displayed inside Type dropdown list
     *
     * @param dropDownValue
     */
    public void assertValueInsideDropdown(String dropDownValue) {
        Assert.assertTrue(isValuePresentInsidePickList(dropDownValue));
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
     * assert if program name field rendered in view mode inside page block detail
     */
    public void assertPageBlockDetailElementDisplayedInViewMode() {
        Assert.assertTrue(isElementAtPageBlockDetailInViewMode());
    }

    /**
     * assert if expected text is displayed on owner organization lookup field modal
     * box
     *
     * @param headerText
     */
    public void assertOwnerOrganizationMOdalTitle(String headerText) {
        Assert.assertTrue(reiDriver.findMyElement().getElement(ownerOrganizationModalTitle)
                .getAttribute("innerText").equalsIgnoreCase(headerText));
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
        govgrants.pageDetails().clickAnyTopRightButtonWithoutSwitching(buttonName);
        Assert.assertTrue(getBootBoxConfirmationText().getText().equalsIgnoreCase(message));
    }

    /**
     * assert true if header button inside overlay layout is displayed
     *
     * @param buttonName
     */
    public void assertActionButtonOfPagrLayoutDisplayed(String buttonName) {
        reiDriver.switchTo().switchToFrame(editActionModalIframe);
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
        Assert.assertTrue(govgrants.pageDetails().isHelpTextDisplayed(helptext));
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
     * click on help text inside program information page block
     *
     * @param blockTitle
     */
    public void getHelpTextAtPageBlock(String blockTitle) {
        reiDriver.JavaScript().moveToElement(reiDriver.findMyElement().getElement(
                By.xpath("//h3//a[contains(text(),'" + blockTitle + "')]/..//span[contains(@class,'fa-info')]")));
    }

    /**
     * click on help text inside program name page block details
     *
     * @param pageBlockDetailTitle
     */
    public void getHelpTextAtPageBlockDetail(String pageBlockDetailTitle) {
        reiDriver.JavaScript().moveToElement(reiDriver.findMyElement().getElement(By.xpath(
                "//span[contains(text(),'" + pageBlockDetailTitle + "')]/..//span[contains(@class,'fa-info')]")));
    }

    /**
     * get Edit Button inside menu without waiting for presence.
     *
     * @return
     */
    public WebElement getEditButtonOptionVerification() {
        return reiDriver.findMyElement()
                .getElement(By.cssSelector(".dropdown.open>.dropdown-menu-right>li:nth-child(2)"));
    }

    /**
     * return true if picklist dropDownValue is displayed
     *
     * @param dropDownValue
     * @return
     */
    public boolean isValuePresentInsidePickList(String dropDownValue) {
        String[] exp = dropDownValue.split(" ");
        int count = 0;
        for (WebElement we : reiDriver.findMyElement().getDropDown(selectTypeDropdown).getOptions()) {
            for (int i = 0; i < exp.length; i++) {
                if (we.getText().equals(exp[i])) {
                    count++;
                }
            }
        }
        if (count == exp.length) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * get complete rows of table inside lookup modal
     *
     * @return
     */
    public List<WebElement> getCompleteTableRowOfLookupModal() {
        return reiDriver.findMyElement().getElements(completeTableRowInsideLookupModal);
    }

    /**
     * return locator for status column insise lookup modal
     *
     * @param columnValueName
     * @return
     */
    public By getTableColumnOfLookupModal(String columnValueName) {
        return By.xpath("//td//span[@title='" + columnValueName + "' or text()='" + columnValueName + "']");
    }

    /**
     * click on page block detail element and switching to respective iframe
     */
    public void clickPageBlockDetailParticularElement() {
        reiDriver.JavaScript().scrollElementToPageDetailCenter(manageAttachmentInsidePageBlockDetail);
        reiDriver.findMyElement().getElement(manageAttachmentInsidePageBlockDetail).click();
        reiDriver.switchTo().switchToFrame(manageAttachmentIframe);
    }

    /**
     * get pdf download item from top right bar inside menu without waiting for
     * presence.
     *
     * @return
     */
    public WebElement getPDFOptionForVerification() {
        return reiDriver.findMyElement()
                .getElement(By.cssSelector(".dropdown.open>.dropdown-menu-right>li:nth-child(8)"));
    }

    /**
     * get prompt box details
     *
     * @return
     */
    public WebElement getPromptBoxForVerification() {
        return reiDriver.findMyElement().getElement(By.xpath("//div[@class='modal-dialog modal-sm']/div[@class='modal-content']"));
    }

    /**
     * click search icon of owner organization at page block detail edit page
     */

    public void clickLookupModalQuickSearch() {
        reiDriver.WaitFor().magicWait(lookupSearchButton);
        reiDriver.textInput().clearText(reiDriver.findMyElement().getElement(lookupSearchInputBox));
        reiDriver.JavaScript().clickByJS(lookupSearchButton);
    }

    /**
     * click search icon of owner organization at page block detail edit page
     *
     * @param frameId
     */
    public void handleLookUpSearchWithFrame(String frameId) {
        reiDriver.WaitFor().magicWait(lookupSearchButton);
        reiDriver.textInput().clearText(reiDriver.findMyElement().getElement(lookupSearchInputBox));
        reiDriver.JavaScript().clickByJS(lookupSearchButton);
        reiDriver.switchTo().switchToFrame(By.xpath("//iframe[@id='" + frameId + "']"));
    }

    /**
     * get list of element inside page block detail like program name, program code
     * etc.
     */
    public List<WebElement> getListOfPageBlockDetailElement() {
        return reiDriver.findMyElement().getElements(By
                .xpath("//h3//a[contains(text(),'Program Information')]/ancestor::div[2]/following-sibling::div//dt"));
    }

    /**
     * click on textarea and enter values for description field inside edit attachment modal
     *
     * @param enteredValue
     */
    public void enterValueForTextareaDescriptionFieldUnderEditAttachment(String enteredValue) {
        WebElement saveAndCloseButton = reiDriver.findMyElement().getElement(editAttachmentSaveButton);
        reiDriver.textInput().clearText(By.xpath("//div[@id='modaltemp']//textarea"));
        reiDriver.textInput().enterText(By.xpath("//div[@id='modaltemp']//textarea"), enteredValue);
        saveAndCloseButton.click();
    }

    /**
     * click on close icon to close AlertBox on notes and attachment
     */
    public void closeAlertBoxFromPage() {
        reiDriver.findMyElement().getElement(By.xpath("//button[contains(@class,'bootbox-close-button')]")).click();
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
        String tableId = this.reiDriver.findMyElement().getElement(By.xpath("//*[contains(@class, 'panel-heading')]//button[text()='Add']")).getAttribute("data-target");
        tableId = tableId.substring(tableId.length() - 18);
        govgrants.flexTable().clickTableTopRightButton(tableId, "Add");
        reiDriver.findMyElement().getDropDown(attachmentClassificationPath).selectByValue(fileType);
        reiDriver.textInput().enterText(attachmentDescriptionPath, "Success message on second tab");
        reiDriver.textInput().enterText(attachmentFilePath, defaultFilePath + fileName);
        reiDriver.findMyElement().getElement(By.xpath("//input[@value='Save']")).click();
        reiDriver.findMyElement().getElement(By.xpath("//div[@id='Attachmentadd']//span[text()='Upload file from Workspace']")).click();
    }

    /**
     * assert true/false for success messages on attachment modal
     */
    public void assertMessageOnAttachmentModalDisplayed(String pageblockName, boolean assertcan) {
        By pageMessagesSelector = By.xpath("//div[@id='errorDiv']//li//descendant-or-self::*[text()]| //div[contains(@class, 'alert') and @ng-repeat]| //div[contains(@class,'alertMessages')]//div[contains(@class,'alertMessage')]//span[@class='ng-binding']");
        List<WebElement> elements = reiDriver.findMyElement().getElements(pageMessagesSelector, false);
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
        reiDriver.findMyElement().getElement(By.xpath("//span[contains(@class,'footer-links')]//a[contains(text(),'" + footerLinks + "')]")).click();
    }

    /**
     * return true if specific text is displayed inside Attachment flex table
     *
     * @param text
     * @param flexTableHeader
     */
    public void AssertFieldValueIsPresentInFlexTable(String text, String flexTableHeader) {
        Assert.assertTrue(isTextDisplayedInsideEditAttachmentTable(text, flexTableHeader));
    }

    /**
     * return true if expected field/element id disabled on edit page details
     */
    public void assertExpectedFieldAtEditPageDetails(String fieldAPIName) {
        Assert.assertTrue(isExpectedFieldIsDisplayedOnEditPageDetails(fieldAPIName));
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
        if ((reiDriver.findMyElement().getElement(overViewHeader).getText().contains(overViewHeaderName))
                && (reiDriver.findMyElement().getElement(overViewTitle).getText().contains(overViewTitleName))) {
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
        if (reiDriver.findMyElement().getElement(pageInstructionText).getText().equalsIgnoreCase(text)) {
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
        if ((reiDriver.findMyElement().getElement(overViewHeader).getText().contains(overViewHeaderName))) {
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
            if (reiDriver
                    .findMyElement().getElement(By.xpath("//div[contains(@class,'panel-heading')]//*[@title='"
                            + buttonName + "' or text()='" + buttonName + "' or @value='" + buttonName + "']"))
                    .isDisplayed()) {
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
        return reiDriver.findMyElement()
                .getElement(By.xpath("//div[@id='headerButtonsPanel']//ul/li//a[@title='" + headerItem + "']"));
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
            if (getPromptBoxForVerification().isDisplayed() || getPromptBoxForVerification().isEnabled()) {
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
            if (reiDriver.findMyElement()
                    .getElement(By.xpath("//div[@id='headerButtonsPanel']//*[@title='" + buttonName + "']"))
                    .isDisplayed()) {
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
            if (getSubTabsInsideMainDetailPage(subTabName).isDisplayed()) {
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
        if (reiDriver.findMyElement().getElement(headerInstructionText).getText().equalsIgnoreCase(headerText)) {
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
            if (getSubTabsInsideMainDetailPage(subTabName).isDisplayed()) {
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
            if (reiDriver.findMyElement().getElement(headerOverviewTab).isDisplayed()) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @param titleName
     * @return true if page block title is displayed
     */
    private boolean isPageBlockTitleDisplayed(String titleName) {
        boolean flag = false;
        try {
            reiDriver.JavaScript().scrollElementToPageDetailCenter(
                    By.xpath("//h3//a[contains(text(),'" + titleName + "')] | //a[@title='" + titleName + "']"));
            if (reiDriver.findMyElement()
                    .getElement(
                            By.xpath("//h3//a[contains(text(),'" + titleName + "')] | //a[@title='" + titleName + "']"))
                    .isDisplayed()) {
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
        if (reiDriver.findMyElement().getElement(headerInstructionTextForPageBlock).getText()
                .equalsIgnoreCase(headerText)) {
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
        List<WebElement> firstRowElements = reiDriver.findMyElement().getElements(By.xpath("//h3//a[contains(text(),'" + titleName
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
        reiDriver.JavaScript().scrollElementToPageDetailCenter(rolesAndResponsibilitiesFlexTableTitle);
        try {
            if (reiDriver.findMyElement().getElement(rolesAndResponsibilitiesFlexTableTitle).isDisplayed()) {
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
        reiDriver.JavaScript().scrollElementToPageDetailCenter(monitoringFlexGridTitle);
        try {
            if (reiDriver.findMyElement().getElement(monitoringFlexGridTitle).isDisplayed()) {
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
    private List<WebElement> getListAttachmentTableSpecificColumnActions(String pageBlockName) {
        return reiDriver.findMyElement().getElements(By.xpath("//div[@class='panel-heading']//a[@title='"
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
            if (getPageBlockDetailsElement(changedFieldName).isDisplayed()) {
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
            if (getPageBlockDetailsElement(changedFieldName).isDisplayed()) {
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
        return reiDriver.findMyElement().getElement(By.xpath("//span[contains(text(),'" + changedFieldName + "')]"));
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
     * @return true if program name field rendered in view mode only inside page
     * block detail
     */
    private boolean isElementAtPageBlockDetailInViewMode() {
        boolean flag = false;
        try {
            if (reiDriver.findMyElement()
                    .getElement(By.xpath("//div[@id='fieldProgramName__c']//span[@class='readonlySpan']"))
                    .isDisplayed()) {
                flag = true;
            }
        } catch (Exception e) {

        }
        return flag;
    }

    /**
     * click add button inside attachments page block and switching to repective
     * frame.
     */
    public void clickAddUnderAttachmentsPageBlock() {
        reiDriver.findMyElement().getElement(addButtonUnderAttachments).click();
        reiDriver.switchTo().switchToFrame(addAttachmentIframe);
    }

    /**
     * click on Select dropdown inside add attachment iframe
     */
    public void clickOnTypeDropdown() {
        reiDriver.findMyElement().getElement(selectTypeDropdown).click();
    }

    /**
     * @return false if expected element is not displayed on look modal
     */
    private Boolean isTableColumnHeaderNameOnLookModal(String titleName) {
        boolean flag = false;
        try {
            if (govgrants.flexTable().getSpecificElementFromTableHeader(titleName).isDisplayed()
                    || govgrants.flexTable().getSpecificElementFromTableHeader(titleName).isEnabled()) {
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
        try {
            if (getCompleteTableRowOfLookupModal().stream()
                    .anyMatch(item -> item.findElement(getTableColumnOfLookupModal(statusName)).isDisplayed())) {
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
            if (reiDriver.findMyElement().getElement(By.xpath("//span/a[contains(text(),'" + buttonName + "')]"))
                    .isDisplayed()) {
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
        if (reiDriver.findMyElement().getElements(pageLayoutButton).get(sequenceNumber).getAttribute("title")
                .contains(buttonName)) {
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
        if (reiDriver.findMyElement().getElement(By.xpath(
                "//input[@value='" + buttonName + "' or @type='" + buttonName + "' or text()='" + buttonName + "']"))
                .isDisplayed()) {
            flag = true;
        }
        return flag;
    }

    /**
     * To verify any value is present in specifically in attachment flex table or not
     *
     * @param value
     * @param flexTableHeader
     * @return
     */
    public boolean isTextDisplayedInsideEditAttachmentTable(String value, String flexTableHeader) {
        if (reiDriver.findMyElement().getElement(By.xpath("//div[@id='myTabbedContent']//a[@title='" + flexTableHeader + "']/../../../following-sibling::div//tbody//td/span[text()='" + value + "']")).isDisplayed())
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
            if (reiDriver.findMyElement().getElement(By.xpath(
                    "//div[@id='" + fieldApiName + "']//select[@disabled]")).isDisplayed()) {
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }
}