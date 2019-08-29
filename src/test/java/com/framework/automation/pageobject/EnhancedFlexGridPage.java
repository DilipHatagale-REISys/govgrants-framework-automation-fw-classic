package com.framework.automation.pageobject;

import com.framework.automation.projectmanager.GovGrantsManager;
import eyethink.automation.bots.Register.EyeThink;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.math.BigDecimal;
import java.util.*;

public class EnhancedFlexGridPage extends GovGrantsManager {
    /******* "Variables and Locators" *****************/
    private final By reachOutToEnhancedGridCollapse, searchInputEnhancedGrid, completeTableRowOfEnhancedGrid,
            selectRecordCheckBoxForEnhancedGrid, currentBudgetPeriodEndDate, scrollToActionColumn,
            awardObligatedAmountSpecificCells, idColumnForChildFlexTable, numberOfAwardscells,
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
        awardObligatedAmountSpecificCells = By
                .xpath("//table/tbody/tr/td//*[@field-name='TotalAwardObligatedAmount__c']");
        idColumnForChildFlexTable = By.xpath("//field[@field-name='Name']//input[@type='text']");
        numberOfAwardscells = By.xpath("//table/tbody/tr/td//*[@field-name='NumberofAwards__c']");
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
        EyeThink.core().JavaScript().moveToElement(EyeThink.core().findMyElement().getElement(By.xpath("//div[@id='flexGridEnhanced1']//span[contains(text(),'" + blockTitle + "')]/../../..//span[contains(@class,'fa-info')]"), false));
    }

    /**
     * get complete rows of enhanced flex grid- This method is used to return parent
     * enhanced grid table rows so created separately-It is different from flex
     * table
     *
     * @return
     */
    public List<WebElement> getCompleteTableRowOfEnhancedGrid() {
        EyeThink.core().findMyElement().getElement(completeTableRowOfEnhancedGrid);
        return EyeThink.core().findMyElement().getElements(completeTableRowOfEnhancedGrid);
    }

    /**
     * click on help text inside enhanced grid table specific to internal
     * organization column
     *
     * @param columnTitle
     */
    public void getHelpTextAtEnhancedGridTableSpecificColumn(String columnTitle) {
        EyeThink.core().JavaScript().moveToElement(EyeThink.core().findMyElement().getElement(By.xpath("//th//span[@title='" + columnTitle + "' or text()='" + columnTitle + "']/../..//helpicon//span[contains(@class,'fa-info')]"), false));
    }

    /**
     * click on text area and enter values for multiple rows for particular column
     * at enhanced grid
     *
     * @param tableId
     * @param enteredValue
     */
    public void enterValueForTextareaAtEnhancedGridColumn(String enteredValue, String tableId) {
        List<WebElement> textField = EyeThink.core().findMyElement()
                .getElements(By.xpath("//div[@id='" + tableId + "']//tbody//td//textarea"));
        for (WebElement inputField : textField) {
            System.out.println(inputField.getTagName());
            inputField.clear();
            inputField.sendKeys(enteredValue);
        }
    }

    /**
     * assert true if changed icon css of enhanced grid table edit action is
     * displayed
     *
     * @param iconTitle
     */
    public void assertEnhancedGridTableEditActionIconDisplayed(String columnTitle, String iconTitle) {
        EyeThink.core().JavaScript().scrollpageToSpecificElement(scrollToActionColumn);
        Assert.assertTrue(EyeThink.core().findMyElement().getElement(By.xpath("//td//*[@title = '" + columnTitle + "' or text() = '" + columnTitle
                + "']/ancestor::tr[1]//td//a[@title = '" + iconTitle
                + "']//i[contains(@class,'fa fa-external-link')]"))
                .isDisplayed());
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
            EyeThink.core().JavaScript().scrollpageToSpecificElement(completeTableRowOfEnhancedGrid);
        } catch (Exception e) {
        }
        Assert.assertFalse(isEnhancedFlexGridRowsCountDisabled(text, tableId));
    }

    /**
     * assert true if header column name is present inside enhanced flex grid
     *
     * @param headerColumnName
     */
    public void assertEnhancedFlexGridHeaderColumnName(String headerColumnName) {
        Assert.assertTrue(isEnhancedFlexGridColumnHeaderName(headerColumnName));
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
    public void assertDisableAdvanceFilterFromEnhancedGrid(String tableId) {
        Assert.assertTrue(isAdvanceFilterDisabledFromEnhancedGrid(tableId));
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
     *
     * @param value
     */
    public void assertCellValueAtEnhancedGrid(BigDecimal value) {
        Assert.assertTrue(isExpectedSumValueAtEnhancedGridTableDisplayed(value));
    }

    /**
     * return true if particular column value is in ascending order
     */
    public void assertAscendingOrderOfEnhancedGridColumnValue(String text, String order) {
        Assert.assertTrue(isColumnValueInExectedOrder(text, order));
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
            EyeThink.core().JavaScript().scrollpageToSpecificElement(completeTableRowOfEnhancedGrid);
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
    public void assertOverAllTotalCellValueForNumberOfAwardsAtEnhancedGrid() {
        Assert.assertTrue(isExpectedOverAllTotalSumValueForNumberOfAwardsAtEnhancedGridTableDisplayed());
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

    /*********
     * "Local Methods with complete functionality - private"
     *****************/

    /**
     * Boolean status of advance filter option from program/enhanced flex grid
     *
     * @param tableId
     */
    private Boolean isAdvanceFilterDisabledFromEnhancedGrid(String tableId) {
        boolean flag = false;
        try {
            if (EyeThink.saas().phasePannel().getAdvanceFilterItem(tableId).isDisplayed()) {
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
            if (EyeThink.saas().phasePannel().getPanelTitleWithTableId(tableId, titleName).isDisplayed()) {
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
            EyeThink.core().JavaScript().scrollpageToSpecificElement(reachOutToEnhancedGridCollapse);
            if (EyeThink.core().findMyElement().getElement(searchInputEnhancedGrid).isDisplayed()) {
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
            if (EyeThink.saas().flexTable().getFooterElementsFromTable(text, tableId).isDisplayed()) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @return false if element is not displayed
     */
    private Boolean isEnhancedFlexGridColumnHeaderName(String titleName) {
        boolean flag = false;
        try {
            if (EyeThink.saas().flexTable().getSpecificElementFromTableHeader(titleName).isDisplayed()
                    || EyeThink.saas().flexTable().getSpecificElementFromTableHeader(titleName).isEnabled()) {
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
            EyeThink.core().JavaScript().scrollElementToPageDetailCenter(reachOutToEnhancedGridCollapse);
            for (WebElement element : getCompleteTableRowOfEnhancedGrid()) {
                if (element.findElement(selectRecordCheckBoxForEnhancedGrid).isDisplayed()) {
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
        if (EyeThink.core().switchTo().getWindowsHandlers().size() == 1) {
            sameTabFound = true;
        }
        return sameTabFound;
    }

    /**
     * @return true if bottom element is displayed at enhanced grid
     */
    private boolean isEnhancedGridBottomElementEnabled(String text, String tableId) {
        EyeThink.core().JavaScript().scrollPageDocumentJS("PageDown", 0, 0);
        boolean flag = false;
        try {
            if (EyeThink.saas().flexTable().getFooterElementsFromTable(text, tableId).isDisplayed()
                    || EyeThink.saas().flexTable().getFooterElementsFromTable(text, tableId).isEnabled()) {

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
            int listSize = EyeThink.saas().flexTable().getCompleteTableRow(tableId).size();
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
            EyeThink.core().JavaScript().scrollpageToSpecificElement(reachOutToEnhancedGridCollapse);
            if (EyeThink.saas().flexTable().getSpecificElementFromTableHeader(titleName).getText()
                    .equalsIgnoreCase(titleName)) {
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
            if (EyeThink.saas().flexTable().getSpecificElementFromTableHeader(tableId, columnTitleName).getText()
                    .equalsIgnoreCase(columnTitleName)) {
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
            if (EyeThink.core().findMyElement().getElement(EyeThink.saas().flexTable().getFlexTableColumn(cellValue)).getText()
                    .equalsIgnoreCase(cellValue)) {
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
            EyeThink.core().JavaScript().scrollpageToSpecificElement(reachOutToEnhancedGridCollapse);
            EyeThink.saas().flexTable().slideNestedFlexTable("TmpActiveGrantsGridFlexToggle", 150);
            if (EyeThink.core().findMyElement().getElement(currentBudgetPeriodEndDate).isDisplayed()) {
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
            if (EyeThink.core().findMyElement().getElement(By.xpath("//*[@title='" + headerName + "' or text()='"
                    + headerName
                    + "']/ancestor::div[contains(@class,'header-title') or 1]/following-sibling::div/action//button[contains(@title,'"
                    + buttonName + "') or @text()='" + buttonName + "']")).isDisplayed()) {
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
     * @param value
     * @return
     */
    private boolean isExpectedSumValueAtEnhancedGridTableDisplayed(BigDecimal value) {
        boolean flag = false;
        try {
            EyeThink.core().JavaScript().scrollpageToSpecificElement(awardObligatedAmountSpecificCells);
            List<WebElement> rows_table = EyeThink.core().findMyElement().getElements(awardObligatedAmountSpecificCells);
            String str = "";
            String strNew = "";
            BigDecimal bd = new BigDecimal(0);
            Integer counter = 0;

            for (int row = 0; row < rows_table.size(); row++) {
                if (row <= 2) {
                    str = rows_table.get(row).getText();
                    strNew = str.replaceAll("[$|,|']", "");
                    bd = new BigDecimal(strNew);
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
     * return true if particular column value of enhanced grid table is in
     * ascending/descending order
     *
     * @return
     */
    private boolean isColumnValueInExectedOrder(String text, String order) {
        boolean flag = false;
        try {
            ArrayList<String> obtainedList = new ArrayList<>();
            List<WebElement> rows_table = getTableColumnCompleteContent(text);
            for (WebElement we : rows_table) {
                obtainedList.add(we.getText().toLowerCase());
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

    /**
     * get particular table column complete content
     *
     * @param text
     * @return
     */
    public List<WebElement> getTableColumnCompleteContent(String text) {
        return EyeThink.core().findMyElement().getElements(By.xpath("//table/tbody/tr/td//*[@field-name='" + text + "']"));
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
        if (getCompleteTableAction(iconName, tableId).get(sequenceNumber).getAttribute("title").contains(iconName)) {
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
    public List<WebElement> getCompleteTableAction(String iconName, String tableId) {
        EyeThink.core().findMyElement().getElement(By.xpath("//div[@id='" + tableId + "']//action/span//a"));
        By actionItem = By.xpath("//div[@id='" + tableId + "']//action/span//a");
        return EyeThink.core().findMyElement().getElements(actionItem);
    }

    /**
     * Boolean status of menu icon from program child flex table(Grid)
     *
     * @param panelTitleName
     */
    private Boolean isMenuIconDisabledInChildFlexTable(String panelTitleName) {
        boolean flag = false;
        try {
            if (EyeThink.core().findMyElement().getElement(EyeThink.saas().phasePannel().getParallelBarsLocator(panelTitleName))
                    .isDisplayed()) {
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
            EyeThink.core().JavaScript().scrollpageToSpecificElement(reachOutToEnhancedGridCollapse);
            if (EyeThink.core().findMyElement().getElement(By.xpath("//div[@id='" + childTableId + "']/div[1]//input"))
                    .isDisplayed()) {
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
        return EyeThink.core().findMyElement().getElement(By.xpath("//div[@id='" + tableId + "']//span[contains(text(),'" + footerName + "')]"))
                .isDisplayed();
    }

    /**
     * check if Record Selection option is Enabled or not
     *
     * @return
     */
    private Boolean isRecordSelectionEnabledOnChildFlexTable() {
        return EyeThink.core().findMyElement().getElement(By.xpath("//input[@id='TmpGrantorActiveAwardsGridcheckBox']")).isDisplayed();
    }

    /**
     * @return true if changed cell value for Id column is displayed for enhaced
     * grid child flex table
     */
    private Boolean isInputTextBoxIsDisplayedForIdColumnOfChildFlexTableAtEnhancedGrid() {
        boolean flag = false;
        try {
            EyeThink.core().JavaScript().scrollpageToSpecificElement(reachOutToEnhancedGridCollapse);
            if (EyeThink.core().findMyElement().getElement(idColumnForChildFlexTable).isDisplayed()) {
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
            List<WebElement> rows_table = EyeThink.saas().flexTable().getCompleteTableRow(tableId);
            for (WebElement we : rows_table) {
                obtainedList.add(we.getText());
            }
            if (obtainedList.contains(text)) {
                flag = true;
            } else {
                flag = false;
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
            EyeThink.core().JavaScript().scrollpageToSpecificElement(numberOfAwardscells);
            List<WebElement> rows_table = EyeThink.core().findMyElement().getElements(numberOfAwardscells);
            String sumStr = "";
            double rowTotal = 0.00;
            double sum = 0.00;
            for (int row = 0; row <= rows_table.size(); row++) {
                if (row <= rows_table.size() - 2) {
                    if (rows_table.get(row).getText() != null) {
                        sum += Double.valueOf(rows_table.get(row).getText());
                    }
                }
                if (rows_table.size() == row) {
                    rowTotal = Double.valueOf(rows_table.get(row - 1).getText());
                }
            }
            String numberAsString = String.format("%.2f", sum);
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
            if (EyeThink.core().findMyElement().getElement(By.xpath(
                    "//div[contains(@class, 'alert alert-warning displayFlexOnly alertMessage')]/span[contains(text(),'"
                            + error + "')]"))
                    .isDisplayed()) {
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
        WebElement cellContent = EyeThink.core().findMyElement()
                .getElement(By.xpath("//div[@id='" + tableId + "']//span[@title='" + cellValue + "' or text()='"
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
        EyeThink.core().WaitFor().makeThreadSleep(4000);
        try {
            EyeThink.core().JavaScript().scrollpageToSpecificElement(obligatedAmountSpecificCellsAtChildTable);
            List<WebElement> rows_table = EyeThink.core().findMyElement()
                    .getElements(obligatedAmountSpecificCellsAtChildTable);
            double sum = 0.00;
            double totalVal = Double.valueOf(rows_table.get(rows_table.size() - 1).getText().replaceAll("[$|,|']", ""));
            for (int row = 0; row < rows_table.size() - 1; row++) {
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
    private boolean isExpectedOverAllTotalSumValueForNumberOfAwardsAtEnhancedGridTableDisplayed() {
        boolean flag = false;
        try {
            EyeThink.core().JavaScript().scrollpageToSpecificElement(numberOfAwardscells);
            List<WebElement> rows_table = EyeThink.core().findMyElement().getElements(numberOfAwardscells);
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
        WebElement editedContent = EyeThink.core().findMyElement()
                .getElement(By.xpath("//div[@id='" + tableId + "']//td//*[@title = '" + columnValue + "' or text() = '"
                        + columnValue + "']/ancestor::tr[1]//td//span[contains(text(),'" + enteredValue + "')]"));
        try {
            if (editedContent.getText().equals(enteredValue)) {
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
            List<WebElement> cellsValue = EyeThink.core().findMyElement()
                    .getElements(By.xpath("//table/tbody/tr/td//*[@field-name='" + columnValue + "']//span//span | //table/tbody/tr/td//*[@field-name='" + columnValue + "']//span"));
            for (WebElement el : cellsValue) {
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
        return EyeThink.core().compare().sortAndCompareWebTableWithTwoColumns(getTableColumnCompleteContent(text1, text2),
                order);
    }

    /**
     * get particular table column complete content
     *
     * @param text1
     * @param text2
     * @return
     */
    public Map<Integer, List<WebElement>> getTableColumnCompleteContent(String text1, String text2) {
        Map<Integer, List<WebElement>> mapWebElements = new HashMap<Integer, List<WebElement>>();
        mapWebElements.put(1,
                EyeThink.core().findMyElement().getElements(By.xpath("//table/tbody/tr/td//*[@field-name='" + text1 + "']")));
        mapWebElements.put(2,
                EyeThink.core().findMyElement().getElements(By.xpath("//table/tbody/tr/td//*[@field-name='" + text2 + "']//span")));
        return mapWebElements;
    }

    /**
     * @return true if select box or picklist for status column is displayed in edit mode for table
     */
    private Boolean isSelectBoxDisplayedInViewModeForStatusColumnOfTableAtEnhancedGrid() {
        boolean flag = false;
        try {
            if (EyeThink.core().findMyElement().getElement(selectBoxOfStatusColumnInEditMode).isDisplayed()) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }
}