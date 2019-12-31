package com.framework.automation.pageobject;

import com.framework.automation.projectmanager.GovGrantsManager;
import eyethink.automation.bots.Register.EyeThink;
import eyethink.automation.bots.objects.Elements;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.io.IOException;
import java.util.List;

public class PageLayoutPage extends GovGrantsManager {

    /******* "Variables and Locators" *****************/
    private final By overViewHeader, overViewTitle, pageInstructionText, headerInstructionText, headerOverviewTab,
            headerInstructionTextForPageBlock, rolesAndResponsibilitiesFlexTableTitle, monitoringFlexGridTitle,
            addButtonUnderAttachments, selectTypeDropdown, addAttachmentIframe, lookupSearchInputBox,
            lookupSearchButton, ownerOrganizationModalTitle, completeTableRowInsideLookupModal,
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
        Assert.assertTrue(EyeThink.core().is().isDisplayed(By.xpath(
                "//div[@id='myTabs']/ul/li/a[@name='" + subTabName + "']//i[contains(@class,'fa-pencil')]")));
    }

    /**
     * assert navigation hold on logo disappeared and modal closes properly
     */
    public void assertHoldOnLogoDisappeared() {
        try {
            Assert.assertFalse(EyeThink.core().is().isDisplayed(EyeThink.core().elementReference().of(navigationLogo)));
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
     * assert if expected text is displayed on owner organization lookup field modal
     * box
     *
     * @param headerText
     */
    public void assertOwnerOrganizationMOdalTitle(String headerText) {
        Assert.assertTrue(EyeThink.core().elementReference().of(ownerOrganizationModalTitle)
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
        EyeThink.saas().pageDetails().clickAnyTopRightButtonWithoutSwitching(buttonName);
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
        Assert.assertTrue(EyeThink.saas().pageDetails().isHelpTextDisplayed(helptext));
    }

    /**
     * assert true if mentioned text displayed on mini page layout while hover
     */
    public void assertTextAtMiniPageLayoutAtPageBlockDetail(String text) {
        Assert.assertTrue(isTextDisplayedOnMiniPageLayout(text));
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
        WebElement miniPageLayout = EyeThink.core().elementReference().of(By.xpath("//div[@class='tooltipster-base tooltipster-shadow tooltipster-fade tooltipster-fade-show']//div[@class='tooltipster-content']"));
        Assert.assertTrue(EyeThink.core().compare().image().isElementImage(miniPageLayout, "miniPageLayoutImage.png"));
    }

    /**
     * hover mouse on lookup field inside page block details page
     *
     * @param label
     * @param lookupField
     */
    public void hoverMouseOnExpectedLookupField(String label, String lookupField) {
        EyeThink.core().scroll().moveToElement(By.xpath("//span[@class='customLabelstyle' and contains(text(),'" + label + "')]/ancestor::dl//dd//a[contains(text(),'" + lookupField + "')]"));
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
        EyeThink.core().scroll().moveToElement(By.xpath("//h3//a[contains(text(),'" + blockTitle + "')]/..//span[contains(@class,'fa-info')]"));
    }

    /**
     * hover on help text inside program name page block details
     *
     * @param pageBlockDetailTitle
     */
    public void getHelpTextAtPageBlockDetail(String pageBlockDetailTitle) {
        EyeThink.core().scroll().moveToElement(By.xpath("//span[contains(text(),'" + pageBlockDetailTitle + "')]/..//span[contains(@class,'fa-info')]"));
    }


    /**
     * hover on look up link at page block details
     *
     * @param lookUpLink
     */
    public void getLookUpLinkToHover(String lookUpLink) {
        EyeThink.core().scroll().moveToElement(By.xpath("//dl//dd//a[contains(text(),'" + lookUpLink + "') or @class='tooltipstered']"), false);
    }

    /**
     * get Edit Button inside menu without waiting for presence.
     *
     * @return
     */
    public WebElement getEditButtonOptionVerification() {
        return EyeThink.core().elementReference().of(By.cssSelector(".dropdown.open>.dropdown-menu-right>li:nth-child(2)"));
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
        for (WebElement we : EyeThink.core().select().from(selectTypeDropdown).getOptions()) {
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
    public List<Elements> getCompleteTableRowOfLookupModal() {
        return EyeThink.core().elementReference().listOfElements().of(completeTableRowInsideLookupModal);
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
        EyeThink.core().scroll().toElementCenter(manageAttachmentInsidePageBlockDetail);
        EyeThink.core().click().on(manageAttachmentInsidePageBlockDetail);
    }

    /**
     * click on error message at page details
     */
    public void performClickOnErrorMessageAtPage(String linkName) {
        EyeThink.core().click().on(By.xpath("//a[contains(text(),'" + linkName + "')]"));
    }

    /**
     * get pdf download item from top right bar inside menu without waiting for
     * presence.
     *
     * @return
     */
    public WebElement getPDFOptionForVerification() {
        return EyeThink.core().elementReference().of(By.cssSelector(".dropdown.open>.dropdown-menu-right>li:nth-child(8)"));
    }

    /**
     * get prompt box details
     *
     * @return
     */
    public WebElement getPromptBoxForVerification() {
        return EyeThink.core().elementReference().of(By.xpath("//div[@class='modal-dialog modal-sm']/div[@class='modal-content']"));
    }

    /**
     * click search icon of owner organization at page block detail edit page
     */

    public void clickLookupModalQuickSearch() {
        EyeThink.core().elementReference().of(lookupSearchButton);
        EyeThink.core().enterText().clear(EyeThink.core().elementReference().of(lookupSearchInputBox));
        EyeThink.core().click().withJavaScript(lookupSearchButton);
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
        EyeThink.core().elementReference().of(lookupButton);
        if (lookupText.length > 1) {
            EyeThink.core().enterText().in(lookupInputBox, "Allen");
        } else {
            EyeThink.core().enterText().clear(lookupInputBox);
        }
        EyeThink.core().click().withJavaScript(lookupButton);
        EyeThink.core().switchTo().switchToFrame(lookupFrame);
    }

    /**
     * get list of element inside page block detail like program name, program code
     * etc.
     */
    public List<Elements> getListOfPageBlockDetailElement() {
        return EyeThink.core().elementReference().listOfElements().of(By
                .xpath("//h3//a[contains(text(),'Program Information')]/ancestor::div[2]/following-sibling::div//dt"));
    }

    /**
     * click on textarea and enter values for description field inside edit attachment modal
     *
     * @param enteredValue
     */
    public void enterValueForTextareaDescriptionFieldUnderEditAttachment(String enteredValue) {
        WebElement saveAndCloseButton = EyeThink.core().elementReference().of(editAttachmentSaveButton);
        EyeThink.core().enterText().clear(By.xpath("//div[@id='modaltemp']//textarea"));
        EyeThink.core().enterText().in(By.xpath("//div[@id='modaltemp']//textarea"), enteredValue);
        EyeThink.core().click().on(saveAndCloseButton);
    }

    /**
     * click on close icon to close AlertBox on notes and attachment
     */
    public void closeAlertBoxFromPage() {
        EyeThink.core().click().on(By.xpath("//button[contains(@class,'bootbox-close-button')]"));
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
        String tableId = EyeThink.core().elementReference().of(By.xpath("//*[contains(@class, 'panel-heading')]//button[text()='Add']")).getAttribute("data-target");
        tableId = tableId.substring(tableId.length() - 18);
        EyeThink.saas().flexTable().clickTableTopRightButton(tableId, "Add");
        EyeThink.core().select().from(attachmentClassificationPath).selectByValue(fileType);
        EyeThink.core().enterText().in(attachmentDescriptionPath, "Success message on second tab");
        EyeThink.core().enterText().in(attachmentFilePath, defaultFilePath + fileName);
        EyeThink.core().click().on(By.xpath("//input[@value='Save']"));
        EyeThink.core().click().on(By.xpath("//div[@id='Attachmentadd']//span[text()='Upload file from Workspace']"));
    }

    /**
     * Handles to upload the file from workspace
     *
     * @param fileNameFromWorkSpace - file which is to be upload
     */
    public void uploadAttachmentFromWorkspace(String... fileNameFromWorkSpace) {
        EyeThink.core().WaitFor().makeThreadSleep(3000);
        EyeThink.core().elementReference().of(By.xpath("//div[@id='myTabbedContent']//span[contains(text(),'Attachment')]/..//div[@class='panel-heading']//*[text()='Add']")).click();
        EyeThink.core().switchTo().switchToFrame(By.xpath("//iframe[contains(@ng-src, 'apex') or contains(@src,'apex')]"));
        EyeThink.core().click().on(By.xpath("//div[@id='Attachmentadd']//span[text()='Upload file from Workspace']"));
        for (String uniqueColumn : fileNameFromWorkSpace) {
            EyeThink.core().click().on(By.xpath("//div[@id='Attachmentadd']//td[text()='" + uniqueColumn + "']/..//input"));
        }
        EyeThink.saas().modal().clickModalContentSpecificButton("Attach");
        EyeThink.saas().modal().closeModalByClickingTopRightCloseButton();
    }

    /**
     * click and select package type and package for business form
     */
    public void selectPackageAndPackageType() {
        EyeThink.core().WaitFor().makeThreadSleep(3000);
        EyeThink.core().click().on(By.xpath("//select[@id='selectPackageType']"));
        EyeThink.core().select().from(By.xpath("//select[@id='selectPackageType']")).selectByVisibleText("Application");
        EyeThink.core().click().on(By.xpath("//input[@id='radio1']"));
    }

    /**
     * click on svg arrow on owner orgaisation look up modal at page block detail
     */
    public void clickSVGArrowElementAtOwnerOrganisationLookUpModal(String order) {
        WebElement svgArrowElement = EyeThink.core().elementReference().of(By.xpath("//div[@class='ltngDataTable']//lightning-primitive-icon/*[name()='svg' and @data-key='arrowdown']/ancestor::th[@aria-sort]"));
        if (!svgArrowElement.getAttribute("aria-sort").equalsIgnoreCase(order)) {
            EyeThink.core().click().on(svgArrowElement);
        }
    }

    /**
     * click on expand collapse icon at table header
     */
    public void clickExpandCollapseIconAtTableHeader(String panelHeaderName) {
        WebElement expandCollapseIcon = EyeThink.core().elementReference().of(By.xpath("//div[@class='panel-heading']//a[@title='" + panelHeaderName + "']"));
        EyeThink.core().click().on(expandCollapseIcon);
    }

    /**
     * click on look up link at page
     */
    public void performClickOnLookupLink(String lookupLink) {
        EyeThink.core().click().on(By.xpath("//dl//dd//a[contains(text(),'" + lookupLink + "')]"));
    }

    /**
     * click on svg arrow on owner orgaisation look up modal at page block detail
     */
    public void clickOnSelectLinkForLookupSpecificRecord(String organizationName) {
        WebElement selectLinkWRTToOrganizationName = EyeThink.core().elementReference().of(By.xpath("//lightning-formatted-text[text()='" + organizationName + "']/ancestor::td/preceding-sibling::th//button[contains(@title,'selectTitle')]"));
        EyeThink.core().click().on(selectLinkWRTToOrganizationName);
    }

    /**
     * click on close/search for lightning look up modal at page block detail
     */
    public void clickOnIconsAtOwnerOrganisationLightningLookUpModal(String iconName) {
        try {
            EyeThink.core().elementReference().of(By.xpath("//lightning-primitive-icon/*[name()='svg' and @data-key='" + iconName + "']/../parent::button[not(contains(@class,'hide'))]"));
        } catch (Exception e) {
        }
        WebElement iconAtLightningLookUp1 = EyeThink.core().elementReference().of(By.xpath("//lightning-primitive-icon/*[name()='svg' and @data-key='" + iconName + "']"));
        EyeThink.core().scroll().moveToElement(By.xpath("//div[@id='custom_lookupAccount__c']"));
        EyeThink.core().click().on(iconAtLightningLookUp1);
    }

    /**
     * assert true/false for success messages on attachment modal
     */
    public void assertMessageOnAttachmentModalDisplayed(String pageblockName, boolean assertcan) {
        By pageMessagesSelector = By.xpath("//div[@id='errorDiv']//li//descendant-or-self::*[text()]| //div[contains(@class, 'alert') and @ng-repeat]| //div[contains(@class,'alertMessages')]//div[contains(@class,'alertMessage')]//span[@class='ng-binding']");
        List<Elements> elements = EyeThink.core().elementReference().listOfElements().of(pageMessagesSelector, false);
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
        EyeThink.core().click().on(By.xpath("//span[contains(@class,'footer-links')]//a[contains(text(),'" + footerLinks + "')]"));
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
     * get owner organisation lookup modal complete content
     *
     * @return
     */
    public List<Elements> getCompleteContentForLookupModal() {
        return EyeThink.core().elementReference().listOfElements().of(By.xpath("//lightning-formatted-text[text()]"));
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
        if ((EyeThink.core().get().text(overViewHeader).contains(overViewHeaderName))
                && (EyeThink.core().get().text(overViewTitle).contains(overViewTitleName))) {
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
        if (EyeThink.core().get().text(pageInstructionText).equalsIgnoreCase(text)) {
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
        if ((EyeThink.core().get().text(overViewHeader).contains(overViewHeaderName))) {
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
            if (EyeThink.core().is().isDisplayed(By.xpath("//div[contains(@class,'panel-heading')]//*[@title='"
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
        return EyeThink.core().elementReference().of(By.xpath("//div[@id='headerButtonsPanel']//ul/li//a[@title='" + headerItem + "']"));
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
            if (EyeThink.core().is().isDisplayed(getPromptBoxForVerification()) || EyeThink.core().is().isEnabled(getPromptBoxForVerification())) {
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
            if (EyeThink.core().is().isDisplayed(By.xpath("//div[@id='headerButtonsPanel']//*[@title='" + buttonName + "']"))) {
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
            if (EyeThink.core().is().isDisplayed(getSubTabsInsideMainDetailPage(subTabName))) {
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
        if (EyeThink.core().get().text(headerInstructionText).equalsIgnoreCase(headerText)) {
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
            if (EyeThink.core().is().isDisplayed(getSubTabsInsideMainDetailPage(subTabName))) {
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
            if (EyeThink.core().is().isDisplayed(headerOverviewTab)) {
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
            EyeThink.core().scroll().toElementCenter(By.xpath("//h3//a[contains(text(),'" + titleName + "')] | //a[@title='" + titleName + "']"));
            if (EyeThink.core().is().isDisplayed(By.xpath("//h3//a[contains(text(),'" + titleName + "')] | //a[@title='" + titleName + "']"))) {
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
        if (EyeThink.core().get().text(headerInstructionTextForPageBlock).equalsIgnoreCase(headerText)) {
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
        List<Elements> firstRowElements = EyeThink.core().elementReference().listOfElements().of(By.xpath("//h3//a[contains(text(),'" + titleName
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
        EyeThink.core().scroll().toElementCenter(rolesAndResponsibilitiesFlexTableTitle);
        try {
            if (EyeThink.core().is().isDisplayed(rolesAndResponsibilitiesFlexTableTitle)) {
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
        EyeThink.core().scroll().toElementCenter(monitoringFlexGridTitle);
        try {
            if (EyeThink.core().is().isDisplayed(monitoringFlexGridTitle)) {
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
        return EyeThink.core().elementReference().listOfElements().of(By.xpath("//div[@class='panel-heading']//a[@title='"
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
            if (EyeThink.core().is().isDisplayed(getPageBlockDetailsElement(changedFieldName))) {
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
            if (EyeThink.core().is().isDisplayed(getPageBlockDetailsElement(changedFieldName))) {
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
        return EyeThink.core().elementReference().of(By.xpath("//span[contains(text(),'" + changedFieldName + "')]"));
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
     * click add button inside attachments page block and switching to repective
     * frame.
     */
    public void clickAddUnderAttachmentsPageBlock() {
        EyeThink.core().click().on(addButtonUnderAttachments);
    }

    /**
     * click on Select dropdown inside add attachment iframe
     */
    public void clickOnTypeDropdown() {
        EyeThink.core().click().on(selectTypeDropdown);
    }

    /**
     * @return false if expected element is not displayed on look modal
     */
    private Boolean isTableColumnHeaderNameOnLookModal(String titleName) {
        boolean flag = false;
        try {
            if (EyeThink.core().is().isDisplayed(EyeThink.saas().flexTable().getSpecificElementFromTableHeader(titleName))
                    || EyeThink.core().is().isEnabled(EyeThink.saas().flexTable().getSpecificElementFromTableHeader(titleName))) {
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
        EyeThink.core().WaitFor().makeThreadSleep(5000);
        try {
            if (EyeThink.core().is().isDisplayed(getTableColumnOfLookupModal(statusName))) {
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
            if (EyeThink.core().is().isDisplayed(By.xpath("//span/a[contains(text(),'" + buttonName + "')]"))) {
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
        if (EyeThink.core().elementReference().listOfElements().of(pageLayoutButton).get(sequenceNumber).getAttributes("title").contains(buttonName)) {
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
        if (EyeThink.core().is().isDisplayed(By.xpath(
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
        if (EyeThink.core().is().isDisplayed(By.xpath("//a[@title='" + flexTableHeader + "']/../../../following-sibling::div//tbody//td/span[text()='" + valueToBeSearch + "']")))
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
            if (EyeThink.core().is().isDisplayed(By.xpath(
                    "//div[@id='" + fieldApiName + "']//select[@disabled]"))) {
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    /**
     * return true if help text is displayed
     *
     * @param text
     * @return
     */
    private boolean isTextDisplayedOnMiniPageLayout(String text) {
        boolean flag = false;
        EyeThink.core().WaitFor().makeThreadSleep(2000);

        if (EyeThink.core().get().text(textInsideMiniPageLayout).contains(text)
                || EyeThink.core().get().text(textInsideMiniPageLayout).equalsIgnoreCase(text)) {
            flag = true;
        }
        return flag;
    }

    /**
     * return true if content appears in Ascending/Descending order for look up modal
     *
     * @return
     */
    private boolean isContentOfLookupModalInExepctedOrder(String order) {
        return EyeThink.core().compare().sortAndCompareOneTableColumn(getCompleteContentForLookupModal(), order);
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
        if (EyeThink.core().get().attribute(By.xpath("//div[@class='ltngDataTable']//lightning-primitive-icon/*[name()='svg' and @data-key='arrowdown']/ancestor::th[@aria-sort]"), "aria-sort").equalsIgnoreCase(order)) {
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
        if (EyeThink.core().get().attribute(By.xpath("//div[@class='panel-heading']//a[@title='Internal Review Panel Users']"), "class").equalsIgnoreCase("collapsed")) {
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
        if (EyeThink.core().is().isDisplayed(By.xpath("//div[@id='" + fieldApiName + "']//b[contains(text(),'" + inputText + "')]"))) {
            flag = true;
        }
        return flag;
    }

    /**
     * return true if expected element getting focused on click of error message
     */
    private boolean isExpectedFieldGettingFocused() {
        boolean flag = false;
        double yoffSet1 = EyeThink.core().get().getPageOffSetYAxis();
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
}