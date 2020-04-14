package com.framework.automation.pageobject;

import com.automation.rei.handlers.govgrants;
import com.framework.automation.projectmanager.GovGrantsManager;
import com.testingblaze.objects.Elements;
import com.testingblaze.register.I;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.math.BigDecimal;
import java.time.format.DateTimeFormatter;
import java.util.*;

public class EnhancedFlexGridPage extends GovGrantsManager {
    /******* "Variables and Locators" *****************/
    private final By reachOutToEnhancedGridCollapse, searchInputEnhancedGrid, completeTableRowOfEnhancedGrid,
            selectRecordCheckBoxForEnhancedGrid, currentBudgetPeriodEndDate, scrollToActionColumn,
            idColumnForChildFlexTable, numberOfAwardscells,
            obligatedAmountSpecificCellsAtChildTable, selectBoxOfStatusColumnInEditMode;

    /**
     * Constructor to handle dependency injection and framework library
     */
    public EnhancedFlexGridPage() {
        reachOutToEnhancedGridCollapse = By.id("ProgramBudgetCategoryflexTable");
        searchInputEnhancedGrid = By.cssSelector("div>grid>div>div>div>div>div>input.form-control");
        completeTableRowOfEnhancedGrid = By
                .xpath("//div[@class='panel ng-scope']/div[@class='panel-body collapse in']//table/tbody/tr");
        selectRecordCheckBoxForEnhancedGrid = By
                .xpath("//div[@id='Enhanced1grid']//input[@aria-label='Select Record']");
        currentBudgetPeriodEndDate = By.xpath("//field[@field-name='BudgetPeriodEndDate__c']//input[@type='text']");
        scrollToActionColumn = By.xpath("//div[@id='Enhanced1grid']//th[contains(text(),'Actions')]");
        idColumnForChildFlexTable = By.xpath("//field[@field-name='Name']//input[@type='text']");
        numberOfAwardscells = By.xpath("//table/tbody//*[@field-name='NumberofAwards__c']//span");
        obligatedAmountSpecificCellsAtChildTable = By
                .xpath("//table/tbody/tr/td//*[@field-name='TotalObligateAmount__c']");
        selectBoxOfStatusColumnInEditMode = By.xpath("//select[@ng-model='pickListValue']");
    }

    /******* "Key Methods with complete functionality - public" *****************/

    /**
     * click on help text inside flex enhanced grid
     *
     * @param blockTitle
     */
    public void getHelpTextAtParentFlexTableEnhancedGrid(String blockTitle) {
        I.amPerforming().scroll().toMoveToElement(By.xpath("//div[@id='flexGridEnhanced1']//span[contains(text(),'" + blockTitle + "')]/../../..//span[contains(@class,'fa-info')]"));
    }

    /**
     * get complete rows of enhanced flex grid- This method is used to return parent
     * enhanced grid table rows so created separately-It is different from flex
     * table
     *
     * @return
     */
    public List<Elements> getCompleteTableRowOfEnhancedGrid() {
        I.amPerforming().getElementReference().of(completeTableRowOfEnhancedGrid);
        return I.amPerforming().getElementReference().forListOfElements().of(completeTableRowOfEnhancedGrid);
    }

    /**
     * click on help text inside enhanced grid table specific to internal
     * organization column
     *
     * @param columnTitle
     */
    public void getHelpTextAtEnhancedGridTableSpecificColumn(String columnTitle) {
        I.amPerforming().scroll().toMoveToElement(I.amPerforming().getElementReference().of(By.xpath("//th//span[@title='" + columnTitle + "' or text()='" + columnTitle + "']/../..//helpicon//span[contains(@class,'fa-info')]")));
    }

    /**
     * click on text area and enter values for multiple rows for particular column
     * at enhanced grid
     *
     * @param tableId
     * @param enteredValue
     */
    public void enterValueForTextareaAtEnhancedGridColumn(String enteredValue, String tableId) {
        List<Elements> textField = I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//div[@id='" + tableId + "']//tbody//td//textarea"));
        for (Elements inputField : textField) {
            inputField.clearText();
            inputField.enterText(enteredValue);
        }
    }

    /**
     * Save the entered value of budget period date field
     */
    public void saveSpecificValueFromFlexTableInsideGivenKey(String columnValueFromRow, String columnName, String key, String flexTableId) {
        I.amPerforming().propertiesFileOperationsTo().saveValue(key, getValueOfSpecifiedColFromTableHavingColumnNameAs(columnValueFromRow,
                columnName, flexTableId));
    }

    /**
     * assert true if changed icon css of enhanced grid table edit action is
     * displayed
     *
     * @param iconTitle
     */
    public void assertEnhancedGridTableEditActionIconDisplayed(String columnTitle, String iconTitle) {
        I.amPerforming().scroll().onPageToSpecificElement(scrollToActionColumn);
        Assert.assertTrue(I.amPerforming().checkToSee().isDisplayed(By.xpath("//td//*[@title = '" + columnTitle + "' or text() = '" + columnTitle
                + "']/ancestor::tr[1]//td//a[@title = '" + iconTitle
                + "']//i[contains(@class,'fa fa-external-link')]")));
    }

    /**
     * assert correct title name of enhanced flex grid is displayed
     *
     * @param titleName
     * @param tableId
     */
    public void assertEnhancedFlexGridTitleDisplayed(String titleName, String tableId) {
        Assert.assertTrue(isTitleDisplayedForEnhancedGrid(titleName, tableId));
    }

    /**
     * assert if quick search is not displayed on enhanced grid
     */
    public void assertquickSearchDisabledForEnhancedGrid() {
        Assert.assertTrue(isQuickSearchDisabledForEnhancedGrid());
    }

    /**
     * assert true if total row calculation is disabled in enhanced grid
     */
    public void assertEnhancedFlexGridTabelRowCountDisabled(String text, String tableId) {
        try {
            I.amPerforming().scroll().onPageToSpecificElement(completeTableRowOfEnhancedGrid);
        } catch (Exception e) {
        }
        Assert.assertFalse(isEnhancedFlexGridRowsCountDisabled(text, tableId));
    }

    /**
     * assert true if header column name is present inside enhanced flex grid
     *
     * @param headerColumnName
     */
    public void assertEnhancedFlexGridHeaderColumnName(String tableId, String headerColumnName) {
        Assert.assertTrue(isEnhancedFlexGridColumnHeaderName(tableId, headerColumnName));
    }

    /***
     * assert true if check box select record enabled at enhanced flex grid
     */
    public void assertEnhancedFlexGridRecordSelectionEnabled() {
        Assert.assertTrue(isSelectRecordCheckBoxEnabledAtEnhancedGrid());
    }

    /**
     * assert if Edit icon open in same tab or not for enhanced flex grid
     */
    public void assertEditOpenInSameTabForEnhancedGrid() {
        Assert.assertTrue(isSameTabStaysForEditForEnhancedGrid());
    }

    /**
     * assert true if page size is enabled at bottom of enhanced grid
     */
    public void assertEnhancedGridPageSizeEnabled(String text, String tableId) {
        Assert.assertTrue(isEnhancedGridBottomElementEnabled(text, tableId));
    }

    /**
     * assert if advance filter is disabled from planning enhanced flex grid
     */
    public void assertDisableAdvanceFilterFromEnhancedGrid(String tableId, String dataTargetValue) {
        Assert.assertTrue(isAdvanceFilterDisabledFromEnhancedGrid(tableId, dataTargetValue));
    }

    /**
     * assert true if 10 records present inside enhanced grid
     */
    public void assertEnhancedGridNumberOfRecordsPresent(int rowCount, String tableId) {
        Assert.assertTrue(isNoOfRecordsInsideEnhancedGridPresent(rowCount, tableId));
    }

    /**
     * assert changed enhanced grid table column name displayed
     *
     * @param columnTitleName
     */
    public void assertCorrectEnhancedGridTableColumnTitleDisplayed(String columnTitleName, String tableId) {
        Assert.assertTrue(isChangedEnhancedFlexGridColumnHeaderName(columnTitleName, tableId));
    }

    /**
     * assert specific column inside enhanced grid table column not displayed
     *
     * @param columnTitleName
     */
    public void assertSpecificColumnOfEnhancedGridTableNotDisplayed(String columnTitleName) {
        Assert.assertFalse(isChangedEnhancedFlexGridColumnHeaderName(columnTitleName));
    }

    /**
     * assert enhanced grid cell value for particular record is displayed
     *
     * @param columnTitleName
     * @param colName
     */
    public void assertCellValueOfEnhancedGridForSpecificRecordDisplayed(String columnTitleName, String colName) {
        Assert.assertTrue(isSpecificCellValueOfEnhancedFlexGrid(columnTitleName, colName));
    }

    /**
     * assert text input box for current project period end date column inside
     * enhanced grid is not displayed
     */
    public void assertTextInputBoxForSpecificColumnNotDisplayed() {
        Assert.assertFalse(isInputTextBoxIsDisplayedForSpecificColumnOfEnhancedFlexGrid());
    }

    /**
     * return true if action button inside enhanced grid table as per name is
     * displayed
     *
     * @param buttonName
     * @param headerName
     */
    public void assertActionButtonInsideEnhancedGridTableIsDisplayed(String buttonName, String headerName) {
        Assert.assertTrue(isActionButtonInsideTopOfEnhancedGridTableDisplayed(buttonName, headerName));
    }

    /**
     * return true if action button inside enhanced grid table as per name is not
     * displayed
     *
     * @param buttonName
     * @param headerName
     */
    public void assertActionButtonInsideEnhancedGridTableIsNotDisplayed(String buttonName, String headerName) {
        Assert.assertFalse(isActionButtonInsideTopOfEnhancedGridTableDisplayed(buttonName, headerName));
    }

    /**
     * return true if cell value is as expected
     */
    public void assertCellValueAtEnhancedGridWithFormula(String fieldApiName) {
        Assert.assertTrue(isExpectedSumValueAtEnhancedGridTableDisplayed(fieldApiName));
    }

    /**
     * return true if particular column value is in ascending order
     */
    public void assertAscendingOrderOfEnhancedGridColumnValue(String text, String order) {
        Assert.assertTrue(I.amPerforming().comparisonOf().sortAndCompareOneTableColumn(getTableColumnCompleteContent(text), order));
    }

    /**
     * return true if particular currency column value is in ascending order
     */
    public void assertAscendingOrderOfEnhancedGridCurrencyColumnValue(String text, String order) {
        Assert.assertTrue(isColumnValueInExectedOrder(text, order));
    }

    /**
     * return true if row value is getting sorted in ascending order with row grouping
     */
    public void assertAscendingOrderOfRowValueWithRowGrouping(String order) {
        Assert.assertTrue(isRowValuesGetSortedWithRowGrouping(order));
    }

    /**
     * assert if specific action item appears at a specific position for
     * enhancedgrid table
     *
     * @param iconName
     * @param tableId
     */
    public void assertSequenceOfEditActionOfEnhancedGrid(String iconName, String tableId, int sequenceNumber) {
        Assert.assertTrue(isEditActionIconSequenceAtEnhancedGridTable(iconName, tableId, sequenceNumber));
    }

    /**
     * assert true if Menu Field is not present in child flex table (flex grid) for
     * enhancedgrid
     *
     * @param panelTitleName
     */
    public void assertThatMenuFieldIsDisabledOnChildFlexTable(String panelTitleName) {
        Assert.assertTrue(isMenuIconDisabledInChildFlexTable(panelTitleName));
    }

    /**
     * assert true if quick search is not available for child flex table under
     * enhanced grid.
     */
    public void assertThatQuickSearchIsDisabledOnChildFlexTable(String childTableId) {
        Assert.assertTrue(isQuickSearchDisabledForChildFlexTableInEnhancedGrid(childTableId));
    }

    /**
     * assert true if total record is present on child flex table.
     *
     * @param footerName
     * @param tableId
     */
    public void assertThatTotalRecordIsPresentOnChildFlexTable(String footerName, String tableId) {
        Assert.assertTrue(isTotalRecordsEnabledForChildFlexTable(footerName, tableId));
    }

    /**
     * Assert for Record Selection Enable.
     */
    public void assertIfSelectRecordIsEnabledOnChildFlexTable() {
        Assert.assertTrue(isRecordSelectionEnabledOnChildFlexTable());
    }

    /**
     * assert text input box for ID column inside child flex table of enhanced grid
     * is not displayed
     */
    public void assertTextInputBoxForIdColumnNotDisplayed() {
        Assert.assertFalse(isInputTextBoxIsDisplayedForIdColumnOfChildFlexTableAtEnhancedGrid());
    }

    /**
     * assert select box/picklist for status column inside table of enhanced grid
     * is not displayed in edit mode
     */
    public void assertSelectBoxForStatusColumnDisplayedInViewMode() {
        Assert.assertFalse(isSelectBoxDisplayedInViewModeForStatusColumnOfTableAtEnhancedGrid());
    }

    /**
     * assert true if row having expected text in enhanced grid
     */
    public void assertTextContainingRowAtParentFlexTabel(String text, String tableId) {
        try {
            I.amPerforming().scroll().onPageToSpecificElement(completeTableRowOfEnhancedGrid);
        } catch (Exception e) {
        }
        Assert.assertTrue(isExpectedTextIsDisplayedAtParentFlexTabledRow(text, tableId));
    }

    /**
     * return true if cell sum value is as expected for number of award column
     */
    public void assertCellValueForNumberOfAwardsAtEnhancedGrid() {
        Assert.assertTrue(isExpectedSumValueForNumberOfAwardsAtEnhancedGridTableDisplayed());
    }

    /**
     * assert if error message is displayed at enhanced grid
     *
     * @param error
     */
    public void assertIsMasterViewErrorMessageIsDisplayed(String error) {
        Assert.assertTrue(isErrorMessageAtEnhancedGridIsDisplayed(error));
    }

    /**
     * assert if error message is not displayed at enhanced grid
     *
     * @param error
     */
    public void assertIsMasterViewErrorMessageIsNotDisplayed(String error) {
        Assert.assertFalse(isErrorMessageAtEnhancedGridIsDisplayed(error));
    }

    /**
     * assert enhanced grid cell value colour for particular record is displayed
     *
     * @param cellValue
     * @param tableId
     * @param colorName
     */
    public void assertCellValueColourOfEnhancedGridForSpecificRecordDisplayed(String cellValue, String tableId,
                                                                              String colorName) {
        Assert.assertTrue(isSpecificCellValueColourOfEnhancedFlexGrid(cellValue, tableId, colorName));
    }

    /**
     * return true if cell sum value is as expected for obligated amount column at
     * child flex table of enhanced grid
     */
    public void assertCellValueForObligatedAmountAtChildFlexTableOfEnhancedGrid() {
        Assert.assertTrue(isExpectedSumValueOfObligatedAmountAtChildTableDisplayed());
    }

    /**
     * return true if cell over all total sum value is as expected for number of
     * award column
     */
    public void assertOverAllTotalCellValueForNumberOfAwardsAtEnhancedGrid(String fieldApiName) {
        Assert.assertTrue(isExpectedOverAllTotalSumValueForNumberOfAwardsAtEnhancedGridTableDisplayed(fieldApiName));
    }

    /**
     * return true if entered text area value at enhanced grid is displayed
     *
     * @param enteredValue
     * @param columnValue
     * @param tableId
     */
    public void assertEditedValueForTextAreaField(String enteredValue, String columnValue, String tableId) {
        Assert.assertTrue(isExpectedEnteredValueInsideTextAreaFieldDisplayed(enteredValue, columnValue, tableId));
    }

    /**
     * return true if entered text area value for multiple cells at enhanced grid is
     * displayed
     *
     * @param enteredValue
     */
    public void assertEditedValueForTextAreaFieldForMultipleCells(String enteredValue, String columnValue) {
        Assert.assertTrue(
                isExpectedEnteredValueInsideTextAreaFieldDisplayedForMultipleCells(enteredValue, columnValue));
    }

    /**
     * return true if particular column value is in ascending order with respect to
     * other Column
     */
    public void assertAscendingOrderOfEnhancedGridColumnValueWRTOtherColumn(String text1, String text2, String order) {
        Assert.assertTrue(isMultipleColumnValueInExepctedOrder(text1, text2, order));
    }

    /**
     * To verify reported date field contains today's date
     */
    public void assertBugetPeriodDateField() {
        Assert.assertEquals(I.amPerforming().propertiesFileOperationsTo().getValue("BPdate1"), I.amPerforming().actionToGet().currentDateInDesiredFormat(DateTimeFormatter.ofPattern("MM/dd/yyyy")).replaceAll("^0", ""));
    }

    /**
     * return true if standard fields at enhanced grid column contains User name as expected
     */
    public void assertUserNameAtStandardFieldsInsideEnhancedGridColumn(String text1, String text2, String userName) {
        Assert.assertTrue(isUserNameShownUnderStandardFieldsColumn(text1, text2, userName));
    }

    /**
     * return true if cell value is as expected as zero for null record values
     *
     * @param value
     */
    public void assertCellValueForTotalAdjustedAmountAtEnhancedGrid(String value) {
        Assert.assertTrue(isExpectedSumValueAtTotalAdjustedAmountEnhancedGridTableDisplayed(value));
    }

    /**
     * return true if cell value is as expected as zero for null record values
     *
     * @param fieldApiName
     */
    public void assertNullValueFoeSpecificFieldAtEnhancedGrid(String fieldApiName) {
        Assert.assertTrue(isBlankValueForNUMBERFieldAtEnhancedGridTableDisplayed(fieldApiName));
    }

    /**
     * return true if Date/DateTime field value is current date
     *
     * @param fieldApiName
     */
    public void assertDateAndDateTimeFieldValueForSpecificFieldAtEnhancedGrid(String fieldApiName) {
        Assert.assertTrue(isCurrentDateDisplayedAtDateAndDateTimeFIeld(fieldApiName));
    }

    /**
     * return true if cell over all total sum value is as expected for Total adjusted amount column after edit and save particular record
     */
    public void assertOverAllTotalCellValueForTotalAdjustedAmountAtEnhancedGrid(String fieldApiName) {
        Assert.assertTrue(isExpectedOverAllTotalSumValueForTotalAdjustedAmountAtEnhancedGridTableDisplayed(fieldApiName));
    }

    /**
     * return true if arrow is displayed in ascending order for multiple field
     */
    public void assertUpArrowWithSortingAtMultipleField() {
        Assert.assertTrue(isUpArrowDisplayedForMultipleField());
    }

    /**
     * return true if over all total sum is not displayed for expected column
     */
    public void assertOverAllTotalNotDisplayed(String fieldApiNAme) {
        Assert.assertTrue(isOverAllTotalIsDisplayed(fieldApiNAme));
    }

    /*********
     * "Local Methods with complete functionality - private"
     *****************/

    /**
     * Boolean status of advance filter option from program/enhanced flex grid
     *
     * @param tableId
     */
    private Boolean isAdvanceFilterDisabledFromEnhancedGrid(String tableId, String dataTargetValue) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(govgrants.perform().phasePanel().getAdvanceFilterItem(tableId, dataTargetValue))) {
                flag = false;
            }
        } catch (Exception e) {
            flag = true;
        }
        return flag;
    }

    /**
     * validate if tile is displayed
     *
     * @param titleName
     * @param tableId
     * @return
     */
    private boolean isTitleDisplayedForEnhancedGrid(String titleName, String tableId) {
        try {
            if (I.amPerforming().checkToSee().isDisplayed(govgrants.perform().phasePanel().getPanelTitleWithTableId(tableId, titleName))) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            return false;
        }
    }

    /**
     * validate if quick search is displayed or not at enhanced grid
     *
     * @return: true if it is not displayed
     */
    private boolean isQuickSearchDisabledForEnhancedGrid() {
        boolean flag = true;
        try {
            I.amPerforming().scroll().onPageToSpecificElement(reachOutToEnhancedGridCollapse);
            if (I.amPerforming().checkToSee().isDisplayed(searchInputEnhancedGrid)) {
                flag = false;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @return true if element is not displayed inside enhanced grid
     */
    private Boolean isEnhancedFlexGridRowsCountDisabled(String text, String tableId) {
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
     * @return false if element is not displayed
     */
    private Boolean isEnhancedFlexGridColumnHeaderName(String tableId, String titleName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(govgrants.perform().flexTable().getSpecificElementFromTableHeader(tableId, titleName))
                    || I.amPerforming().checkToSee().isEnabled(govgrants.perform().flexTable().getSpecificElementFromTableHeader(tableId, titleName))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
            flag = false;
        }
        return flag;
    }

    /**
     * @return: true if select record check box eneabled at enhanced grid
     */
    private boolean isSelectRecordCheckBoxEnabledAtEnhancedGrid() {
        boolean flag = false;
        try {
            for (Elements element : getCompleteTableRowOfEnhancedGrid()) {
                if (I.amPerforming().checkToSee().isDisplayed(element.nestedElement(selectRecordCheckBoxForEnhancedGrid))) {
                    flag = true;
                    break;
                }
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * Boolean status of Edit icon opens in same tab for enhanced flex grid
     *
     * @return
     */
    private Boolean isSameTabStaysForEditForEnhancedGrid() {
        boolean sameTabFound = false;
        if (I.amPerforming().switchTo().getWindowsHandlers().size() == 1) {
            sameTabFound = true;
        }
        return sameTabFound;
    }

    /**
     * @return true if bottom element is displayed at enhanced grid
     */
    private boolean isEnhancedGridBottomElementEnabled(String text, String tableId) {
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
     * @return true if expected count of records is present inside enhanced grid
     */
    private boolean isNoOfRecordsInsideEnhancedGridPresent(int rowCount, String tableId) {
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
     * @return true if changed column name is displayed for enhaced grid
     */
    private Boolean isChangedEnhancedFlexGridColumnHeaderName(String titleName) {
        boolean flag = false;
        try {
            I.amPerforming().scroll().onPageToSpecificElement(reachOutToEnhancedGridCollapse);
            if (I.amPerforming().actionToGet().text(govgrants.perform().flexTable().getSpecificElementFromTableHeader(titleName)).equalsIgnoreCase(titleName)) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @return true if changed column name is displayed for enhaced grid
     */
    private Boolean isChangedEnhancedFlexGridColumnHeaderName(String columnTitleName, String tableId) {
        boolean flag = false;
        try {
            if (I.amPerforming().actionToGet().text(govgrants.perform().flexTable().getSpecificElementFromTableHeader(tableId, columnTitleName)).equalsIgnoreCase(columnTitleName)) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @return true if changed cell value for specific record is displayed for
     * enhaced grid
     */
    private Boolean isSpecificCellValueOfEnhancedFlexGrid(String cellValue, String colName) {
        boolean flag = false;
        try {
            if (I.amPerforming().actionToGet().text(govgrants.perform().flexTable().getFlexTableColumn(cellValue)).equalsIgnoreCase(cellValue)) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @return true if changed cell value for specific record is displayed for
     * enhaced grid
     */
    private Boolean isInputTextBoxIsDisplayedForSpecificColumnOfEnhancedFlexGrid() {
        boolean flag = false;
        try {
            I.amPerforming().scroll().onPageToSpecificElement(reachOutToEnhancedGridCollapse);
            govgrants.perform().flexTable().slideNestedFlexTable("TmpActiveGrantsGridFlexToggle", 150);
            if (I.amPerforming().checkToSee().isDisplayed(currentBudgetPeriodEndDate)) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * return true if action button inside enhanced grid table is displayed
     *
     * @param buttonName
     * @param headerName
     * @return
     */
    private boolean isActionButtonInsideTopOfEnhancedGridTableDisplayed(String buttonName, String headerName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//*[@title='" + headerName + "' or text()='"
                    + headerName
                    + "']/ancestor::div[contains(@class,'header-title') or 1]/following-sibling::div/action//button[contains(@title,'"
                    + buttonName + "') or @text()='" + buttonName + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    /**
     * return true if expected amount at particular cell inside enhanced grid table
     * is displayed
     *
     * @return
     */
    private boolean isExpectedSumValueAtEnhancedGridTableDisplayed(String fieldApiName) {
        boolean flag = false;
        try {
            List<Elements> rows_table = I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//table/tbody[contains(@ng-repeat,'row')]/tr/td//*[@field-name='"+ fieldApiName +"']/span"));
            String str = "";
            String strNew = "";
            BigDecimal bd = new BigDecimal(0);
            Integer counter = 0;

            for (int row = 0; row < rows_table.size(); row++) {
                if (row <= 2) {
                    str = rows_table.get(row).getText();
                    strNew = str.replaceAll("[$|,|']", "");
                    if (strNew != null) {
                        counter += new BigDecimal(strNew).intValue();
                    }
                }
                if (row == 3) {
                    str = rows_table.get(row).getText();
                    strNew = str.replaceAll("[$|,|']", "");
                    bd = new BigDecimal(strNew);
                    if (counter.doubleValue() == bd.doubleValue() && counter.doubleValue() == bd.doubleValue()) {
                        flag = true;
                    } else {
                        flag = false;
                    }
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    /**
     * return true if particular currency column value of enhanced grid table is in
     * ascending/descending order
     *
     * @return
     */
    private boolean isColumnValueInExectedOrder(String text, String order) {
        boolean flag = false;
        try {
            ArrayList<BigDecimal> obtainedList = new ArrayList<BigDecimal>();
            List<Elements> rows_table = getTableColumnCompleteContent(text);
            if ((I.amPerforming().actionToGet().attribute(By.xpath("//table/tbody/tr/td//*[@field-name='" + text + "']"), "field-type").equalsIgnoreCase("CURRENCY"))) {
                rows_table.remove(rows_table.size() - 1);
            }
            String strNew = "";
            BigDecimal bd = new BigDecimal(0);
            String str = "";
            for (Elements we : rows_table) {
                str = we.getText();
                strNew = str.replaceAll("[$|,|']", "");
                bd = new BigDecimal(strNew);
                obtainedList.add(bd);
            }
            ArrayList<BigDecimal> sortedList = new ArrayList<>();
            for (BigDecimal s : obtainedList) {
                sortedList.add(s);
            }
            if (order.equals("Ascending")) {
                Collections.sort(sortedList);
            } else if (order.equals("Descending")) {
                Collections.sort(sortedList, Collections.reverseOrder());
            }
            if (sortedList.equals(obtainedList)) {
                flag = true;
            } else {
                flag = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    /**
     * get particular table column complete content
     *
     * @param text
     * @return
     */
    public List<Elements> getTableColumnCompleteContent(String text) {
        return I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//table/tbody//span[contains(@ng-if,'isTotal != true')]//*[@field-name='" + text + "']/span"));
    }

    /**
     * check the sequence of the edit action at enhanced grid table
     *
     * @param iconName
     * @param tableId
     * @param sequenceNumber
     * @return true/false
     */
    private boolean isEditActionIconSequenceAtEnhancedGridTable(String iconName, String tableId, int sequenceNumber) {
        if (getCompleteTableAction(iconName, tableId).get(sequenceNumber).getAttributes("title").contains(iconName)) {
            return true;
        } else
            return false;
    }

    /**
     * get complete action of table Flex/Enhanced
     *
     * @param tableId
     * @param iconName
     * @return
     */
    public List<Elements> getCompleteTableAction(String iconName, String tableId) {
        I.amPerforming().getElementReference().of(By.xpath("//div[@id='" + tableId + "']//action/span//a"));
        By actionItem = By.xpath("//div[@id='" + tableId + "']//action/span//a");
        return I.amPerforming().getElementReference().forListOfElements().of(actionItem);
    }

    /**
     * Boolean status of menu icon from program child flex table(Grid)
     *
     * @param panelTitleName
     */
    private Boolean isMenuIconDisabledInChildFlexTable(String panelTitleName) {
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
     * @return true if Quick Search is not available in child flex table.
     */
    private Boolean isQuickSearchDisabledForChildFlexTableInEnhancedGrid(String childTableId) {
        boolean flag = true;
        try {
            I.amPerforming().scroll().onPageToSpecificElement(reachOutToEnhancedGridCollapse);
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//div[@id='" + childTableId + "']/div[1]//input"))) {
                flag = false;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * check if total record are enabled for child flex table or not.
     *
     * @param footerName
     * @param tableId
     * @return
     */
    private Boolean isTotalRecordsEnabledForChildFlexTable(String footerName, String tableId) {
        return I.amPerforming().checkToSee().isDisplayed(By.xpath("//div[@id='" + tableId + "']//span[contains(text(),'" + footerName + "')]"));
    }

    /**
     * check if Record Selection option is Enabled or not
     *
     * @return
     */
    private Boolean isRecordSelectionEnabledOnChildFlexTable() {
        return I.amPerforming().checkToSee().isDisplayed(By.xpath("//input[@id='TmpGrantorActiveAwardsGridcheckBox']"));
    }

    /**
     * @return true if changed cell value for Id column is displayed for enhaced
     * grid child flex table
     */
    private Boolean isInputTextBoxIsDisplayedForIdColumnOfChildFlexTableAtEnhancedGrid() {
        boolean flag = false;
        try {
            I.amPerforming().scroll().onPageToSpecificElement(reachOutToEnhancedGridCollapse);
            if (I.amPerforming().checkToSee().isDisplayed(idColumnForChildFlexTable)) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @return true if expected text is displayed inside enhanced grid rows
     */
    private Boolean isExpectedTextIsDisplayedAtParentFlexTabledRow(String text, String tableId) {
        boolean flag = false;
        try {
            ArrayList<String> obtainedList = new ArrayList<>();
            List<Elements> rows_table = govgrants.perform().flexTable().getCompleteTableRow(tableId);
            for (Elements we : rows_table) {
                obtainedList.add(we.getText());
            }
            for (int row = 0; row < obtainedList.size(); row++) {
                if (obtainedList.get(row).contains(text)) {
                    flag = true;
                    break;
                } else {
                    flag = false;
                }
            }

        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * return true if expected amount at particular cell inside Number of awards
     * column at enhanced grid table is displayed
     *
     * @return
     */
    private boolean isExpectedSumValueForNumberOfAwardsAtEnhancedGridTableDisplayed() {
        boolean flag = false;
        try {
            I.amPerforming().scroll().onPageToSpecificElement(numberOfAwardscells);
            List<Elements> rows_table = I.amPerforming().getElementReference().forListOfElements().of(numberOfAwardscells);
            double rowTotal = 0.00;
            double sum = 0.00;
            for (int row = 0; row < rows_table.size(); row++) {
                rowTotal = Double.valueOf(rows_table.get(rows_table.size() - 1).getText());
                if (row < rows_table.size() - 1) {
                    if (rows_table.get(row).getText() != null) {
                        sum += Double.valueOf(rows_table.get(row).getText());
                    }
                }
            }
            if (rowTotal == sum) {
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    /**
     * @param error
     * @return true if error message for Is master view is displayed enhanced grid
     * flex table
     */
    private Boolean isErrorMessageAtEnhancedGridIsDisplayed(String error) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath(
                    "//div[contains(@class, 'alert alert-warning displayFlexOnly alertMessage')]/span[contains(text(),'"
                            + error + "')]"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @return true if changed colour of cell value for specific record is displayed
     * for enhaced grid
     */
    private Boolean isSpecificCellValueColourOfEnhancedFlexGrid(String cellValue, String tableId, String colorName) {
        boolean flag = false;
        WebElement cellContent = I.amPerforming().getElementReference().of(By.xpath("//div[@id='" + tableId + "']//span[@title='" + cellValue + "' or text()='"
                + cellValue + "']/ancestor::td[contains(@class,'ng-scope')]"));
        switch (colorName.toUpperCase()) {
            case "RED":
                if (cellContent.getCssValue("color").contains("rgba(255, 0, 0, 1)")
                        || cellContent.getCssValue("color").contains("rgb(255, 0, 0)")
                        || cellContent.getAttribute("style").contains("rgb(255, 0, 0)")) {
                    flag = true;
                }
                break;
            case "BLUE":
                if (cellContent.getCssValue("color").contains("rgba(11, 11, 160, 1)")
                        || cellContent.getCssValue("color").contains("rgba(11, 11, 160)")
                        || cellContent.getAttribute("style").contains("rgb(11, 11, 160)")) {
                    flag = true;
                }
                break;
            case "GREEN":
                if (cellContent.getCssValue("color").contains("rgba(59, 161, 11, 1")
                        || cellContent.getCssValue("color").contains("rgb(59, 161, 11")
                        || cellContent.getAttribute("style").contains("rgb(59, 161, 11)")) {
                    flag = true;
                }
                break;
        }
        return flag;
    }

    /**
     * return true if expected amount at particular cell inside child flex table of
     * enhanced grid table is displayed
     *
     * @return
     */
    private boolean isExpectedSumValueOfObligatedAmountAtChildTableDisplayed() {
        boolean flag = false;
        I.amPerforming().waitFor().makeThreadSleep(4000);
        try {
            I.amPerforming().scroll().onPageToSpecificElement(obligatedAmountSpecificCellsAtChildTable);
            List<Elements> rows_table = I.amPerforming().getElementReference().forListOfElements().of(obligatedAmountSpecificCellsAtChildTable);
            double sum = 0.00;
            double totalVal = Double.valueOf(rows_table.get(rows_table.size() - 2).getText().replaceAll("[$|,|']", ""));
            for (int row = 0; row < rows_table.size() - 2; row++) {
                if (rows_table.get(row).getText() != null) {
                    sum += Double.valueOf(rows_table.get(row).getText().replaceAll("[$|,|']", ""));
                }
            }
            if (totalVal == sum) {
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    /**
     * return true if over all total amount for number of awards column cells at
     * enhanced grid parent table is displayed
     *
     * @return
     */
    private boolean isExpectedOverAllTotalSumValueForNumberOfAwardsAtEnhancedGridTableDisplayed(String fieldApiName) {
        boolean flag = false;

        try {
            I.amPerforming().scroll().onPageToSpecificElement(By.xpath("//table/tbody//*[@field-name='"+ fieldApiName +"']//span"));
            List<Elements> rows_table = I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//table/tbody//*[@field-name='"+ fieldApiName +"']//span"));
            String sumStr = rows_table.get(rows_table.size() - 1).getText();
            double sum = 0.00;
            for (int row = 0; row < rows_table.size() - 1; row++) {
                if (rows_table.get(row).getText() != null) {
                    sum += Double.valueOf(rows_table.get(row).getText());
                }
            }
            String numberAsString = String.format("%.2f", sum);
            sumStr = String.format("%.2f", Double.parseDouble(sumStr));
            if (sumStr.equals(numberAsString)) {
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    /**
     * return true if expected/entered text area value is displayed inside Text Area
     * field
     *
     * @param enteredValue
     * @param columnValue
     * @param tableId
     * @return
     */
    private boolean isExpectedEnteredValueInsideTextAreaFieldDisplayed(String enteredValue, String columnValue,
                                                                       String tableId) {
        boolean flag = false;
        WebElement editedContent = I.amPerforming().getElementReference().of(By.xpath("//div[@id='" + tableId + "']//td//*[@title = '" + columnValue + "' or text() = '"
                + columnValue + "']/ancestor::tr[1]//td//span[contains(text(),'" + enteredValue + "')]"));
        try {
            if (I.amPerforming().actionToGet().text(editedContent).equals(enteredValue)) {
                flag = true;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return flag;
    }

    /**
     * return true if expected/entered text area value is displayed inside Text Area
     * field for multiple cells
     *
     * @param enteredValue
     * @return
     */
    private boolean isExpectedEnteredValueInsideTextAreaFieldDisplayedForMultipleCells(String enteredValue,
                                                                                       String columnValue) {
        boolean flag = false;
        try {
            List<Elements> cellsValue = I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//table/tbody[contains(@ng-repeat,'row')]/tr/td//*[@field-name='" + columnValue + "']//span//span | //table/tbody[contains(@ng-repeat,'row')]/tr/td//*[@field-name='" + columnValue + "']//span"));
            for (Elements el : cellsValue) {
                String valueFound = el.getText().trim();
                if (enteredValue.equals(valueFound)) {
                    flag = true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    /**
     * return true if particular column value of enhanced grid table is in
     * ascending/descending order
     *
     * @return
     */
    private boolean isMultipleColumnValueInExepctedOrder(String text1, String text2, String order) {
        return I.amPerforming().comparisonOf().sortAndCompareWebTableWithTwoColumns(getTableColumnCompleteContent(text1, text2),
                order);
    }

    /**
     * get particular table column complete content
     *
     * @param text1
     * @param text2
     * @return
     */
    public Map<Integer, List<Elements>> getTableColumnCompleteContent(String text1, String text2) {
        Map<Integer, List<Elements>> mapWebElements = new HashMap<Integer, List<Elements>>();
        mapWebElements.put(1,
                I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//table/tbody/tr/td//*[@field-name='" + text1 + "']")));
        mapWebElements.put(2,
                I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//table/tbody[contains(@ng-repeat,'row')]/tr/td//*[@field-name='" + text2 + "']//span")));
        return mapWebElements;
    }

    /**
     * @return true if select box or picklist for status column is displayed in edit mode for table
     */
    private Boolean isSelectBoxDisplayedInViewModeForStatusColumnOfTableAtEnhancedGrid() {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(selectBoxOfStatusColumnInEditMode)) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * return true if particular currency column value of enhanced grid table is in
     * ascending/descending order
     *
     * @return
     */
    private boolean isRowValuesGetSortedWithRowGrouping(String order) {
        boolean flag = false;
        try {
            ArrayList<String> obtainedList = new ArrayList<String>();
            List<Elements> rows_table = I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//div[@id='TmpActiveGrantsGridFlexToggle']//table/tbody/tr/td/span[contains(text(),'Organization')]"));
            String str = "";
            for (Elements we : rows_table) {
                str = we.getText().replaceAll("Internal Organization : ", "");
                obtainedList.add(str.toLowerCase());
            }
            ArrayList<String> sortedList = new ArrayList<>();
            for (String s : obtainedList) {
                sortedList.add(s.toLowerCase());
            }
            if (order.equals("Ascending")) {
                Collections.sort(sortedList);
            } else if (order.equals("Descending")) {
                Collections.sort(sortedList, Collections.reverseOrder());
            }
            if (sortedList.equals(obtainedList)) {
                flag = true;
            } else {
                flag = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    private String getValueOfSpecifiedColFromTableHavingColumnNameAs(String rowNumber, String columnName, String flexTableId) {
        int columnValueFromRowInInt = 0;
        int counter = 2;
        By columnHeaders = By.xpath("//div[@id='" + flexTableId + "']//th//span[@ng-bind='fieldLabel']");
        List<Elements> columnList = I.amPerforming().getElementReference().forListOfElements().of(columnHeaders);

        // get the column index of required column.
        for (Elements columnEle : columnList) {
            if (columnEle.getText().equalsIgnoreCase(columnName)) {
                break;
            }
            counter++;
        }

        List<Elements> listOfDataInColumn = I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//div[@id='" + flexTableId + "']//th//span[text()='" + columnName + "']/ancestor::thead/parent::table//tr//td[" + counter + "]/span/field/span"));
        columnValueFromRowInInt = rowNumber.equalsIgnoreCase("last row") ? listOfDataInColumn.size()
                : Integer.parseInt(rowNumber);

        return listOfDataInColumn.get(columnValueFromRowInInt - 1).getText();
    }

    /**
     * return true if expected User Name is displayed/rendered under standard fields  column at enhanced grid table
     *
     * @return
     */
    private boolean isUserNameShownUnderStandardFieldsColumn(String text1, String text2, String userName) {
        boolean flag = false;
        WebElement column1 = I.amPerforming().getElementReference().of(By.xpath("//table/tbody/tr/td//*[@field-name='" + text1 + "']//span/a[contains(text(),'" + userName + "')]"));
        WebElement column2 = I.amPerforming().getElementReference().of(By.xpath("//table/tbody/tr/td//*[@field-name='" + text2 + "']//span/a[contains(text(),'" + userName + "')]"));
        if (column1.getText().equalsIgnoreCase(userName)
                && column2.getText().equalsIgnoreCase(userName)) {
            return true;
        }
        return flag;
    }

    /**
     * return true if expected amount at particular cell inside enhanced grid table
     * is displayed as zero
     *
     * @param value
     * @return
     */
    private boolean isExpectedSumValueAtTotalAdjustedAmountEnhancedGridTableDisplayed(String value) {
        boolean flag = false;
        String strNew = "";
        try {
            List<Elements> rows_table = I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//table/tbody/tr/td//*[@field-name='TotalAdjustedAmount__c']/span"));
            strNew = rows_table.get(2).getText().replaceAll("[$|,|']", "");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return strNew.equalsIgnoreCase(value);
    }

    /**
     * return true if blank is displayed at NUMBER column cell value inside enhanced grid table
     *
     * @param fieldApiNAme
     * @return
     */
    private boolean isBlankValueForNUMBERFieldAtEnhancedGridTableDisplayed(String fieldApiNAme) {
        boolean flag = false;
        try {
            WebElement numberFieldValue = I.amPerforming().getElementReference().of(By.xpath("//table/tbody/tr/td//*[@field-name='" + fieldApiNAme + "']/span"));
            if (numberFieldValue.getText().equalsIgnoreCase("")) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * return true if value is getting saved properly and current date is displayed for date/datetime field at enhanced grid table
     *
     * @param fieldApiNAme
     * @return
     */
    private boolean isCurrentDateDisplayedAtDateAndDateTimeFIeld(String fieldApiNAme) {
        boolean flag = false;
        try {
            WebElement dateAndDateTime = I.amPerforming().getElementReference().of(By.xpath("//table/tbody/tr/td//*[@field-name='" + fieldApiNAme + "']/span"));
            if (dateAndDateTime.getText().equalsIgnoreCase(I.amPerforming().actionToGet().currentDateInDesiredFormat(DateTimeFormatter.ofPattern("M/d/yyyy")))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * return true if over all total amount for Total adjusted amount column cells at enhanced grid parent table is displayed
     *
     * @return
     */
    private boolean isExpectedOverAllTotalSumValueForTotalAdjustedAmountAtEnhancedGridTableDisplayed(String fieldApiName) {
        boolean flag = false;
        double sum = 0.00;
        String subTotal = "";
        try {
            List<Elements> rows_table = I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//table/tbody//tr/td//*[@field-name='" + fieldApiName + "']/span"));
            subTotal = (rows_table.get(rows_table.size() - 1).getText()).replaceAll("[$|,|']", "");
            for (int row = 0; row < rows_table.size() - 1; row++) {
                if (rows_table.get(row).getText() != null) {
                    sum += Double.valueOf((rows_table.get(row).getText()).replaceAll("[$|,|']", ""));
                }
            }
            if (String.format("%.2f", Double.valueOf(subTotal)).equals(String.format("%.2f", sum))) {
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    /**
     * @return true if up Arrow is displayed for multiple field
     */
    private Boolean isUpArrowDisplayedForMultipleField() {
        List<Elements> elements = null;
        try {
            elements = I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//span[contains(text(),'Amount')]/../following-sibling::span/i[contains(@class,'fa-long-arrow-up')]"));
        } catch (Exception e) {
        }
        try {
            for (Elements element : elements) {
                if (element.isDisplayed()) {
                    return true;
                }
            }
        } catch (Exception e) {
        }
        return false;
    }

    /**
     * @return true Over All Total is not displayed for expected column
     * @param fieldApiName
     */
    private Boolean isOverAllTotalIsDisplayed(String fieldApiName) {
        boolean flag = true;
        I.amPerforming().scroll().onPageToSpecificElement(completeTableRowOfEnhancedGrid);
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//field[@field-name='" + fieldApiName + "' and @record='tableCommunicator.overAllTotalValue']/span"))) {
                flag = false;
            }
        } catch (Exception e) {
        }
        return flag;
    }
}