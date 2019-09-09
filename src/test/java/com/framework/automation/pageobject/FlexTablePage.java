package com.framework.automation.pageobject;

import com.framework.automation.projectmanager.GovGrantsManager;
import eyethink.automation.bots.Register.EyeThink;
import eyethink.automation.bots.Report.LogLevel;
import eyethink.automation.bots.exception.EyeThinkBotsCustomException;
import eyethink.automation.bots.objects.Elements;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.io.File;
import java.util.List;

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
     * @param option2
     */
    public void assertTopRightParallelLinesBarSpecificOptionsDisabled(String option1, String option2,
                                                                      String pannelTitleName) {
        Assert.assertTrue(isTopRightParallelLinesBarSpecificOptionsDisabled(option1, option2, pannelTitleName));
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
            EyeThink.core().scroll().onWeb().pageDocument("PageDown", 0, 0);
        } catch (Exception e) {
        }
        Assert.assertTrue(isFlexTableRowsTotalDisabled());
    }

    /**
     * assert true if total row calculation is disabled
     */
    public void assertFlexTabelRowCountDisabled(String text, String tableId) {
        try {
            EyeThink.core().scroll().onWeb().pageDocument("PageDown", 0, 0);
        } catch (Exception e) {

        }
        Assert.assertFalse(isFlexTableRowsCountDisabled(text, tableId));
    }

    /**
     * assert true if total row calculation is enabled
     */
    public void assertFlexTabelRowCountEnabled(String text, String tableId) {
        try {
            EyeThink.core().scroll().onWeb().pageDocument("PageDown", 0, 0);
        } catch (Exception e) {

        }
        Assert.assertTrue(isFlexTableRowsCountDisabled(text, tableId));
    }

    /**
     * @param flexTablelastRowName
     */
    public void assertnewAddedLastRowLabelName(String flexTablelastRowName) {
        EyeThink.core().elementReference().onWeb(flexTablelastRowNameAsTotal);
        EyeThink.core().scroll().onWeb().pageToSpecificElement(flexTablelastRowNameAsTotal);
        Assert.assertEquals(EyeThink.core().get().text(getLastRowLabelContent()), flexTablelastRowName);
    }

    /**
     * assert true if header column name is present
     *
     * @param headerColumnName
     */
    public void assertFlexTableHeaderColumnName(String headerColumnName) {
        Assert.assertTrue(isFlexTableColumnHeaderName(headerColumnName));
    }

    /**
     * return true if specific status category is not displayed
     *
     * @param statusName
     */
    public void assertFlexTableStatusDisabled(String statusName, String tableId) {
        Assert.assertTrue(isStatusCategoryDisabled(statusName, tableId));
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
    public void asserTextInOverLayIframe(String titleName) {
        Assert.assertTrue(isSpecificOverlayDisplayed(titleName));
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
            Assert.assertFalse(EyeThink.core().is().onWeb().isDisplayed(EyeThink.saas().flexTable().getTableActionIconWithoutTableId(iconName, uniqueColumnValue)));
        } catch (Exception e) {
        }
    }

    /**
     * access last row label name
     *
     * @return
     */
    public WebElement getLastRowLabelContent() {
        return EyeThink.core().elementReference().onWeb(flexTablelastRowNameAsTotal);
    }

    /**
     * click on help text inside draft program flex table
     *
     * @param blockTitle
     */
    public void getHelpTextAtDraftProgramFlexTable(String blockTitle) {
        EyeThink.core().scroll().onWeb().moveToElement(By.xpath("//div[contains(@class,'panel-title')]//div[text()='" + blockTitle
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
        EyeThink.core().scroll().onWeb().moveToElement(By.xpath("//th//span[@title='" + columnTitle + "' or text()='" + columnTitle
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
    public void assertFlexTabelTotalCalulationAmountDiplayed() {
        try {
            EyeThink.core().scroll().onWeb().pageDocument("PageDown", 0, 0);
        } catch (Exception e) {
        }
        Assert.assertTrue(isTotalAmountFieldAtFlexTableDisplayed());
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
        EyeThink.core().elementReference().onWeb(EyeThink.saas().flexTable().getTableActionIconWithoutTableId(iconName, columnName))
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
     * assert true if changed icon css of flex table edit action is displayed
     *
     * @param iconTitle
     */
    public void assertFlexTableEditActionIconDisplayed(String columnTitle, String iconTitle) {
        Assert.assertTrue(EyeThink.core().is().onWeb().isDisplayed(By.xpath("//td//*[@title = '" + columnTitle + "' or text() = '" + columnTitle
                + "']/ancestor::tr[1]//td//a[@title = '" + iconTitle
                + "']//i[contains(@class,'fa fa-external-link')]")));
    }

    /**
     * return false if specified item is displayed
     *
     * @param dropDownValue
     * @return
     */
    public boolean isValuePresentInsideDropDown(String dropDownValue) {
        boolean flag = false;
        for (Elements we : EyeThink.core().elementReference().listOfElements().onWeb(programFlexTableDropdown)) {
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
        Assert.assertTrue(EyeThink.core().is().onWeb().isDisplayed(EyeThink.saas().flexTable().getTableActionIconWithoutTableId(iconName, uniqueColumnValue)));
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
     * assert if specified name/text is displayed inside downloaded pdf file in
     * block content
     */
    public void assertTextDisplayedInPDFForBlockContent(String text, int pageNumber, String fileName) {
        Assert.assertTrue(isTextNotDisplayedInFile(text, pageNumber, fileName));
    }

    /**
     * assert if specified name/text is displayed inside downloaded pdf file in
     * Table content
     */
    public void assertTextDisplayedInPDFForTableContent(String text, int pageNumber, String fileName) {
        Assert.assertFalse(isTextNotDisplayedInFile(text, pageNumber, fileName));
    }

    /**
     * Click on toggle button inside program flex table
     */
    public void clickToggleButtonAndSelect(String menuItemName) {
        EyeThink.saas().phasePannel().clickDoubleArrowtoggle(menuItemName);
    }

    public void performSequenceOfActionsOnFlexTable(String durationOfRun) throws EyeThinkBotsCustomException {
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
        EyeThink.core().click().onWeb(By.xpath("//div[@id='" + fieldApiName + "']//select"));
    }

    /**
     * assert if specified text is displayed inside downloaded xls file
     */
    public void assertTextDisplayedInXLS(String text, String fileName) {
        Assert.assertFalse(isTextNotDisplayedInXLSFile(text, fileName));
    }

    /**
     * retur
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
        Assert.assertTrue(EyeThink.core().is().onWeb().isDisplayed(EyeThink.saas().phasePannel().getDoubleArrowtoggle(anyItemContainedInDropDown)));
    }

    /**
     * assert if specific value is displayed inside select dropdown list
     *
     * @param dropDownValue
     */
    public void assertValueInsideSelectDropdownAtPageDetail(String dropDownValue, String fieldApiName) {
        Assert.assertTrue(isValuePresentInsideSelectDropdownPickList(dropDownValue, fieldApiName));
    }

    /**
     * assert if specified message is displayed inside confirmation alert box
     *
     * @param message
     */
    public void assertTextMessageOnConfirmationAlert(String message) {
        String popupMessage = EyeThink.core().switchTo().getAlertText();
        Assert.assertTrue(popupMessage.equalsIgnoreCase(message));
        EyeThink.core().switchTo().acceptAlert();
    }

    /**
     * assert if expected multiple record inside table is displayed
     *
     * @param recordsName
     */
    public void assertExpectedRecordsInsideTable(String flexTableHeader, String recordsName) {
        Assert.assertTrue(isExpectedRecordsDisplayedInsideTable(flexTableHeader, recordsName.split(",")));
    }

    /*********
     * "Local Methods with complete functionality - private"
     *****************/

    private void handleSequenceOfActionsOnFlexTable() throws EyeThinkBotsCustomException {
        EyeThink.saas().phasePannel().clickTopRightButton("Draft Programs", "New");
        EyeThink.saas().pageDetails().clickAnyTopRightButton("Cancel");
        EyeThink.saas().quickSearch().performTableSpecificQuickSearch("toggleFlexTablePrograms", "Program for Health");
        EyeThink.saas().mainPage().waitForNavigationLogoToDisappear();
        EyeThink.saas().flexTable().clickTableActionIcons("Edit", "Program for Health");
        EyeThink.saas().pageDetails().clickAnyTopRightButton("Cancel");
        EyeThink.saas().mainPage().clickMainMenuBar("Planning");
        EyeThink.saas().flexTable().flexTableShowEntriesDropDown("toggleFlexTablePrograms", "20");
        EyeThink.saas().mainPage().waitForNavigationLogoToDisappear();
        EyeThink.saas().flexTable().flexTableShowEntriesDropDown("toggleFlexTablePrograms", "10");
        EyeThink.saas().mainPage().waitForNavigationLogoToDisappear();
        EyeThink.core().get().refresh();
        EyeThink.core().WaitFor().makeThreadSleep(1000);
        EyeThink.saas().flexTable().flexTablePagination("toggleFlexTablePrograms", "Next");
        EyeThink.saas().mainPage().waitForNavigationLogoToDisappear();
        EyeThink.core().WaitFor().makeThreadSleep(500);
        EyeThink.saas().flexTable().flexTablePagination("toggleFlexTablePrograms", "Previous");
        EyeThink.core().get().refresh();
        EyeThink.core().WaitFor().makeThreadSleep(1000);
        EyeThink.saas().mainPage().waitForNavigationLogoToDisappear();
        EyeThink.core().click().onWeb(EyeThink.saas().flexTable().getSpecificElementFromTableHeader("ID"));
        EyeThink.saas().mainPage().waitForNavigationLogoToDisappear();
        EyeThink.core().click().onWeb(EyeThink.saas().flexTable().getSpecificElementFromTableHeader("Program Name"));
        EyeThink.saas().mainPage().waitForNavigationLogoToDisappear();
        EyeThink.core().get().refresh();
        EyeThink.core().WaitFor().makeThreadSleep(1000);
        EyeThink.saas().phasePannel().clickParallelMenuBars("Draft Programs");
        EyeThink.saas().phasePannel().selectItemFromParallelMenuBars("Draft Programs", "Refresh");
    }

    private boolean isErrorMessageNotDisplayed(String errorMessage) {
        boolean flag = false;
        if (EyeThink.core().get().pageSource().contains(errorMessage)) {
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
        EyeThink.saas().phasePannel().clickDoubleArrowtoggle(titleName);
        try {
            if (EyeThink.core().is().onWeb().isDisplayed(EyeThink.saas().phasePannel().getDoubleArrowtoggle(titleName))) {
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
     * @param option2
     * @return: true if it is not displayed
     */
    private boolean isTopRightParallelLinesBarSpecificOptionsDisabled(String option1, String option2,
                                                                      String pannelTitleName) {
        boolean flag = false;
        try {
            if (EyeThink.core().is().onWeb().isDisplayed(EyeThink.saas().phasePannel().getItemFromParallelMenuBars(pannelTitleName, option1))) {
                flag = false;
            }
        } catch (Exception e) {
            flag = true;
        }
        try {
            if (EyeThink.core().is().onWeb().isDisplayed(EyeThink.saas().phasePannel().getItemFromParallelMenuBars(pannelTitleName, option2))) {
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
            if (EyeThink.core().is().onWeb().isDisplayed(searchInput)) {
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
            if (EyeThink.core().is().onWeb().isDisplayed(EyeThink.saas().phasePannel().getParallelBarsLocator(panelTitleName))) {
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
                if (EyeThink.core().is().onWeb().isDisplayed(element.nestedElement(selectRecordCheckBox))) {
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
            if (getCompleteTableRow().stream().anyMatch(item -> EyeThink.core().elementReference().onWebNested((WebElement) item, totalRowsCalc).isDisplayed())) {
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
            if (EyeThink.core().is().onWeb().isDisplayed(EyeThink.saas().flexTable().getFooterElementsFromTable(text, tableId))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @return false if element is not displayed
     */
    private Boolean isFlexTableColumnHeaderName(String titleName) {
        boolean flag = false;
        try {
            if (EyeThink.core().is().onWeb().isDisplayed(getSpecificElementFromTableHeader(titleName))
                    || EyeThink.core().is().onWeb().isEnabled(getSpecificElementFromTableHeader(titleName))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
            flag = false;
        }
        return flag;
    }

    /**
     * return true if statusName is not displayed
     *
     * @param statusName
     * @return
     */
    private Boolean isStatusCategoryDisabled(String statusName, String tableId) {
        boolean flag = true;
        try {
            if (EyeThink.saas().flexTable().getCompleteTableRow(tableId).stream()
                    .anyMatch(item -> EyeThink.core().elementReference().onWebNested((WebElement) item, flexTableStatusColumn(statusName)).isDisplayed())) {
                flag = false;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
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
        if (EyeThink.core().switchTo().getWindowsHandlers().size() > 1)
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
        if (EyeThink.core().switchTo().getWindowsHandlers().size() == 1) {
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
        return EyeThink.core().elementReference().onWeb(By.xpath(
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
        EyeThink.core().switchTo().switchToParentFrame();
        EyeThink.saas().mainPage().waitForNavigationLogoToDisappear();
        boolean flag = false;
        if (EyeThink.core().is().onWeb().isDisplayed(getOverLayTitle(titleName))) {
            flag = true;
        }
        return flag;
    }

    /**
     * return true if entire page refreshed on button click
     */
    private String isPageRefreshOnButtonClick() {
        return EyeThink.core().get().pageLoadStatus();
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
            if (EyeThink.core().is().onWeb().isDisplayed(EyeThink.saas().phasePannel().getItemFromParallelMenuBars(pannelTitleName, menuOption))) {
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
        EyeThink.core().scroll().onWeb().pageDocument("PageDown", 0, 0);
        boolean flag = false;
        try {
            if (EyeThink.core().is().onWeb().isDisplayed(EyeThink.saas().flexTable().getFooterElementsFromTable(text, tableId))
                    || EyeThink.core().is().onWeb().isEnabled(EyeThink.saas().flexTable().getFooterElementsFromTable(text, tableId))) {
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
        EyeThink.core().scroll().onWeb().pageDocument("PageDown", 0, 0);
        boolean flag = false;
        try {
            int listSize = EyeThink.saas().flexTable().getCompleteTableRow(tableId).size() - 1;
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
            if (EyeThink.core().is().onWeb().isDisplayed(EyeThink.saas().flexTable().getSpecificElementFromTableHeader(columnValueName))) {
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
            if (getCompleteTableRow().stream().anyMatch(item -> EyeThink.core().elementReference().onWebNested((WebElement) item, totalRowsCalc).isDisplayed())) {
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
        if (EyeThink.core().elementReference().listOfElements().onWeb(programFlexTableActionItems).get(sequenceNumber).getAttributes("title")
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
        String currentUrl = EyeThink.core().get().curretnURL();
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
            if (EyeThink.core().is().onWeb().isDisplayed(EyeThink.saas().phasePannel().getTopRightButton(headerName, buttonName))) {
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    private boolean isTextNotDisplayedInFile(String text, int pageNumber, String fileName) {
        boolean flag = true;
        if (EyeThink.core().file().adobeReader().readFromAdobeFileFromResources(fileName, pageNumber).contains(text)) {
            EyeThink.core().report().write(LogLevel.PROJECT_LAYER_INFO, "validated text inside Downloaded pdf file");
            flag = false;
        }
        EyeThink.core().switchTo().popupPresent();
        return flag;
    }

    /**
     * return true if expected text is not displayed inside downloaded xls file
     *
     * @param text
     * @param fileName
     * @return
     */
    private boolean isTextNotDisplayedInXLSFile(String text, String fileName) {
        boolean flag = true;
        List<String> strContents = readXLS(fileName);
        for (String content : strContents) {
            if (content.contains(text)) {
                flag = false;
                break;
            }
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
            if (EyeThink.core().is().onWeb().isStale(recordElement)
                    || EyeThink.core().get().text(EyeThink.saas().flexTable().getFlexTableColumn(cellValue)).equalsIgnoreCase(cellValue)) {
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
            if (EyeThink.core().is().onWeb().isDisplayed(By.xpath("//td//*[@title = '" + columnTitle + "' or text() = '" + columnTitle
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
            for (Elements ele : EyeThink.saas().flexTable().getCompleteTableRow()) {
                ele.getText().contains(text);
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * return true if picklist dropDownValue is displayed
     *
     * @param dropDownValue
     * @param fieldApiName
     * @return
     */
    private boolean isValuePresentInsideSelectDropdownPickList(String dropDownValue, String fieldApiName) {
        String[] exp = null;
        if (dropDownValue.contains(":")) {
            exp = dropDownValue.split(":");
        }
        Boolean isValuePresent = false;
        for (WebElement we : EyeThink.core().select().onWeb(By.xpath("//div[@id='" + fieldApiName + "']//select")).getOptions()) {
            for (int i = 0; i < exp.length; i++) {
                if ((we.getAttribute("value") != "") && we.getText().trim().equals(exp[i])) {
                    isValuePresent = true;
                }
            }
        }
        return isValuePresent;
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
            EyeThink.core().is().onWeb().isDisplayed(By.xpath("//div[@id='myTabbedContent']//a[@title='" + flexTableHeader + "']/../../../following-sibling::div//tbody//td//span[text()='" + expectedRecords + "'] "));
            isRecordsDisplayed = true;
        }
        return isRecordsDisplayed;
    }

    public void assertTextNotDisplayedInPDF(String shouldBeDisplayed, String text, int pageNumber, String fileName) {
        Assert.assertEquals("see".equalsIgnoreCase(shouldBeDisplayed), isTextNotDisplayedInFiles(text, pageNumber, fileName));
    }

    private boolean isTextNotDisplayedInFiles(String text, int pageNumber, String fileName) {
        boolean flag = false;
        if (readAndRenamePDFFile(pageNumber, fileName).contains(text)) {
            flag = true;
        }
        return flag;
    }

    /**
     * Rename the file and change it from temp to pdf. Read from pdf file
     *
     * @return
     */
    public String readAndRenamePDFFile(int pageNumber, String fileName) {
        File file = new File(System.getProperty("user.dir") + "\\target");
        File[] directory = EyeThink.core().file().getCompleteFilesListOnLocalDirectory(file.getAbsolutePath());
        for (File files : directory) {
            if (files.getName().endsWith(".tmp")) {
                new File(files.getAbsolutePath().toString())
                        .renameTo(new File(file.getAbsolutePath() + "\\" + fileName + ".pdf"));
                break;
            }
        }
        return EyeThink.core().file().adobeReader().readFromAdobeFileOnLocalAtUserDirectory(
                file.getAbsolutePath().toString() + "\\" + fileName + ".pdf", pageNumber);
    }
}