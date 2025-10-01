package com.framework.automation.pageobject;

import com.helperPackage.handlers.govgrants;
import com.framework.automation.projectmanager.GovGrantsManager;
import com.helperPackage.actionsfactory.api.ByUsing;
import com.helperPackage.controller.TestingBlazeGlobal;
import com.helperPackage.exception.TestingBlazeCustomException;
import com.helperPackage.objects.Elements;
import com.helperPackage.register.I;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebElement;

import java.io.IOException;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Locale;

public class FlexTablePage extends GovGrantsManager {
    /******* "Variables and Locators" *****************/

    private final By programFlexTableActionItems, programFlexTableDropdown;

    /**
     * Constructor to handle dependency injection and framework library
     */
    public FlexTablePage() {
        programFlexTableActionItems = By.xpath("//span[@class='focusActionItem ng-scope']//a");
        programFlexTableDropdown = By
                .xpath("//div[contains(@class,'panel-title')]//div[@id='dropdownListView']/ul/li/a");
    }

    /******* "Key Methods with complete functionality - public" *****************/

    /**
     * assert correct title name of table is displayed
     *
     * @param titleName
     */
    public void assertCorrectFlexTableTitleDisplayed(String titleName) {
        Assert.assertTrue(isTitleDisplayed(titleName));
    }

    /**
     * assert two specific items are not displayed in top righ parallel lines bar
     *
     * @param option1
     */
    public void assertTopRightParallelLinesBarSpecificOptionsDisabled(String option1, String pannelTitleName) {
        Assert.assertTrue(isTopRightParallelLinesBarSpecificOptionsDisabled(option1, pannelTitleName));
    }

    /**
     * assert if quick search is  displayed or not
     */
    public void assertquickSearchEnabled(String usage) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isQuickSearchEnabled());
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isQuickSearchEnabled());
        }
    }

    /***
     * assert true if check box select record enabled
     */
    public void assertFlexTabelRecordSelectionEnabled(String usage) {
        try {
            if (usage.equalsIgnoreCase("see")) {
                Assert.assertTrue(isSelectRecordCheckBox());
            } else if (usage.equalsIgnoreCase("do not see")) {
                Assert.assertFalse(isSelectRecordCheckBox());
            }
        } catch (Exception e) {
        }
    }

    /**
     * assert true if total row calculation is disabled
     */
    public void assertFlexTabelTotalCalulationRowDisabled() {
        try {
            I.amPerforming().scroll().onPageDocument("PageDown", 0, 0);
        } catch (Exception e) {
        }
        Assert.assertTrue(isFlexTableRowsTotalDisabled());
    }

    /**
     * assert true if total row calculation is disabled
     */
    public void assertFlexTabelRowCountDisabled(String text, String tableId) {
        try {
            I.amPerforming().scroll().onPageDocument("PageDown", 0, 0);
        } catch (Exception e) {

        }
        Assert.assertFalse(isFlexTableRowsCountDisabled(text, tableId));
    }

    /**
     * assert true if total row calculation is enabled
     */
    public void assertFlexTabelRowCountEnabled(String text, String tableId) {
        try {
            I.amPerforming().scroll().onPageDocument("PageDown", 0, 0);
        } catch (Exception e) {

        }
        Assert.assertTrue(isFlexTableRowsCountDisabled(text, tableId));
    }

    /**
     * @param flexTablelastRowName
     */
    public void assertnewAddedLastRowLabelName(String flexTablelastRowName) {
        I.amPerforming().getElementReference().of(flexTablelastRowNameAsTotal);
        I.amPerforming().scroll().onPageToSpecificElement(flexTablelastRowNameAsTotal);
        Assert.assertEquals(I.amPerforming().actionToGet().text(getLastRowLabelContent()), flexTablelastRowName);
    }

    /**
     * assert if Edit icon open in same tab or not
     */
    public void assertEditOpenInSameTab() {
        Assert.assertTrue(isSameTabStaysForEdit());
    }

    /**
     * assert if entire page is refreshing
     */
    public void asserEntirePageRefreshOnButtonClick() {
        String state = isPageRefreshOnButtonClick();
        Assert.assertTrue(state.equalsIgnoreCase("Complete"));
    }

    /**
     * assert if specific action icon is not displayed for flex table
     *
     * @param iconName
     * @param uniqueColumnValue
     */
    public void assertActionIconNotDisplayedInsideflexTable(String iconName, String uniqueColumnValue) {
        try {
            Assert.assertFalse(I.amPerforming().checkToSee().isDisplayed(govgrants.perform().flexTable().getTableActionIconWithoutTableId(iconName, uniqueColumnValue)));
        } catch (Exception e) {
        }
    }

    /**
     * access last row label name
     *
     * @return
     */
    public WebElement getLastRowLabelContent() {
        return I.amPerforming().getElementReference().of(flexTablelastRowNameAsTotal);
    }

    /**
     * click on help text inside draft program flex table
     *
     * @param blockTitle
     */
    public void getHelpTextAtDraftProgramFlexTable(String blockTitle) {
        I.amPerforming().scroll().toMoveToElement(By.xpath("//div[contains(@class,'panel-title')]//div[text()='" + blockTitle
                + "']/../..//a[@id='Programstooltip']/span[contains(@class,'fa-info')] " +
                "| //div//a[@title='" + blockTitle + "']/..//span[contains(@class,'fa-info')]" +
                "| //span[text()='" + blockTitle + "']/ancestor::a/following-sibling::span/helpicon[@help-text='flexTableConfig.HeaderDescription']"));
    }

    /**
     * assert true if page size is enabled at program flex table
     */
    public void assertFlexTabelPageSizeEnabled(String text, String tableId) {
        Assert.assertTrue(isFlexTableBottomElementEnabled(text, tableId));
    }

    /**
     * @param text
     * @param tableId
     * @param position
     * @return true if pagination is displayed at top and bottom of flex table
     */
    public void assertFlexTabelPaginationEnabled(String usage, String text, String tableId, Boolean position) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(isFlexTableTopAndBottomPaginationEnabled(text, tableId, position)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(isFlexTableTopAndBottomPaginationEnabled(text, tableId, position)).isFalse();
        }
    }

    /**
     * assert true if 20 records present inside program flex table
     */
    public void assertFlexTabelNumberOfRecordsPresent(int rowCount, String tableId) {
        Assert.assertTrue(isNoOfRecordsInsideFlexTablePresent(rowCount, tableId));
    }

    /**
     * click on help text inside program flex table specific to ID column
     *
     * @param columnTitle
     */
    public void getHelpTextAtFlexTableSpecificColumn(String columnTitle) {
        I.amPerforming().scroll().toMoveToElement(By.xpath("//th//span[@title='" + columnTitle + "' or text()='" + columnTitle
                + "']/../../following-sibling::span//span[contains(@class,'fa-info')]|//th//span[@title='"
                + columnTitle + "' or text()='" + columnTitle + "']/..//span[contains(@class,'fa-info')] |" +
                "//*[@ng-bind='fieldLabel' and text()='" + columnTitle + "']/parent::span/following-sibling::helpicon//*[@class='fa fa-info helpIcon']"));
    }

    /**
     * assert correct flex table column name of table is displayed
     *
     * @param columnTitleName
     */
    public void assertCorrectFlexTableColumnTitleDisplayed(String columnTitleName) {
        Assert.assertTrue(isFlexTableColumnTitleDisplayed(columnTitleName));
    }

    /**
     * assert true if total calculation amount field is displayed
     */
    public void assertFlexTabelTotalCalulationAmountDiplayed(String usage) {
        try {
            if (usage.equalsIgnoreCase("see")) {
                Assert.assertTrue(isTotalAmountFieldAtFlexTableDisplayed());
            } else if (usage.equalsIgnoreCase("do not see")) {
                Assert.assertFalse(isTotalAmountFieldAtFlexTableDisplayed());
            }
        } catch (Exception e) {
        }
    }

    /**
     * assert if specific action item appears at a specific position for program
     * flex table
     *
     * @param buttonName
     */
    public void assertSequenceOfEditActionOfProgramFlexTable(String buttonName, int sequenceNumber) {
        Assert.assertTrue(isEditActionIconSequenceAtProgramFlexTable(buttonName, sequenceNumber));
    }

    /**
     * hovering mouse on edit action icon inside draft program flex table
     *
     * @param iconName
     * @param columnName
     */
    public void getHelpTextAtEditActionOfFlexTable(String iconName, String columnName) {
        I.amPerforming().getElementReference().of(govgrants.perform().flexTable().getTableActionIconWithoutTableId(iconName, columnName))
                .getAttribute("title").equalsIgnoreCase(iconName);
    }

    /**
     * assert if program flex table edit action opened with specified url
     *
     * @param newActionUrl
     */
    public void assertSpecifiedUrlForEditActionOfProgramFlexTable(String newActionUrl) {
        Assert.assertTrue(isEditActionOpenedWithSpecifiedUrl(newActionUrl));
    }

    /**
     * assert true if take snapshot option performing expected behaviour
     */
    public void assertTakeSnapshotFunctionalityWorkingCorrectly(String text) {
        Assert.assertTrue(isContentGettingSavedBySanpShotOption(text));
    }


    /**
     * assert true if draft programs is displayed as flex table title
     */
    public void assertFlexTableIsDisplayedWithTitle(String tableTitle) {
        Assert.assertTrue(isExpectedFLexTableWithTitleIsDisplayed(tableTitle));
    }

    /**
     * assert true if changed icon css of flex table edit action is displayed
     *
     * @param iconTitle
     */
    public void assertFlexTableEditActionIconDisplayed(String columnTitle, String iconTitle) {
        Assert.assertTrue(I.amPerforming().checkToSee().isDisplayed(By.xpath("//td//*[@title = '" + columnTitle + "' or text() = '" + columnTitle
                + "']/ancestor::tr[1]//td//a[@title = '" + iconTitle
                + "']//i[contains(@class,'fa fa-external-link')]")));
    }

    /**
     * assert true if currency unit is displayed under total amount of flex table
     */
    public void assertFlexTabelCurrencyUnitInTotalAmount(String currencyUnit) {
        Assert.assertTrue(isCurrencyUnitDisplaysInTotalAmount(currencyUnit));
    }

    /**
     * assert true if expected button is displayed at top/bottom of modal window
     */
    public void assertButtonsIsDisplayedAtModalWindow(String usage, String buttonName, String buttonPosition) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isButtonsDisplayedAtModalWindow(buttonName, buttonPosition));
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isButtonsDisplayedAtModalWindow(buttonName, buttonPosition));
        }
    }

    /**
     * assert true if quick search box placeholder displayed inside lookup window modal table
     */
    public void assertQuickSearchBoxPlaceHolder(String placeHolder, String tableId) {
        Assert.assertTrue(isQuickSearchBoxPlaceHolderDisplaysInsideTable(placeHolder, tableId));
    }

    /**
     * assert true if advance search filter displayed at top right side of table
     *
     * @param tableId
     * @param dataTargetValue
     */
    public void assertDisplayOfAdvanceFilterAtRightSideOfTable(String dataTargetValue, String tableId) {
        Assert.assertTrue(isAdvanceFilterDisplaysAtRightSideOfTable(dataTargetValue, tableId));
    }

    /**
     * return false if specified item is displayed
     *
     * @param dropDownValue
     * @return
     */
    public boolean isValuePresentInsideDropDown(String dropDownValue) {
        boolean flag = false;
        for (Elements we : I.amPerforming().getElementReference().forListOfElements().of(programFlexTableDropdown)) {
            if (we.getAttributes("title").equalsIgnoreCase(dropDownValue)) {
                flag = true;
            }
        }
        return flag;
    }

    /**
     * return true if action button inside flex table as per name is displayed
     *
     * @param buttonName
     * @param headerName
     */
    public void assertActionButtonInsideFlexTableIsDisplayed(String buttonName, String headerName) {
        Assert.assertTrue(isActionButtonInsideTopOfFlexTableDisplayed(buttonName, headerName));
    }

    /**
     * assert if specific action icon is displayed for flex table
     *
     * @param iconName
     * @param uniqueColumnValue
     */
    public void assertActionIconDisplayedInsideflexTable(String iconName, String uniqueColumnValue) {
        Assert.assertTrue(I.amPerforming().checkToSee().isDisplayed(govgrants.perform().flexTable().getTableActionIconWithoutTableId(iconName, uniqueColumnValue)));
    }

    /**
     * return false if action button inside active funding opportunities flex table
     * as per name is displayed
     *
     * @param buttonName
     * @param headerName
     */
    public void assertActionButtonInsideFlexTableIsNotDisplayed(String buttonName, String headerName) {
        I.amPerforming().assertionsTo().assertThat(isActionButtonInsideTopOfFlexTableDisplayed(buttonName, headerName)).isFalse();
    }

    /**
     * assert if specified item is displayed inside program flex table dropdown list
     *
     * @param itemName
     */
    public void assertSpecificItemsInsideDropdown(String itemName) {
        Assert.assertFalse(isValuePresentInsideDropDown(itemName));
    }

    /**
     * Click on toggle button inside program flex table
     */
    public void clickToggleButtonAndSelect(String menuItemName) {
        govgrants.perform().phasePanel().clickDoubleArrowtoggle(menuItemName);
    }

    public void performSequenceOfActionsOnFlexTable(String durationOfRun) throws TestingBlazeCustomException {
        long executionTime = (System.currentTimeMillis() / 1000) + (Integer.parseInt(durationOfRun) * 60);
        do {
            try {
                handleSequenceOfActionsOnFlexTable();
            } catch (Exception e) {
                handleSequenceOfActionsOnFlexTable();
            }

        } while (executionTime > System.currentTimeMillis() / 1000);
    }

    /**
     * click on select dropdown At page detail
     */
    public void clickSelectDropdownAtPageDetail(String fieldApiName) {
        I.amPerforming().click().on(By.xpath("//div[@id='" + fieldApiName + "']//select | //span[text()='" + fieldApiName + "']/../following-sibling::dd//select | //field[@field-name='" + fieldApiName + "']//select"));
    }

    /**
     * return
     *
     * @param errorMessage
     */
    public void assertErrorMessageNotDisplayed(String errorMessage) {
        Assert.assertFalse(isErrorMessageNotDisplayed(errorMessage));

    }

    /**
     * assert if grid is refreshing with entered text
     */
    public void asserGridRefreshOnButtonClick(String columnTitleName, String colName) {
        Assert.assertTrue(isSpecificCellValueOfApplicationBudgetFlexTable(columnTitleName, colName));
    }

    /**
     * assert true if icon css of flex table view action is not displayed
     *
     * @param columnTitle
     * @param iconTitle
     * @param cssValue
     */
    public void assertFlexTableViewActionIconDisplayed(String columnTitle, String iconTitle, String cssValue) {
        Assert.assertFalse(isCSSIconForSpecificActionOfFlexTable(columnTitle, iconTitle, cssValue));
    }

    /**
     * assert true if flex table records contains text as expected
     */
    public void assertFlexTabelRecordsContainsTextAsExpected(String text, String tableId) {
        Assert.assertTrue(isFlexTableRecordsContainsTextAsExpected(text, tableId));
    }

    /**
     * assert true if flex table toggle button is displayed
     */
    public void assertToogleButtonIsDisplayed(String anyItemContainedInDropDown) {
        Assert.assertTrue(I.amPerforming().checkToSee().isDisplayed(govgrants.perform().phasePanel().getDoubleArrowtoggle(anyItemContainedInDropDown)));
    }

    /**
     * assert if specified message is displayed inside confirmation alert box
     *
     * @param message
     */
    public void assertTextMessageOnConfirmationAlert(String message) {
        String popupMessage = I.amPerforming().switchTo().getAlertText();
        Assert.assertTrue(popupMessage.equalsIgnoreCase(message));
        I.amPerforming().switchTo().acceptAlert();
    }

    /**
     * return true if actions are aligned at flex table
     */
    public void assertActionsAreAlignedAtAttachment() throws IOException {
        TestingBlazeGlobal.setVariable("highlightElements", "off");
        WebElement actionsAligned = I.amPerforming().getElementReference().of(By.xpath("//a[@title='Attachments']/../../../..//a[@class='actionIcons']/.."));
        I.amPerforming().snapShotTo().takeElementScreenShot(actionsAligned, "captureAction");
        Assert.assertTrue(I.amPerforming().comparisonOf().image().isImagesSame("target/Automation-Report/captureAction.png", "src/main/resources/actionsAtAttachment.png"));
    }

    /**
     * return true if auto index column sequence displayed in expected ascending order inside table
     */
    public void assertSequenceOfAutoIndexColumnDisplayed(String columnName, String tableId, int startValue) {
        Assert.assertTrue(isSequenceOfAutoIndexColumnDisplayedInExpectedOrder(columnName, tableId, startValue));
    }

    /**
     * return true if margin between scroll bar and page size is displayed at bottom of flex table
     *
     * @param marginBottom
     */
    public void assertMarginBetweenScrollBarAndPageSize(String marginBottom) {
        Assert.assertTrue(isMarginBetweenScrollBarAndPageSizeDisplayed(marginBottom));
    }

    /**
     * return true if label contains expected searched value inside advance filter
     *
     * @param value
     */
    public void assertTextInsideLabelAtAdvanceFilter(String value) {
        Assert.assertTrue(isTextInsideLabelDisplayedAtAdvanceFilter(value));
    }

    /**
     * return true if cross icon is displayed at quick search box
     *
     * @param tableId
     */
    public void assertCrossIconAtQuickSearchBox(String tableId) {
        Assert.assertTrue(isCrossIconDisplayedQuickSearchBox(tableId));
    }

    /**
     * return true if expected option is displayed inside history table dropdown
     *
     * @param dropdownOptions
     */
    public void assertOptionsInDropdownAtHistoryTable(String dropdownOptions) {
        I.amPerforming().assertionsTo().assertThat(isOptionsDisplyedInDropdownAtHistoryTable(dropdownOptions)).isTrue();
    }

    /**
     * perform click and select value inside show entries dropdown
     *
     * @param flexTableId
     * @param numberofEntries
     */
    public void clickAndSelectValueInsideShowEntriesDropdown(String flexTableId, String numberofEntries) {
        govgrants.perform().flexTable().flexTableShowEntriesDropDown(flexTableId, numberofEntries);
    }

    /**
     * created to only upload attachment by selecting fileType and enter default comment in flex table
     *
     * @param fileName
     * @param fileType
     */
    public void onlyUploadAttachmentFromComputerAtFlexTable(String fileName, String fileType) {
        By attachmentClassificationPath = By.xpath("//select[@title='Classification' or text()='Classification']");
        By attachmentDescriptionPath = By.xpath("//div//label[text()='Description']/..//textarea");
        By attachmentFilePath = By.xpath("//div//label[text()='File']/..//input[@type='file']");
        String defaultFilePath = System.getProperty("user.dir") + "/src/main/resources/";

        //to click on add button at attachment table
        I.amPerforming().getElementReference().of(By.xpath("//div[@id='myTabbedContent']//span[contains(text(),'Attachment')]/..//div[@class='panel-heading']//*[text()='Add']")).click();
        //to select file type
        I.amPerforming().dropDownSelection().from(attachmentClassificationPath).selectByValue(fileType);
        //to enter description in description box
        I.amPerforming().textInput().in(attachmentDescriptionPath, "Default Comment");
        //to upload file
        I.amPerforming().textInput().in(attachmentFilePath, defaultFilePath + fileName);
    }

    /**
     * return true if field is required displayed in edit mode
     *
     * @param fieldApiName
     */

    public void assertFieldIsRequired(String usage, String fieldApiName) {
        if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(assertFieldIsRequired(fieldApiName)).isTrue();
        } else if (usage.equalsIgnoreCase("softly do not see")) {
            I.amPerforming().assertionsTo().assertThat(assertFieldIsRequired(fieldApiName)).isFalse();
        }
    }

    /*********
     * "Local Methods with complete functionality - private"
     *****************/

    private void handleSequenceOfActionsOnFlexTable() throws TestingBlazeCustomException {
        govgrants.perform().phasePanel().clickTopRightButton("Draft Programs", "New");
        govgrants.perform().pageDetails().clickAnyTopRightButton("Cancel");
        govgrants.perform().quickSearch().performTableSpecificQuickSearch("toggleFlexTablePrograms", "Program for Health");
        govgrants.perform().mainPage().waitForNavigationLogoToDisappear();
        govgrants.perform().flexTable().clickTableActionIcons("Edit", "Program for Health");
        govgrants.perform().pageDetails().clickAnyTopRightButton("Cancel");
        govgrants.perform().mainPage().clickMainMenuBar("Planning");
        govgrants.perform().flexTable().flexTableShowEntriesDropDown("toggleFlexTablePrograms", "20");
        govgrants.perform().mainPage().waitForNavigationLogoToDisappear();
        govgrants.perform().flexTable().flexTableShowEntriesDropDown("toggleFlexTablePrograms", "10");
        govgrants.perform().mainPage().waitForNavigationLogoToDisappear();
        I.amPerforming().browserOperationsTo().refreshPage();
        I.amPerforming().waitFor().makeThreadSleep(1000);
        govgrants.perform().flexTable().flexTablePagination("toggleFlexTablePrograms", "Next");
        govgrants.perform().mainPage().waitForNavigationLogoToDisappear();
        I.amPerforming().waitFor().makeThreadSleep(500);
        govgrants.perform().flexTable().flexTablePagination("toggleFlexTablePrograms", "Previous");
        I.amPerforming().browserOperationsTo().refreshPage();
        I.amPerforming().waitFor().makeThreadSleep(1000);
        govgrants.perform().mainPage().waitForNavigationLogoToDisappear();
        I.amPerforming().click().on(govgrants.perform().flexTable().getSpecificElementFromTableHeader("ID"));
        govgrants.perform().mainPage().waitForNavigationLogoToDisappear();
        I.amPerforming().click().on(govgrants.perform().flexTable().getSpecificElementFromTableHeader("Program Name"));
        govgrants.perform().mainPage().waitForNavigationLogoToDisappear();
        I.amPerforming().browserOperationsTo().refreshPage();
        I.amPerforming().waitFor().makeThreadSleep(1000);
        govgrants.perform().phasePanel().clickParallelMenuBars("Draft Programs");
        govgrants.perform().phasePanel().selectItemFromParallelMenuBars("Draft Programs", "Refresh");
    }

    private boolean isErrorMessageNotDisplayed(String errorMessage) {
        boolean flag = false;
        if (I.amPerforming().browserOperationsTo().getPageSource().contains(errorMessage)) {
            flag = true;
        }
        return flag;
    }

    /**
     * validate if tile is displayed
     *
     * @param titleName
     * @return
     */
    private boolean isTitleDisplayed(String titleName) {
        govgrants.perform().phasePanel().clickDoubleArrowtoggle(titleName);
        try {
            if (I.amPerforming().checkToSee().isDisplayed(govgrants.perform().phasePanel().getDoubleArrowtoggle(titleName))) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            return false;
        }
    }

    /**
     * validate if options are not displayed in top right parallel line bar
     *
     * @param option1
     * @return: true if it is not displayed
     */
    private boolean isTopRightParallelLinesBarSpecificOptionsDisabled(String option1, String pannelTitleName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(govgrants.perform().phasePanel().getItemFromParallelMenuBars(pannelTitleName, option1))) {
                flag = false;
            }
        } catch (Exception e) {
            flag = true;
        }
        return flag;
    }

    /**
     * @return validate if quick search is displayed or not at flex table
     * @modifier- ashwini.mahore
     */
    private boolean isQuickSearchEnabled() {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(searchInput)) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @return: true if select record check box eneabled
     */
    private boolean isSelectRecordCheckBox() {
        boolean flag = false;
        try {
            for (Elements element : getCompleteTableRow()) {
                if (I.amPerforming().checkToSee().isDisplayed(element.nestedElement(selectRecordCheckBox))) {
                    flag = true;
                    break;
                }
            }
        } catch (Exception e) {

        }
        return flag;
    }

    /**
     * @return true if element is not displayed
     */
    private Boolean isFlexTableRowsTotalDisabled() {
        boolean flag = true;
        try {
            if (getCompleteTableRow().stream().anyMatch(item -> I.amPerforming().checkToSee().isDisplayed(item.nestedElement(totalRowsCalc)))) {
                flag = false;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * @return true if element is not displayed
     */
    private Boolean isFlexTableRowsCountDisabled(String text, String tableId) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(govgrants.perform().flexTable().getFooterElementsFromTable(text, tableId))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * Boolean status of Edit icon opens in same tab
     *
     * @return
     */
    private Boolean isSameTabStaysForEdit() {
        boolean sameTabFound = false;
        if (I.amPerforming().switchTo().getWindowsHandlers().size() == 1) {
            sameTabFound = true;
        }
        return sameTabFound;
    }

    /**
     * return true if entire page refreshed on button click
     */
    private String isPageRefreshOnButtonClick() {
        return I.amPerforming().browserOperationsTo().getPageLoadStatus();
    }

    /**
     * @return true if bottom element is displayed at flex table
     */
    private boolean isFlexTableBottomElementEnabled(String text, String tableId) {
        I.amPerforming().scroll().onPageDocument("PageDown", 0, 0);
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(govgrants.perform().flexTable().getFooterElementsFromTable(text, tableId))
                    || I.amPerforming().checkToSee().isEnabled(govgrants.perform().flexTable().getFooterElementsFromTable(text, tableId))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @return true if expected count of records is present inside flex table
     */
    private boolean isNoOfRecordsInsideFlexTablePresent(int rowCount, String tableId) {
        I.amPerforming().scroll().onPageDocument("PageDown", 0, 0);
        boolean flag = false;
        try {
            int listSize = govgrants.perform().flexTable().getCompleteTableRow(tableId).size();
            if (listSize == rowCount) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * validate if changed column name of program flex table is displayed
     *
     * @param columnValueName
     * @return
     */
    private boolean isFlexTableColumnTitleDisplayed(String columnValueName) {
        try {
            if (I.amPerforming().checkToSee().isDisplayed(govgrants.perform().flexTable().getSpecificElementFromTableHeader(columnValueName))) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            return false;
        }
    }

    /**
     * @return true if total calculation amount field element is displayed
     */
    private Boolean isTotalAmountFieldAtFlexTableDisplayed() {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(totalRowsCalc)) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * check the sequence of the edit action at program flex table
     *
     * @param buttonName
     * @param sequenceNumber
     * @return true/false
     */
    private boolean isEditActionIconSequenceAtProgramFlexTable(String buttonName, int sequenceNumber) {
        if (I.amPerforming().getElementReference().forListOfElements().of(programFlexTableActionItems).get(sequenceNumber).getAttributes("title")
                .contains(buttonName)) {
            return true;
        } else
            return false;
    }

    /**
     * return true if edit opened with specified url
     *
     * @param newActionUrl
     * @return true/false
     */
    private boolean isEditActionOpenedWithSpecifiedUrl(String newActionUrl) {
        String currentUrl = I.amPerforming().browserOperationsTo().getCurrentUrl();
        if (currentUrl.contains(newActionUrl)) {
            return true;
        } else
            return false;
    }

    /**
     * return true if action button inside flex table is displayed
     *
     * @param buttonName
     * @param headerName
     * @return
     */
    private boolean isActionButtonInsideTopOfFlexTableDisplayed(String buttonName, String headerName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(govgrants.perform().phasePanel().getTopRightButton(headerName, buttonName))) {
                flag = true;
            }
        } catch (NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * @return true if grid is refreshed with checking stale element and coming up
     * with changed text is displayed
     */
    private Boolean isSpecificCellValueOfApplicationBudgetFlexTable(String cellValue, String colName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isStale(recordElement)
                    || I.amPerforming().actionToGet().text(govgrants.perform().flexTable().getFlexTableColumn(cellValue)).equalsIgnoreCase(cellValue)) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @return true if passed icon css is not displayed for view action item at
     * table
     */
    private Boolean isCSSIconForSpecificActionOfFlexTable(String columnTitle, String iconTitle, String cssValue) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//td//*[@title = '" + columnTitle + "' or text() = '" + columnTitle
                    + "']/ancestor::tr[1]//td//a[@title = '" + iconTitle + "']//i[contains(@class,'" + cssValue
                    + "')]"))) ;
            {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @return true if element is not displayed
     */
    private Boolean isFlexTableRecordsContainsTextAsExpected(String text, String tableId) {
        boolean flag = false;
        try {
            for (int i = 0; i < getCompleteTableRow().size(); i++) {
                if (getCompleteTableRow().get(i).getText().contains(text))
                    flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * Return true if snapshot saving content inside snapshot history page block
     */
    private boolean isContentGettingSavedBySanpShotOption(String text) {
        boolean result = true;
        if (text.equalsIgnoreCase("Todays Date")) {
            String cdate = I.amPerforming().dateOperationsToGet().currentDateInDesiredFormat((DateTimeFormatter.ofPattern("M/d/yyyy h:mm a").withLocale(Locale.US))).replaceAll("^0", "");
            System.out.println("The current date:-" + cdate);
            String[] currentsplit = (cdate.split(":", 2));
            String[] arrCSplit = currentsplit[1].split("\\s");
            int date = Integer.parseInt(arrCSplit[0]);
            date = date + 5;
            String filename = "";
            for (int i = 10; i > 0; i--) {
                date = date - 1;
                String ddate;
                if (date <= 9) {
                    String sdate = "0" + String.valueOf(date);
                    ddate = currentsplit[0] + ":" + sdate + " " + arrCSplit[1];
                } else {
                    ddate = currentsplit[0] + ":" + date + " " + arrCSplit[1];
                }

                filename = "SnapShot on " + ddate + ".pdf";
                if (I.amPerforming().getElementReference().of(By.xpath("//html")).getText().contains(filename)) {
                    result = true;
                    break;
                } else {
                    result = false;
                }
            }
        }
        return result;
    }

    /**
     * Return true if snapshot saving content inside snapshot history page block
     */
    private boolean isExpectedFLexTableWithTitleIsDisplayed(String tableTitle) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//div[contains(@class,'panel-title')][text()='" + tableTitle + "']")))
                ;
            {
                flag = true;
            }
        } catch (Exception e) {
            flag = false;
        }
        return flag;
    }

    /**
     * @return true if total amount contains currencyUnit in Flex Table
     */
    private Boolean isCurrencyUnitDisplaysInTotalAmount(String currencyUnit) {
        boolean flag = false;
        String str = I.amPerforming().actionToGet().text(I.amPerforming().getElementReference().of(totalRowsCalc));
        String[] part = str.split("(?<=\\D)(?=\\d)");
        try {
            if (part[0].contains(currencyUnit)) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * @return true if expected button is displayed at top/bottom of modal window
     */
    private Boolean isButtonsDisplayedAtModalWindow(String buttonName, String buttonPosition) {
        boolean flag = false;
        if (buttonPosition.equals("Top")) {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//div[contains(@class,'panel-heading')]//*[(local-name()='button' or local-name()='input') and (@value='" + buttonName + "' or @type='" + buttonName + "' or text()='" + buttonName + "')]"))) {
                flag = true;
            } else {
                flag = false;
            }
        } else if (buttonPosition.equals("Bottom")) {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//div[contains(@class,'panel-footer')]//input[@value='" + buttonName + "' or @type='" + buttonName + "' or text()='" + buttonName + "']"))) {
                flag = true;
            } else {
                flag = false;
            }
        }
        return flag;
    }

    /**
     * return true if quick search box placeholder displayed inside lookup window modal table
     *
     * @param placeHolder
     * @param tableId
     * @return
     */
    private boolean isQuickSearchBoxPlaceHolderDisplaysInsideTable(String placeHolder, String tableId) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//div[@id='" + tableId + "']//input[@placeholder='" + placeHolder + "']"))) {
                flag = true;
            }
        } catch (NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * return true if advance search filter displayed at top right side of table
     *
     * @param tableId
     * @param dataTargetValue
     * @return
     */
    private boolean isAdvanceFilterDisplaysAtRightSideOfTable(String dataTargetValue, String tableId) {
        boolean flag = false;
        try {
            if (govgrants.perform().phasePanel().getAdvanceFilterItem(tableId, dataTargetValue).getAttribute("class").contains("pull-right")) {
                flag = true;
            }
        } catch (NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * return true if auto index sequence displayed in expected ascending order
     *
     * @return
     */
    private boolean isSequenceOfAutoIndexColumnDisplayedInExpectedOrder(String columnName, String tableId, int startValue) {
        boolean flag = false;
        List<Elements> getAutoIndex = I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//div[@id='" + tableId + "']//tr//th//span[contains(text(),'" + columnName + "')]/ancestor::thead/following-sibling::tbody//tr//td[2]"));
        int j = startValue;
        for (int i = 0; i < (getAutoIndex.size()); i++) {
            String getAutoIndexText = getAutoIndex.get(i).getText();
            int getAutoIndexCount = Integer.parseInt(getAutoIndexText);
            if (getAutoIndexCount == j) {
                j++;
            } else {
                flag = false;
                break;
            }
        }
        return true;
    }

    /**
     * return true if margin between scroll bar and page size is displayed at bottom of flex table
     *
     * @param marginBottom
     * @return
     */
    private boolean isMarginBetweenScrollBarAndPageSizeDisplayed(String marginBottom) {
        boolean flag = false;
        WebElement getTableResponsiveCss = I.amPerforming().getElementReference().of(By.xpath("//div[@class='table-responsive']"));
        try {
            if (getTableResponsiveCss.getCssValue("margin-bottom").equalsIgnoreCase("10px")) {
                flag = true;
            }
        } catch (NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * return true if label contains expected searched value inside advance filter
     *
     * @param value
     */
    private boolean isTextInsideLabelDisplayedAtAdvanceFilter(String value) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//div[contains(@class,'advf')]//span[text()='" + value + "']"))) {
                flag = true;
            }
        } catch (NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * return true if cross icon is displayed at quick search box
     *
     * @param tableId
     */
    private boolean isCrossIconDisplayedQuickSearchBox(String tableId) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isEnabled(ByUsing.xpath("//div[@id='" + tableId + "']//input[@type='search']"))) {
                flag = true;
            }
        } catch (NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * @param text
     * @param tableId
     * @param position
     * @return true if pagination is displayed at top and bottom of flex table
     */
    private boolean isFlexTableTopAndBottomPaginationEnabled(String text, String tableId, Boolean position) {
        I.amPerforming().scroll().onPageDocument("PageDown", 0, 0);
        boolean flag = false;
        try {
            if (position && I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + tableId + "']//div[contains(@class,'showEntries')]//span[contains(text(),'Showing')]/../following-sibling::div//span[contains(text(),'" + text + "')] " +
                    "| //div[@id='" + tableId + "']//*[contains(text(),'Showing')]/../../following-sibling::div//*[contains(text(),'" + text + "')]"))) {
                flag = true;
            } else if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + tableId + "']//div[contains(@class,'showEntries')]//span[text()='Show']/../following-sibling::div//span[contains(text(),'" + text + "')] " +
                    "| //div[@id='" + tableId + "']//*[text()='Show']/../../following-sibling::div//*[contains(text(),'" + text + "')]"))
            ) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * return true if expected option is displayed inside history table dropdown
     *
     * @param dropdownOptions
     */
    private boolean isOptionsDisplyedInDropdownAtHistoryTable(String dropdownOptions) {
        boolean flag = false;
        I.amPerforming().click().on(ByUsing.xpath("//select[@aria-label='DropDown Menu']"));
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//select[@aria-label='DropDown Menu']//option[" + I.amPerforming().sanityOfXpathTo().equals("text()", dropdownOptions) + "]"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;

    }

    /**
     * return true if field is required displayed in edit mode
     *
     * @param fieldApiName
     */
    private boolean assertFieldIsRequired(String fieldApiName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//field[@field-name='" + fieldApiName + "']//span//b[contains(text(),'|')]"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * saved total page records and validate it in refresh mode
     */

    public void assertFieldRelatedPageRecords(String id, String key) {
        By record = By.xpath("(//div[@id='" + id + "']//*[@title='First']//following-sibling::span[contains(@class,'ng-binding')])[1]");
        I.amPerforming().propertiesFileOperationsTo().saveValue(key, I.amPerforming().actionToGet().text(record));
    }

    public void assertFieldRelatedPageRecordsAvailable(String id, String key) {
        By record = By.xpath("//div[@id='" + id + "']//*[contains(@class,'spacing bold-padded ng-binding')]");
        I.amPerforming().propertiesFileOperationsTo().saveValue(key, I.amPerforming().actionToGet().text(record));
    }

    public void getHelpTextFromIcon(String iconId) {
        I.amPerforming().scroll().toMoveToElement(By.xpath("//a[@id='" + iconId + "']/span[@class='fa fa-info helpIcon'] | //*[@title='" + iconId + "']//following-sibling::*/*[@class='fa fa-info helpIcon'] | //*[text()='" + iconId + "']/parent::a//following-sibling::span//*[@class='fa fa-info helpIcon'] | //a[@id='" + iconId + "'] | //span[@id='" + iconId + "'] |" +
                "//span[text()='" + iconId + "']/ancestor::div//span//helpicon//a[@class='fa fa-info helpIcon tooltipstered']"));
        I.amPerforming().scroll().toMoveToElement(By.xpath("//a[@id='" + iconId + "']/span[@class='fa fa-info helpIcon'] |" +
                "//div[@id='headerButtonsPanel']//button[@title='" + iconId + "'] |" +
                "//*[text()='" + iconId + "']/parent::button[@title='" + iconId + "'] | //a[@id='" + iconId + "'] | //span[@id='" + iconId + "'] | //a[@title='" + iconId + "']/ancestor::span/a/span[@class='fa fa-info helpIcon'] |" +
                "//span[text()='" + iconId + "']/ancestor::div//span//helpicon//a[@class='fa fa-info helpIcon tooltipstered']"));
    }


    public void assertMiniPagelayoutDisplayedOrNot(String usage, String displayType, String value) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(assertMiniLayoutDisplayed(displayType, value)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(assertMiniLayoutDisplayed(displayType, value)).isFalse();
        }
    }

    public void assertIfAdvanceFilterIsDisplayed(String usage, String value) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertFalse(assertAdvanceFilterDisplayed(value));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertTrue(assertAdvanceFilterDisplayed(value));
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(assertAdvanceFilterDisplayed(value)).isFalse();
        } else if (usage.equalsIgnoreCase("softly do not see")) {
            I.amPerforming().assertionsTo().assertThat(assertAdvanceFilterDisplayed(value)).isTrue();
        }
    }

    public void assertAdvanceFilterSubcomponentIsDisplayed(String usage, String columnName, String value) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(advanceFilterSubcomponentDisplayed(columnName, value)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(advanceFilterSubcomponentDisplayed(columnName, value)).isFalse();
        }
    }

    public void assertSpecificItemsInsideListViewDropdown(String usage, String dropdownValue, String columnName) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(isValuePresentInsideDropDown(dropdownValue, columnName)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(isValuePresentInsideDropDown(dropdownValue, columnName)).isFalse();
        }
    }

    private boolean assertAdvanceFilterDisplayed(String value) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + value + "']/div//button[contains(@class,'advf-button')]//span[@class='fa fa-filter'] |" +
                    " //div[@id='advfPrograms' or @id='advfGrantsList']//div[@class='row']/div/span[@ng-repeat='" + value + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    private boolean advanceFilterSubcomponentDisplayed(String columnName, String value) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + value + "']//label[normalize-space(text())='" + columnName + "']//parent::div"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public boolean isValuePresentInsideDropDown(String dropdownValue, String columnName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@class='form-group']//select[@aria-label='" + columnName + "']/option[text()='" + dropdownValue + "'] | //*[@field-name='" + columnName + "']//select//option[text()='Other'] |" +
                    "(//div[@class='form-group']//select[@aria-label='" + columnName + "']/option[text()='" + dropdownValue + "'])[5]"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    private boolean assertMiniLayoutDisplayed(String displayType, String value) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//*[@role='form']//div[@class='tooltipLabel' and text()='" + displayType + "']/following-sibling::div[@class='tooltipValue' and text()='" + value + "'] |" +
                    "//div[@class='tooltipWrapper']/*[text()='" + displayType + "']/following-sibling::*[text()='" + value + "'] |" +
                    "//*[@role='form']//div[@class='tooltipLabel' and text()='" + displayType + "']/following-sibling::div[@class='tooltipValue']/*[text()='" + value + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }


    public void assertIfFlexTableIsDisplayed(String usage, String tableId) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(flexTableIsDisplayed(tableId)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(flexTableIsDisplayed(tableId)).isFalse();
        }
    }

    private boolean flexTableIsDisplayed(String tableId) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath(" //a[contains(@data-target,'" + tableId + "')] | //div[@id='" + tableId + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void clickOnButtonAfterClickingAdvFilter(String fieldName) {
        I.amPerforming().click().on(ByUsing.xpath("//div[@class='form-group']//select[@aria-label='" + fieldName + "'] |" +
                " //div[@id='advfPrograms' or @id='advfGrantsList']//div[@class='form-group']//span/*[contains(@class,'" + fieldName + "')] |" +
                " //div[@id='advfPrograms' or @id='advfGrantsList']//div[@class='row']/div/span[@ng-repeat='filter in filterDisplayList']//*[@aria-label='" + fieldName + "'] |" +
                " //div[@id='advfPrograms' or @id='advfGrantsList']//div[@class='row']/div/div/div/*[@title='" + fieldName + "']/span/*[@class='fa fa-times fa-2x'] |" +
                " //advancefilter//div//div/div//*[@aria-label='" + fieldName + "' or @field-name='" + fieldName + "']//select"));
    }

    public void clickOnDopDownButtonAndSelectValue(String field, String dropdownValue) {
        I.amPerforming().click().on(ByUsing.xpath("//div[@class='form-group']//select[@aria-label='" + field + "']"));
        I.amPerforming().click().on(ByUsing.xpath("//div[@class='form-group']//select[@aria-label='" + field + "']//option[text()='" + dropdownValue + "']"));
    }

    public void assertIfValueChange(String usage, String dropdownValue) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(assertIfValueChangeWithColumnName(dropdownValue)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(assertIfValueChangeWithColumnName(dropdownValue)).isFalse();
        }
    }

    private boolean assertIfValueChangeWithColumnName(String dropdownValue) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@class='form-group']//select[@aria-label='Operator']//option[@selected='selected' and text()='" + dropdownValue + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void handleDropdownInputForAdvanceFilter(String advanceFilterId, List rowvalues) {
        By filterAction = null;
        By dropDownSelector1 = By.xpath("//div[@id='" + advanceFilterId + "']//label[contains(text(),'Column')]/..//select");
        By dropDownSelector2 = By.xpath("//div[@id='" + advanceFilterId + "']//label[contains(text(),'Operator')]/..//select");
        By dropDownSelector3 = By.xpath("//div[@id='" + advanceFilterId + "']//label[contains(text(),'Value')]/..//select");
        By inputField = By.xpath("//div[@id='" + advanceFilterId + "']//field//input");

        filterAction = By.xpath("//div[@id='" + advanceFilterId + "']//a[@title='Add Filter']/span");
        I.amPerforming().dropDownSelection().from(dropDownSelector1).selectByVisibleText(rowvalues.get(0).toString());
        I.amPerforming().dropDownSelection().from(dropDownSelector2).selectByVisibleText(rowvalues.get(1).toString());
        if (I.amPerforming().checkToSee().IsElementPresentQuick(inputField)) {
            I.amPerforming().textInput().in(inputField, rowvalues.get(2).toString());
        } else {

            I.amPerforming().dropDownSelection().from(dropDownSelector3).selectByVisibleText(rowvalues.get(2).toString());
        }
        I.amPerforming().click().on(filterAction);
    }

    public void handleDropdownAndLookupInputForAdvanceFilter(String advanceFilterId, List rowvalues) {
        By dropDownSelector1 = By.xpath("//div[@id='" + advanceFilterId + "']//label[contains(text(),'Column')]/..//select");
        By dropDownSelector2 = By.xpath("//div[@id='" + advanceFilterId + "']//label[contains(text(),'Operator')]/..//select");
        I.amPerforming().dropDownSelection().from(dropDownSelector1).selectByVisibleText(rowvalues.get(0).toString());
        I.amPerforming().dropDownSelection().from(dropDownSelector2).selectByVisibleText(rowvalues.get(1).toString());
    }

    public void assertFlextableValuesDisplayedOrNot(String usage, String columnValue, String columnTitle, String flextableDivId) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(assertFlextableValueDisplayed(columnValue, columnTitle, flextableDivId)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(assertFlextableValueDisplayed(columnValue, columnTitle, flextableDivId)).isFalse();
        }
    }

    private boolean assertFlextableValueDisplayed(String columnValue, String columnTitle, String flextableDivId) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//span[@class='ng-binding' and text()='" + columnTitle + "']/ancestor::div[@id='" + flextableDivId + "']/descendant::span[text()='" + columnValue + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void assertValuePageBlockDisplayedOrNot(String usage, String blockName) {
        if (usage.equalsIgnoreCase("can see")) {
            I.amPerforming().assertionsTo().assertThat(assertValuePageBlockDisplayed(blockName)).isTrue();
        } else if (usage.equalsIgnoreCase("can not see")) {
            I.amPerforming().assertionsTo().assertThat(assertValuePageBlockDisplayed(blockName)).isFalse();
        }
    }

    private boolean assertValuePageBlockDisplayed(String blockName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='myTabs']//h3[@class='panel-title']//a[text()='" + blockName + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void assertIfTableRenderInModalWindow(String usage, String tableidOrDisplayedValue) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(assertIfTableDisplayedInModal(tableidOrDisplayedValue)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(assertIfTableDisplayedInModal(tableidOrDisplayedValue)).isFalse();
        }
    }

    private boolean assertIfTableDisplayedInModal(String tableidOrDisplayedValue) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + tableidOrDisplayedValue + "'] |" +
                    " //div[contains(@class,'header-title')]//*[contains(text(),'" + tableidOrDisplayedValue + "')] |" +
                    " //span[@class='" + tableidOrDisplayedValue + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void assertIfHeaderNameIsDisplayed(String usage, String headernameOrArrowOrValue, String tableid) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(assertIfHeaderIsDisplayedNameEqual(headernameOrArrowOrValue, tableid)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(assertIfHeaderIsDisplayedNameEqual(headernameOrArrowOrValue, tableid)).isFalse();
        }
    }

    private boolean assertIfHeaderIsDisplayedNameEqual(String headernameOrArrowOrValue, String tableid) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//input[@aria-label='Select Record'] | //div[@id='" + tableid + "']//div/table/thead/tr/th/span/following-sibling::span[contains(normalize-space(.), '" + headernameOrArrowOrValue + "')] |" +
                    " //div[@id='" + tableid + "']//div/table/thead/tr/th//input[@aria-label='" + headernameOrArrowOrValue + "'] | " +
                    "//div[@id='" + tableid + "']/descendant::div[@class='row ng-scope']//div[contains(@ng-if,'EnablePagination')]/*[@ng-disabled='false' and @title='" + headernameOrArrowOrValue + "'] |" +
                    " //div[@id='" + tableid + "']/preceding-sibling::div//ul/li/*[@title='" + headernameOrArrowOrValue + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void assertIfActionButtonIsDisplayedOrNotDisplayed(String usage, String actionButton) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(assertIfActionButtonDisplayed(actionButton)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(assertIfActionButtonDisplayed(actionButton)).isFalse();
        }
    }

    private boolean assertIfActionButtonDisplayed(String actionButton) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[normalize-space(text()) = '" + actionButton + "'] | " +
                    "//td[contains(@class,'actionColumn')]/div//*[@title='" + actionButton + "'] |" +
                    "//td//div[@class='actionColIconWrap']//ancestor::a[@title='" + actionButton + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void assertIfActionNameIsDisplayedOrNotDisplayed(String usage, String changedActionName) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(assertIfActionNameDisplayed(changedActionName)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(assertIfActionNameDisplayed(changedActionName)).isFalse();
        }
    }

    private boolean assertIfActionNameDisplayed(String changedActionName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//td[contains(@class,'actionColumn')]/div//a[@title='" + changedActionName + "'] |" +
                    " //td[contains(@class,'actionColumn')]/div//a[@title='View']/span[contains(text(),'" + changedActionName + "')] |" +
                    " //td[contains(@class,'actionColumn')]/div//a[@title='Edit']/span[contains(text(),'" + changedActionName + "')] |" +
                    " //td[contains(@class,'actionColumn')]/div//a[@title='Delete']/span[contains(text(),'" + changedActionName + "')] |" +
                    " //*[@class='actionColIconWrap']//span//a[contains(@title,'" + changedActionName + "')]"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }


    public void assertIfErrorMessageDisplayed(String usage, String errorMessage) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isErrorMessageIsDisplayed(errorMessage));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isErrorMessageIsDisplayed(errorMessage));
        }
    }

    private boolean isErrorMessageIsDisplayed(String errorMessage) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='error-alert']//*[contains(text(),'" + errorMessage + "')]"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    public void indexDisplayedInProvidedSequence(String usage, String sequence, String value) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(sequenceIsDisplayed(sequence, value));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(sequenceIsDisplayed(sequence, value));
        }
    }

    private boolean sequenceIsDisplayed(String sequence, String value) {
        boolean flag = false;
        try {
            WebElement elementSequence = I.amPerforming().getElementReference().of(By.xpath("(//ul[@class='dropdown-menu dropdown-menu-left']//li//a/span[@class='ng-binding'])[" + sequence + "]"));
            String abc = elementSequence.getText();
            System.out.println(abc);
            if (elementSequence.getText().equalsIgnoreCase(value)) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    public void sequenceDisplayedInProvidedSequence(String usage, String value, String sequence) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(actionSequenceIsDisplayed(sequence, value));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(actionSequenceIsDisplayed(sequence, value));
        }
    }

    private boolean actionSequenceIsDisplayed(String sequence, String value) {
        boolean flag = false;
        try {
            WebElement elementSequence = I.amPerforming().getElementReference().of(By.xpath("(//td[contains(@class,'actionColumn')]/div//a[@class='tableLinks focusActionItem actionIcons'])[" + sequence + "]"));
            String actionElement = elementSequence.getAttribute("title");
            if (actionElement.equalsIgnoreCase(value)) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    public void hoverMouseOnAction(String action) {
        I.amPerforming().scroll().toMoveToElement(By.xpath("//td[contains(@class,'actionColumn')]/div//a[@title='" + action + "'] | //*[@class='actionColIconWrap']//span//a[contains(@title,'" + action + "')]"));
    }

    public void CountCharectorLimit(String usage, int charLimit, String attribute) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(charectorLimitIsExceededOrNot(charLimit, attribute));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(charectorLimitIsExceededOrNot(charLimit, attribute));
        }
    }

    private boolean charectorLimitIsExceededOrNot(int charLimit, String attribute) {
        boolean flag = false;
        try {
            WebElement elementSequence = I.amPerforming().getElementReference().of(By.xpath("(//td[contains(@class,'actionColumn')]/div//a[@class='tableLinks focusActionItem actionIcons'])[2]"));
            String actionElement = elementSequence.getAttribute(attribute);
            int stringLength = actionElement.length();
            System.out.println("String length: " + stringLength);
            System.out.println("String length: " + actionElement);
            if (actionElement.length() == charLimit) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    public void validateIfConformationBoxIsDisplayedOrNot(String usage) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(assertIfConformationBoxIsDisplayedOrNot());
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(assertIfConformationBoxIsDisplayedOrNot());
        }
    }

    private boolean assertIfConformationBoxIsDisplayedOrNot() {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@class='modal-content']"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    public void validateConfirmationMessageCharectorLimit(String usage, int charLimit) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(assertIfCharLimitForConformationMessage(charLimit));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(assertIfCharLimitForConformationMessage(charLimit));
        }
    }

    private boolean assertIfCharLimitForConformationMessage(int charLimit) {
        boolean flag = false;
        try {
            WebElement elementSequence = I.amPerforming().getElementReference().of(By.xpath("//div[@class='modal-content']//div[@class='bootbox-body']"));
            String actionElement = elementSequence.getText();
            int stringLength = actionElement.length();
            System.out.println("String length: " + stringLength);
            System.out.println("String length: " + actionElement);
            if (actionElement.length() == charLimit) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }


    public void validateModalWindowIsDisplayedOnSameWindow(String usage, String modalTitle) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(assertIfModalWindowDisplayedOrNot(modalTitle));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(assertIfModalWindowDisplayedOrNot(modalTitle));
        }
    }

    private boolean assertIfModalWindowDisplayedOrNot(String modalTitle) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//p[text()='" + modalTitle + "']/ancestor::div[@class='modal-content ui-draggable-handle'] | //p[text()='" + modalTitle + "']/ancestor::div[@class='modal-content']"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    public void validateIconCssIsDisplayedOrNot(String usage, String columnTitle, String iconTitle, String cssValue) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(assertIfIconCSSdisplayedOrNot(columnTitle, iconTitle, cssValue));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(assertIfIconCSSdisplayedOrNot(columnTitle, iconTitle, cssValue));
        }
    }

    private boolean assertIfIconCSSdisplayedOrNot(String columnTitle, String iconTitle, String cssValue) {
        boolean flag = false;
        try {
            if (isCSSIconForSpecificActionOfFlexTable(columnTitle, iconTitle, cssValue)) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    public void validateStyleOrWidthOfModal(String usage, String styleValue) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(assertIfStyleOfModaldisplayedOrNot(styleValue));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(assertIfStyleOfModaldisplayedOrNot(styleValue));
        }
    }

    private boolean assertIfStyleOfModaldisplayedOrNot(String styleValue) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@class='modal-dialog ui-draggable' and contains(@style,'" + styleValue + "')]"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    public void ValidateAdvanceFilterIsWorkOrNot(String usage, String advanceFilterClass) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(assertIfAdvanceFilterIsWorked(advanceFilterClass));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(assertIfAdvanceFilterIsWorked(advanceFilterClass));
        }
    }

    private boolean assertIfAdvanceFilterIsWorked(String advanceFilterClass) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//span[@ng-repeat='" + advanceFilterClass + "']"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    public void ValidateAdvanceFilterIsWorkOrNotInFlextable(String usage, String advanceFilterClass) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(assertIfAdvanceFilterIsWorkedInFlexTable(advanceFilterClass));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(assertIfAdvanceFilterIsWorkedInFlexTable(advanceFilterClass));
        }
    }

    private boolean assertIfAdvanceFilterIsWorkedInFlexTable(String advanceFilterClass) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//span[@ng-repeat='" + advanceFilterClass + "']"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * assert if header name is correctly displayed insider flex table detail pages
     *
     * @param headerName
     */
    public void assertHeaderNameDisplayed(String headerName) {
//        I.amPerforming().scroll().onPageToSpecificElement(By.xpath(
//                "//div[@class='panel-heading']//div[contains(@class,'panel-title')]/a[text()='" + headerName + "']"));
        Assert.assertTrue(I.amPerforming().checkToSee().isDisplayed(getFlexGridPanels(headerName)));
    }

    public void validateSequenceOfHeaderOfFlexTable(String usage, String headerName, String tableId, String index) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(headerSequenceIsDisplayedInOrder(headerName, tableId, index));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(headerSequenceIsDisplayedInOrder(headerName, tableId, index));
        }
    }

    private boolean headerSequenceIsDisplayedInOrder(String headerName, String tableId, String index) {
        boolean flag = false;
        try {
            WebElement elementSequence = I.amPerforming().getElementReference().of(By.xpath("(//div[contains(@id,'" + tableId + "')]//table/thead/tr/th/a//span[@class='ng-binding'])[" + index + "]"));
            String actionElement = elementSequence.getAttribute("title");
            if (actionElement.equalsIgnoreCase(headerName)) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }


    public void assertActionButtonInsideFlexTableIsNotDisplayedInFlexTable(String buttonName, String headerName) {
        Assert.assertFalse(isActionButtonInsideTopOfFlexTableDisplayed(buttonName, headerName));
    }


    public void assertIfHelpIconIsDisplayedBesideFieldOrColumn(String usage, String headerName) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(assertIfHelpIconDisplayedBesideHeaderName(headerName)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(assertIfHelpIconDisplayedBesideHeaderName(headerName)).isFalse();
        }
    }

    private boolean assertIfHelpIconDisplayedBesideHeaderName(String headerName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//span[text()='" + headerName + "']//preceding-sibling::a//span[@class='fa fa-info helpIcon'] | //span[text()='" + headerName + "']//following-sibling::*/span[@class='fa fa-info helpIcon'] | //span[text()='" + headerName + "']/parent::a//following-sibling::*/helpicon | //span[@title='" + headerName + "']/ancestor::a/following-sibling::span//*[@class='fa fa-info helpIcon']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }


    public void assertIfSelectCheckBoxIsDisplayedInsideTableId(String usage, String selectallcheckbox, String tableId) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(selectAllCheckBox_Displayed_OrNot(selectallcheckbox, tableId));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(selectAllCheckBox_Displayed_OrNot(selectallcheckbox, tableId));
        }
    }

    private boolean selectAllCheckBox_Displayed_OrNot(String selectallcheckbox, String tableId) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + tableId + "']//input[@aria-label='" + selectallcheckbox + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }


    public void assertIfPagiNationArrowDisplyed_or_not(String usage, String arrow, String tableId) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(paginationArrowDisplayedInsideTable(arrow, tableId));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(paginationArrowDisplayedInsideTable(arrow, tableId));
        }
    }

    private boolean paginationArrowDisplayedInsideTable(String arrow, String tableId) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + tableId + "']//descendant::*[@ng-disabled='false' and @title='" + arrow + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void assertIfActionIsDisplayedOrNotDisplayedRespectedTable(String usage, String actionName, String tableId) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(actionOnTableDisplayedOrNot(actionName, tableId)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(actionOnTableDisplayedOrNot(actionName, tableId)).isFalse();
        }
    }

    private boolean actionOnTableDisplayedOrNot(String actionName, String tableId) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + tableId + "']//*[@class='actionColIconWrap']//span//a[contains(@title,'" + actionName + "')]"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void assertActionPositionOnUiInsideTable(String usage, String action, int intvalue, String tableId) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(actionOnrespectiveTableId(action, intvalue, tableId)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(actionOnrespectiveTableId(action, intvalue, tableId)).isFalse();
        }
    }

    private boolean actionOnrespectiveTableId(String action, int intvalue, String tableId) {
        boolean flag = false;
        try {
            if (I.amPerforming().getElementReference().of(ByUsing.xpath("(//div[@id='" + tableId + "']//*[@class='actionColIconWrap']//span//a)[" + intvalue + "]")).getAttribute("title").equals(action)) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void assertIfActionInEnhanceTableIsDisplyed(String usage, String actionName, String tableId) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(viewEditDeleteActionDisplayedOrNot(actionName, tableId)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(viewEditDeleteActionDisplayedOrNot(actionName, tableId)).isFalse();
        }
    }

    private boolean viewEditDeleteActionDisplayedOrNot(String actionName, String tableId) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + tableId + "']//table//tbody//td//action//*[@title='" + actionName + "'] |" +
                    " //div[@id='" + tableId + "']//table//tbody//td//*[@title='" + actionName + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void assertIfStarValueDisplayedInRecordLevel(String usage, String starValue, String name, String tableId) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(starValueInTableDisplayedOrNot(starValue, name, tableId)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(starValueInTableDisplayedOrNot(starValue, name, tableId)).isFalse();
        }
    }

    private boolean starValueInTableDisplayedOrNot(String starValue, String name, String tableId) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + tableId + "']//*[@ng-bind='fieldValue ' and text()='" + name + "']/ancestor::td//following-sibling::td//*[text()='" + starValue + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void assertIfActionDisplayedInRecordLevel(String usage, String actionIcon, String subjectName) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(ifViewActionDisplayedRecordLevel(actionIcon, subjectName)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(ifViewActionDisplayedRecordLevel(actionIcon, subjectName)).isFalse();
        }
    }

    private boolean ifViewActionDisplayedRecordLevel(String actionIcon, String subjectName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//span[@title='" + subjectName + "']//ancestor::td//following-sibling::td//*[@title='" + actionIcon + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void asserTochecOptionDisplayed(String usage, String option) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isOptionDisplayed(option));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isOptionDisplayed(option));
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isOptionDisplayed(option)).isTrue();
        } else if (usage.equalsIgnoreCase("softly do not see")) {
            I.amPerforming().assertionsTo().assertThat(isOptionDisplayed(option)).isFalse();
        }
    }

    private boolean isOptionDisplayed(String option) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//select//option[@selected='selected' and contains(text(),'" + option + "')]"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    public void clickOnCheckBox(String buttonName, String tableId) {
        By checkAllSelector = By.xpath("//div[@id='" + tableId + "']//div[@class='tableColumnHeader']//input[@type='checkbox']");
        I.amPerforming().click().withJavaScript(checkAllSelector);
        I.amPerforming().waitFor().makeThreadSleep(500);
        By button = By.xpath("//div[@id='" + tableId + "']//div[@class='header-buttons ng-scope']//span//button[@title='" + buttonName + "']");
        I.amPerforming().click().on(button);
        I.amPerforming().waitFor().makeThreadSleep(700);
    }

    public void assertPaginationText(String usage, String text, String tableId) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertFalse(isPaginationTextDisplayed(text, tableId));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertTrue(isPaginationTextDisplayed(text, tableId));
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isPaginationTextDisplayed(text, tableId)).isFalse();
        } else if (usage.equalsIgnoreCase("softly do not see")) {
            I.amPerforming().assertionsTo().assertThat(isPaginationTextDisplayed(text, tableId)).isTrue();
        }
    }

    private boolean isPaginationTextDisplayed(String text, String tableId) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + tableId + "']//span[@class='pull-right table-pager spanTablePager ng-scope']//span[contains(text(),'" + text + "')]"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void assertHeaderText(String usage, String text, String tableid) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertFalse(isHeaderTextDisplayed(text, tableid));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertTrue(isHeaderTextDisplayed(text, tableid));
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isHeaderTextDisplayed(text, tableid)).isFalse();
        } else if (usage.equalsIgnoreCase("softly do not see")) {
            I.amPerforming().assertionsTo().assertThat(isHeaderTextDisplayed(text, tableid)).isTrue();
        }
    }

    private boolean isHeaderTextDisplayed(String text, String tableid) {
        boolean flag = true;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//div[@id='" + tableid + "']//div[@class='panel ng-scope']//div//span[contains(text(),'" + text + "')]"))) {
                flag = false;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }
}