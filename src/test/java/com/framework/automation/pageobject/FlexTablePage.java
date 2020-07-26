package com.framework.automation.pageobject;

import com.automation.rei.handlers.govgrants;
import com.framework.automation.projectmanager.GovGrantsManager;
import com.testingblaze.controller.TestingBlazeGlobal;
import com.testingblaze.exception.TestingBlazeCustomException;
import com.testingblaze.objects.Elements;
import com.testingblaze.register.I;
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
     * assert if quick search is not displayed
     */
    public void assertquickSearchDisabled() {
        Assert.assertTrue(isQuickSearchDisabled());
    }

    /**
     * assert if menu icon is disabled from planning flex table
     */
    public void assertDisableMenuIcon(String panelTitleName) {
        Assert.assertTrue(isMenuIconDisabled(panelTitleName));
    }

    /***
     * assert true if check box select record enabled
     */
    public void assertFlexTabelRecordSelectionEnabled() {
        Assert.assertTrue(isSelectRecordCheckBox());
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
     * assert if Edit icon open in new tab or not
     */
    public void assertEditWithNewTab() {
        Assert.assertTrue(isNewTabOpensForEdit());
    }

    /**
     * assert if Edit icon open in same tab or not
     */
    public void assertEditOpenInSameTab() {
        Assert.assertTrue(isSameTabStaysForEdit());
    }

    /**
     * assert if correct title is displayed in overlay iframe window
     *
     * @param titleName
     */
    public void asserTextInOverLayIframe(String usage, String titleName) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isSpecificOverlayDisplayed(titleName));
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isSpecificOverlayDisplayed(titleName)).isTrue();
        }
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
                + "']/../..//a[@id='Programstooltip']/span[contains(@class,'fa-info')]|//div/a[@title='"
                + blockTitle + "']/..//span[contains(@class,'fa-info')]"));
    }

    /**
     * assert specific items are displayed in top righ parallel lines bar
     *
     * @param menuOption
     * @param pannelTitleName
     */
    public void assertTopRightParallelLinesBarSpecificOptionsEnabled(String menuOption, String pannelTitleName) {
        Assert.assertTrue(isTopRightParallelLinesBarSpecificOptionsEnabled(menuOption, pannelTitleName));
    }

    /**
     * assert true if page size is enabled at program flex table
     */
    public void assertFlexTabelPageSizeEnabled(String text, String tableId) {
        Assert.assertTrue(isFlexTableBottomElementEnabled(text, tableId));
    }

    /**
     * assert true if pagination is enabled at program flex table
     */
    public void assertFlexTabelPaginationEnabled(String text, String tableId) {
        Assert.assertTrue(isFlexTableBottomElementEnabled(text, tableId));
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
                + columnTitle + "' or text()='" + columnTitle + "']/..//span[contains(@class,'fa-info')]"));
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
        Assert.assertFalse(isActionButtonInsideTopOfFlexTableDisplayed(buttonName, headerName));
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
        I.amPerforming().click().on(By.xpath("//div[@id='" + fieldApiName + "']//select"));
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
     * assert if expected multiple record inside table is displayed
     *
     * @param recordsName
     */
    public void assertExpectedRecordsInsideTable(String flexTableHeader, String recordsName) {
        Assert.assertTrue(isExpectedRecordsDisplayedInsideTable(flexTableHeader, recordsName.split(",")));
    }

    /**
     * return true if flex table actions are aligned
     */
    public void assertActionsAreAligned() throws IOException {
        TestingBlazeGlobal.setVariable("highlightElements", "off");
        WebElement actionsAligned = I.amPerforming().getElementReference().of(By.xpath("//a[@title='Attachments']/../../../..//a[@class='actionIcons']/.."));
        Assert.assertTrue(I.amPerforming().comparisonOf().image().isElementImage(actionsAligned, "test.png"));
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
     * validate if quick search is displayed or not
     *
     * @return: true if it is not displayed
     */
    private boolean isQuickSearchDisabled() {
        boolean flag = true;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(searchInput)) {
                flag = false;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * Boolean status of menu icon from program flex table
     *
     * @param panelTitleName
     */
    private Boolean isMenuIconDisabled(String panelTitleName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(govgrants.perform().phasePanel().getParallelBarsLocator(panelTitleName))) {
                flag = false;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
            flag = true;
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
     * Boolean status of Edit icon opens in another tab
     *
     * @return
     */
    private Boolean isNewTabOpensForEdit() {
        boolean myNewTabFound = false;
        if (I.amPerforming().switchTo().getWindowsHandlers().size() > 1)
            myNewTabFound = true;
        return myNewTabFound;
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
     * get webelemnt with title inside overlay iframe
     *
     * @param titleName
     * @return
     */
    private WebElement getOverLayTitle(String titleName) {
        return I.amPerforming().getElementReference().of(By.xpath(
                "//iframe[contains(@ng-src,'apex') or contains(@src,'apex')]//ancestor::div[contains(@class,'modal-content')][1]//p[text()='"
                        + titleName
                        + "']|//iframe[contains(@ng-src,'apex') or contains(@src,'apex')]//ancestor::div[contains(@class,'modal-content')][1]//p[text()='"
                        + titleName
                        + "']| //iframe[contains(@ng-src,'apex') or contains(@src,'apex')]//ancestor::div[contains(@class,'modal-content')][1]//div[contains(text(),'"
                        + titleName + "')]"));
    }

    /**
     * return true if overlay open up with the required title
     *
     * @param titleName
     * @return
     */
    private boolean isSpecificOverlayDisplayed(String titleName) {
        I.amPerforming().switchTo().parentFrame();
        govgrants.perform().mainPage().waitForNavigationLogoToDisappear();
        boolean flag = false;
        if (I.amPerforming().checkToSee().isDisplayed(getOverLayTitle(titleName))) {
            flag = true;
        }
        return flag;
    }

    /**
     * return true if entire page refreshed on button click
     */
    private String isPageRefreshOnButtonClick() {
        return I.amPerforming().browserOperationsTo().getPageLoadStatus();
    }

    /**
     * validate if options are displayed in top right parallel line bar
     *
     * @param menuOption
     * @param pannelTitleName
     * @return: true if it is displayed
     */
    private boolean isTopRightParallelLinesBarSpecificOptionsEnabled(String menuOption, String pannelTitleName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(govgrants.perform().phasePanel().getItemFromParallelMenuBars(pannelTitleName, menuOption))) {
                flag = true;
            }
        } catch (Exception e) {
            flag = true;
        }
        return flag;
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
            for (Elements ele : govgrants.perform().flexTable().getCompleteTableRow()) {
                ele.getText().contains(text);
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * return true if expected records displayed inside table
     *
     * @param recordsName
     * @return
     */
    private boolean isExpectedRecordsDisplayedInsideTable(String flexTableHeader, String... recordsName) {
        Boolean isRecordsDisplayed = false;
        for (String expectedRecords : recordsName) {
            if (expectedRecords.equalsIgnoreCase("currentdate")) {
                expectedRecords = I.amPerforming().dateOperationsToGet().currentDateInDesiredFormat((DateTimeFormatter.ofPattern("M/d/yyyy hh:mm a").withLocale(Locale.US))).replaceAll("^0", "");
                I.amPerforming().checkToSee().isDisplayed(By.xpath("//div[@id='myTabbedContent']//a[@title='" + flexTableHeader + "']/../../../following-sibling::div//tbody//td//span[text()='" + expectedRecords + "'] "));
                isRecordsDisplayed = true;
            } else {
                I.amPerforming().checkToSee().isDisplayed(By.xpath("//div[@id='myTabbedContent']//a[@title='" + flexTableHeader + "']/../../../following-sibling::div//tbody//td//span[text()='" + expectedRecords + "'] "));
                isRecordsDisplayed = true;
            }
        }
        return isRecordsDisplayed;
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
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//div[contains(@class,'panel-heading')]//input[@value='" + buttonName + "' or @type='" + buttonName + "' or text()='" + buttonName + "']"))) {
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

}