package com.framework.automation.pageobject;

import com.automation.rei.handlers.govgrants;
import com.framework.automation.projectmanager.GovGrantsManager;
import com.testingblaze.actionsfactory.api.ByUsing;
import com.testingblaze.controller.TestingBlazeGlobal;
import com.testingblaze.objects.Elements;
import com.testingblaze.register.I;
import com.testingblaze.report.LogLevel;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class FlexGridPage extends GovGrantsManager {

    /******* "Variables and Locators" *****************/
    private final By programOutcomesRowsInlineMode, enableTotalSumValueForTargetColumn;

    /**
     * Constructor to handle dependency injection and framework library
     */
    public FlexGridPage() {
        programOutcomesRowsInlineMode = By
                .xpath("//div[@id='toggleFGridProgramOutcomes']//table/tbody/tr//*[@mode='edit']");
        enableTotalSumValueForTargetColumn = By.xpath("//div[@id='toggleFGridProgramOutcomes']//b[@class='totalFullDisplayFlex']//span");
    }

    /******* "Key Methods with complete functionality - public" *****************/

    /**
     * assert if header name is correctly displayed insider flex table detail pages
     *
     * @param headerName
     */
    public void assertHeaderNameDisplayed(String headerName) {
        I.amPerforming().scroll().onPageToSpecificElement(By.xpath(
                "//div[@class='panel-heading']//div[contains(@class,'panel-title')]/a[text()='" + headerName + "']"));
        Assert.assertTrue(I.amPerforming().checkToSee().isDisplayed(getFlexGridPanels(headerName)));
    }

    /**
     * @return true if expected sum is displayed for particular column at flex grid
     */
    public Boolean isExpectedOverAllTotalSumValueForNumberOfAwardsAtEnhancedGridTableDisplayed() {
        WebElement targetColumnSum = I.amPerforming().getElementReference().of(enableTotalSumValueForTargetColumn);
        String sumValueInString = String.format("%.2f", getFlexGridSpecificColumnTotalSum());
        boolean flag = true;
        if (I.amPerforming().actionToGet().text(targetColumnSum).equalsIgnoreCase(sumValueInString)) {
            flag = true;
        }
        return flag;
    }

    /**
     * assert quick search is not displayed for Goals objectives / program
     * Performance Management
     */
    public void assertquickSearchDisabled(String category) {
        Assert.assertTrue(programPerformanceMgmtGridViewQuickSearchDisabled(category));
    }

    /**
     * assert edit action open in inline mode
     */
    public void assertActionOpensInInlineMode() {
        Assert.assertTrue(isActionOpensInInlineMode());
    }

    /**
     * return true if enable total will return sum value is as expected for target
     * column
     */
    public void assertTotalSumValueForTargetColumnOfProgramOutcomesFlexGrid() {
        Assert.assertTrue(isExpectedOverAllTotalSumValueForNumberOfAwardsAtEnhancedGridTableDisplayed());
    }

    /**
     * assert if quick search is not displayed as per table id
     *
     * @param tableId
     */
    public void assertquickSearchDisabledForSpecificTable(String tableId) {
        Assert.assertTrue(isQuickSearchDisabledForTableId(tableId));
    }

    /**
     * return true if particular column value of table is in ascending/descending
     * order
     */
    public void assertAscendingORDescendingOrderOfTableColumnValue(String columnName, String order, String tableId) {
        Assert.assertTrue(I.amPerforming().checkToSee().isTableSorted(govgrants.perform().flexTable().getTableSpecificColumnValues(columnName, tableId), order));
    }

    /**
     * return true if particular column value of table is in ascending/descending
     * order for MEGrid
     */
    public void assertAscendingORDescendingOrderOfTableColumnValueForMEGrid(String text, String order, String tableId) {
        Assert.assertTrue(I.amPerforming().checkToSee().isTableSorted(getTableSpecificColumnValuesForMEGrid(text, tableId), order));
    }

    /**
     * assert true if header column name for program outcomes flex table is present
     * -Mass Editable grid
     *
     * @param columnTitleName
     * @param tableId
     */
    public void assertProgramOutcomesFlexTableHeaderColumnName(String columnTitleName, String tableId) {
        Assert.assertTrue(isProgramOutcomesFlexTableColumnHeaderName(columnTitleName, tableId));
    }

    /**
     * assert width size for Program outcomes/toggleFGridProgramOutcomes flex table
     * column is displayed
     *
     * @param columnName
     * @param tableId
     * @param widthSize
     */
    public void assertColumnWidthOfFlexGridSpecificColumn(String columnName, String tableId, String widthSize) {
        Assert.assertTrue(isSpecificWidthOfColumnOfFlexGrid(columnName, tableId, widthSize));
    }

    /**
     * assert width size for ActiveGrantsAwards/Monitoring schedule for all active
     * awards flex table column is displayed
     *
     * @param columnName
     * @param tableId
     * @param widthSize
     */
    public void assertColumnWidthOfActiveGrantsAwardsFlexGridSpecificColumn(String columnName, String tableId,
                                                                            String widthSize) {
        Assert.assertTrue(isSpecificWidthOfColumnOfActiveGrantsAwardsFlexTable(columnName, tableId, widthSize));
    }

    /**
     * assert if specific action is not displayed at budget period flex table
     *
     * @param iconName
     * @param tableId
     * @param colValue
     */
    public void assertActionIconNotDisplayedInsideForGrantorBudgetPeriodflexTable(String iconName, String colValue,
                                                                                  String tableId) {
        try {
            Assert.assertFalse(I.amPerforming().checkToSee().isDisplayed(govgrants.perform().flexTable().getTableActionIcon(iconName, colValue, tableId)));
        } catch (Exception e) {
        }
    }

    /**
     * assert true if Nested table is displayed with changes header name
     */
    public void assertNestedTableHeaderName(String tableId, String changedText) {
        Assert.assertTrue(isNestedTableHeaderChanged(tableId, changedText));
    }

    /**
     * return true if action button inside Mass editable grid table as per name is
     * displayed
     *
     * @param buttonName
     * @param headerName
     */
    public void assertActionButtonInsideMassEditableGridTableIsDisplayed(String buttonName, String headerName) {
        Assert.assertTrue(isActionButtonInsideTopOfMassEditableGridTableDisplayed(buttonName, headerName));
    }

    /**
     * return true if action button inside Nested Navigation grid table as per name
     * is displayed
     *
     * @param buttonName
     * @param headerName
     */
    public void assertActionButtonInsideNestedNAvigationTableIsDisplayed(String buttonName, String headerName) {
        Assert.assertTrue(isActionButtonInsideTopOfNestedNavigationTableDisplayed(buttonName, headerName));
    }

    /**
     * assert true if expected header column name for monitoring schedule for all active grants flex table is coming once in table
     *
     * @param columnTitleName
     * @param tableId
     */
    public void assertActiveGrantsGridHeaderColumnName(String columnTitleName, String tableId) {
        Assert.assertTrue(isActiveGrantsGridTableColumnHeaderName(columnTitleName, tableId));
    }

    /**
     * assert true if lookup field coming up in view mode even after editing record in inline mode inside parent table of ME grid
     *
     * @param lookupFieldName
     */
    public void assertLookupFieldRenderingBehaviourInEditMode(String lookupFieldName) {
        Assert.assertTrue(isLookupFieldComingInViewMode(lookupFieldName));
    }

    /**
     * assert true if expected table is present/displayed
     *
     * @param tableId
     */
    public void assertTableRenderedCompletely(String usage, String tableId) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isTableLoadedProperlyWithTableId(tableId));
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isTableLoadedProperlyWithTableId(tableId)).isTrue();
        }
    }

    /**
     * assert true if expected field displayed in view mode
     */
    public void assertDateTimeFieldMode() {
        Assert.assertTrue(isDateTimeColumnValueDisplayedInViewMode());
    }

    /**
     * assert true if currency unit is displayed under total amount at ME Grid
     */
    public void assertMEGridCurrencyUnitInTotalAmount(String currencyUnit, String rowLabel, String tableID) {
        Assert.assertTrue(isCurrencyUnitDisplaysInTotalAmountAtMEGrid(currencyUnit, rowLabel, tableID));
    }

    /**
     * assert true if row having expected text in child MEgrid
     */
    public void assertTextContainingRowAtChildFlexTabel(String text, String tableId) {
        Assert.assertTrue(isExpectedTextIsDisplayedAtChildFlexTabledRow(text, tableId));
    }

    /**
     * assert if default total is displayed for currency field at  Flex Grid(ME Grid) - parent and child table
     *
     * @param tableId
     */
    public void assertDefaultTotalAtFlexGrid(String usage, String tableId) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isDefaultTotalDisplayedAtFlexGrid(tableId));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isDefaultTotalDisplayedAtFlexGrid(tableId));
        }
    }

    /**
     * assert if default total is not displayed for currency field at active grants Flex Grid(N2G Grid)
     */
    public void assertDefaultTotalAtActiveGrantsFlexGrid() {
        Assert.assertFalse(isDefaultTotalDisplayedAtActiveGrantsFlexGrid());
    }

    /**
     * assert true if undo action displayed by inline editing a record at Flex Grid(ME Grid)
     *
     * @param tableId
     */
    public void assertUndoActionInsideTable(String tableId) {
        Assert.assertTrue(isUndoActionDisplayedInsideTable(tableId));
    }

    /**
     * assert true if expected format is displayed at overall total row inside ME Grid
     *
     * @param format
     * @param fieldName
     * @param tableId
     */
    public void assertTotalFieldFormatInsideMeGrid(String usage, String format, String fieldName, String tableId) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isTotalFieldFormatDisplayedInsideMeGrid(format, fieldName, tableId));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isTotalFieldFormatDisplayedInsideMeGrid(format, fieldName, tableId));
        }
    }

    /**
     * return true if actions are aligned inside enhanced grid/table
     *
     * @param tableId
     */
    public void assertActionsAreAlignedInMeGridTable(String tableId) throws IOException {
        TestingBlazeGlobal.setVariable("highlightElements", "off");
        WebElement actionsAligned = I.amPerforming().getElementReference().of(By.xpath("//div[@id='" + tableId + "']//table[not(@id='childTableId')]/tbody/tr/td[contains(@class,'actionColumn')]"));
        I.amPerforming().waitFor().makeThreadSleep(1000);
        I.amPerforming().snapShotTo().takeElementScreenShot(actionsAligned, "captureActions");
        Assert.assertTrue(I.amPerforming().comparisonOf().image().isImagesSame("target/Automation-Report/captureActions.png", "src/main/resources/actionsAtMeGridTable.png"));
    }

    /**
     * assert true if total record count is displayed at bottom of table and it is centrally aligned -  Flex Grid(ME Grid)
     *
     * @param tableId
     */
    public void assertTextIsCentrallyAlignedAtBottomOfTable(String tableId, Boolean isParent) {
        Assert.assertTrue(isTextDisplayedCentrallyAlignedAtBottomOfTable(tableId, isParent));
    }

    /**
     * assert true if loader is not displayed at flex table list view
     *
     * @param listView
     */
    public void assertLoaderAtFlexTableListView(String listView) {
        Assert.assertTrue(isLoaderDisplayedAtFlexTableListView(listView));
    }

    /**
     * assert true if currency field values are displayed as right aligned inside ME Grid flex table
     *
     * @param tableId
     * @author - ashwini.mahore
     */
    public void assertCurrencyFieldValuesAreRightAlignedInsideFlexTable(String tableId) {
        Assert.assertTrue(isCurrencyFieldValueDisplayedRightAlignedInsideFlexTable(tableId));
    }

    /**
     * assert true if currency total/sub total displayed in an expected format like $n,nnn,nnn.nn inside me grid
     *
     * @param tableId
     * @param fieldName
     * @author - ashwini.mahore
     */
    public void assertCurrencyTotalWithCorrectFormattingIsDisplayed(Boolean isTotal, String tableId, String fieldName) {
        Assert.assertTrue(isCurrencyCurrencyTotalWithCorrectFormattingDisplayed(isTotal, tableId, fieldName));
    }

    /**
     * assert true if number total displayed in an expected format like n,nnn,nnn inside me grid
     *
     * @param tableId
     * @param fieldName
     * @author - ashwini.mahore
     */
    public void assertNumberTotalWithoutDecimalIsDisplayed(String fieldName, String tableId) {
        Assert.assertTrue(isNumberFieldTotalWithCorrectFormattingDisplayed(fieldName, tableId));
    }

    /**
     * get overall total at me grid parent flex table
     *
     * @param tableId
     * @param fieldName
     * @author ashwini.mahore
     */
    public WebElement getTotalValueFromLastRow(String tableId, String fieldName) {
        return I.amPerforming().getElementReference().of(ByUsing.xpath("//div[@id='" + tableId + "']//span[text()='" + fieldName + "']/ancestor::tbody/following-sibling::tfoot//span[contains(@ng-bind,'calculateTotal')]"));
    }

    /**
     * get sub total at me grid parent flex table
     *
     * @param tableId
     * @param fieldName
     * @author ashwini.mahore
     */
    public WebElement getSubTotalValueFromLastRow(String tableId, String fieldName) {
        return I.amPerforming().getElementReference().of(By.xpath("//div[@id='" + tableId + "']//span[text()='" + fieldName + "']/ancestor::tr/following-sibling::tr[contains(@class,'subTotalRow')]//td//b/span"));
    }


    /*********
     * "Local Methods with complete functionality - private"
     *****************/

    /**
     * validate if quick search is displayed or not
     *
     * @return: true if it is not displayed
     */
    private boolean programPerformanceMgmtGridViewQuickSearchDisabled(String category) {
        boolean flag = true;
        I.amPerforming().scroll().onPageToSpecificElement(By.xpath("//div[@id='flexGridHeaderButtonsProgramPerformanceMgmtGridView']"));
        try {
            if (I.amPerforming().checkToSee().isDisplayed(getSpecificQuickSearch(category))) {
                flag = false;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @return true if inline mode is displayed for actions at flex grid
     */
    private Boolean isActionOpensInInlineMode() {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(programOutcomesRowsInlineMode)) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @return total sum value for specific target column inside flex grid
     */
    private double getFlexGridSpecificColumnTotalSum() {
        WebElement row = I.amPerforming().getElementReference().of(By.xpath("//td[descendant-or-self::*[text()='Citizen']]//ancestor::tr[1]"));
        Set<String> headerTitles = new HashSet<String>();
        headerTitles.add("Target");
        Map<String, Integer> columnMapping = govgrants.perform().flexTable().constructColumnMapping(row, headerTitles);
        System.out.println("The column number was: " + columnMapping.get("Target"));
        By columnSelector = By
                .xpath("//div[@id='toggleFGridProgramOutcomes']//table//tr" + "//td[not(contains(@class, 'ng-hide'))]["
                        + columnMapping.get("Target") + "]" + "//span//field/span");
        double total = 0;
        for (Elements columnValue : I.amPerforming().getElementReference().forListOfElements().of(columnSelector)) {
            try {
                total += Double.parseDouble(columnValue.getText());
            } catch (Exception e) {
                I.amPerforming().updatingOfReportWith().write(LogLevel.PROJECT_LAYER_ERROR, "An exception occured with column value '" + columnValue.getText() + "'");
                throw e;
            }
        }
        System.out.println("Total : " + total);

        return total;
    }

    /**
     * validate if quick search is displayed or not specific to table
     *
     * @return: true if it is not displayed
     */
    private boolean isQuickSearchDisabledForTableId(String tableId) {
        boolean flag = true;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(govgrants.perform().quickSearch().getTableSpecificQuickSearch(tableId))) {
                flag = false;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @return false if element is not displayed for Program outcomes flex table
     */
    private Boolean isProgramOutcomesFlexTableColumnHeaderName(String columnTitleName, String tableId) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(govgrants.perform().flexTable().getSpecificElementFromTableHeader(tableId, columnTitleName))
                    || I.amPerforming().checkToSee().isEnabled(govgrants.perform().flexTable().getSpecificElementFromTableHeader(tableId, columnTitleName))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
            flag = false;
        }
        return flag;
    }

    /**
     * @return true if expected width of specified column is displayed for flex grid
     */
    private Boolean isSpecificWidthOfColumnOfFlexGrid(String columnName, String tableId, String widthSize) {
        TestingBlazeGlobal.setVariable("highlightElements", "off");
        boolean flag = false;
        WebElement columnWidth = I.amPerforming().getElementReference().of(By.xpath(
                "//div[@id='" + tableId + "']//tr//th//span[contains(text(),'" + columnName + "')]/ancestor::th"));
        if (columnWidth.getAttribute("style").contains(widthSize)) {
            flag = true;
        }
        return flag;
    }

    /**
     * @return true if expected width of specified column is displayed for
     * ActiveGrantsAwards flex table
     */
    private Boolean isSpecificWidthOfColumnOfActiveGrantsAwardsFlexTable(String columnName, String tableId,
                                                                         String widthSize) {
        boolean flag = false;
        WebElement columnWidth = I.amPerforming().getElementReference().of((By.xpath("//div[@id='" + tableId
                + "']//tr//th//span[contains(text(),'" + columnName + "')]/ancestor::th[@width='" + widthSize + "']")));
        if (I.amPerforming().checkToSee().isDisplayed(columnWidth)) {
            flag = true;
        }
        return flag;
    }

    /**
     * @return true if Nested table is displayed with changed header name
     */
    private Boolean isNestedTableHeaderChanged(String tableId, String changedText) {
        boolean flag = false;
        WebElement changedHeader = I.amPerforming().getElementReference().of(By.xpath("//div[@id='" + tableId + "']//td//*[text()='" + changedText + "']"));
        if (I.amPerforming().checkToSee().isDisplayed(changedHeader)) {
            flag = true;
        }
        return flag;
    }

    /**
     * return true if action button inside Mass editable table is displayed
     *
     * @param buttonName
     * @param headerName
     * @return
     */
    private boolean isActionButtonInsideTopOfMassEditableGridTableDisplayed(String buttonName, String headerName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//*[@title='" + headerName + "' or text()='" + headerName
                    + "']//following-sibling::div//button[contains(@title,'" + buttonName + "') or @text()='"
                    + buttonName + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    /**
     * return true if action button inside Nested Navigation table is displayed
     *
     * @param buttonName
     * @param headerName
     * @return
     */
    private boolean isActionButtonInsideTopOfNestedNavigationTableDisplayed(String buttonName, String headerName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//*[@title='" + headerName + "' or text()='"
                    + headerName
                    + "']/ancestor::div[contains(@class,'header-title') or 1]/following-sibling::div//button[contains(@title,'"
                    + buttonName + "') or @text()='" + buttonName + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    /**
     * @return specific column values inside table while passing column name for MEGrid
     */
    private List<Elements> getTableSpecificColumnValuesForMEGrid(String text, String tableId) {
        WebElement row = I.amPerforming().getElementReference().of(By.xpath("//div[@id='" + tableId + "']//table//tbody[contains(@class,'tbody-no-border-top')]//span[text()='BP-01']/ancestor::tr/following-sibling::tr//tbody//tr"));
        Set<String> headerTitles = new HashSet<String>();
        headerTitles.add(text);
        Map<String, Integer> columnMapping = govgrants.perform().flexTable().constructColumnMapping(row, headerTitles);
        System.out.println("The column number was: " + columnMapping.get(text));
        By columnSelector = By
                .xpath("//div[@id='" + tableId + "']//table//tbody[contains(@class,'tbody-no-border-top')]//span[text()='BP-01']/ancestor::tr[@class='table-striped']/following-sibling::tr//tbody//tr[not(contains(@class,'flexTableHeader'))]//td[" + columnMapping.get(text) + "]//a");
        return I.amPerforming().getElementReference().forListOfElements().of(columnSelector);
    }

    /**
     * @return true if expected header size is equal to one for Active grants grid table
     */
    private Boolean isActiveGrantsGridTableColumnHeaderName(String columnTitleName, String tableId) {
        boolean flag = false;
        int columnHeaderName = 0;
        columnHeaderName = I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//div[@id='" + tableId + "']//div/table/thead/tr/th//span[@title='" + columnTitleName + "' or text()='" + columnTitleName + "'] | //div[@id='" + tableId + "']//tr//th//span[contains(text(),'" + columnTitleName + "')]")).size();
        try {
            if (columnHeaderName == 1) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
            flag = false;
        }
        return flag;
    }

    /**
     * @return true if lookup field at parent level of ME grid is in view mode
     */
    private Boolean isLookupFieldComingInViewMode(String lookupFieldNAme) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//field//a[contains(text(),'" + lookupFieldNAme + "')]"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @return true if table loaded properly
     */
    private Boolean isTableLoadedProperlyWithTableId(String tableId) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//div[@class ='panel-body collapse in' and @id='" + tableId + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @return true if modified value of date time field is displayed in view mode
     */
    private Boolean isDateTimeColumnValueDisplayedInViewMode() {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//td//span//field//span[contains(@ng-bind,'getDateTime')]"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @return true if total amount contains currencyUnit in ME Grid
     */
    private Boolean isCurrencyUnitDisplaysInTotalAmountAtMEGrid(String currencyUnit, String rowLabel, String tableID) {
        boolean flag = false;
        String str = I.amPerforming().actionToGet().text(By.xpath("//div[@id='" + tableID + "']//table//tr//td//span[text()='" + rowLabel + "']/ancestor::td/following-sibling::td//b/span | //div[@id='" + tableID + "']//table//td//span/b[text()='" + rowLabel + "']/ancestor::td/following-sibling::td//b/span"));
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
     * @return true if expected text is displayed inside child grid rows
     */
    private Boolean isExpectedTextIsDisplayedAtChildFlexTabledRow(String text, String tableId) {
        boolean flag = false;
        String str = I.amPerforming().actionToGet().text(By.xpath("//div[@id='" + tableId + "']//div/table/tfoot"));
        try {
            if (str.equalsIgnoreCase(text)) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @return true if default total is displayed for currency field at  Flex Grid(ME Grid) - parent and child table
     */
    private Boolean isDefaultTotalDisplayedAtFlexGrid(String tableId) {
        boolean flag = false;
        By enableTotalSumValueForTargetColumn = By.xpath("//div[@id='" + tableId + "']//b[@class='totalFullDisplayFlex']//span |" +
                "//div[@id='" + tableId + "']//tbody//tfoot//tr");
        try {
            if (I.amPerforming().checkToSee().isDisplayed(enableTotalSumValueForTargetColumn)) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @return false if default total is not displayed inside for currency field at N2G Grid
     */
    private Boolean isDefaultTotalDisplayedAtActiveGrantsFlexGrid() {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//td[contains(@class,'headerCell')]//span"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @param tableId
     * @return true if undo action displayed by inline editing a record at Flex Grid(ME Grid)
     */
    private Boolean isUndoActionDisplayedInsideTable(String tableId) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//div[@id='" + tableId + "']//a[@title='Undo']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @param format
     * @param fieldName
     * @param tableId
     * @return true if if expected format is displayed at overall total row inside ME Grid
     */
    private Boolean isTotalFieldFormatDisplayedInsideMeGrid(String format, String fieldName, String tableId) {
        boolean flag = false;
        try {
            if (getTotalValueFromLastRow(fieldName, tableId).getText().contains(format)) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @param tableId
     * @return true if total record count is displayed at bottom of table and it is centrally aligned -  Flex Grid(ME Grid)
     */
    private Boolean isTextDisplayedCentrallyAlignedAtBottomOfTable(String tableId, Boolean isParent) {
        boolean flag = false;
        WebElement getTotalRecordCountFromFooter = I.amPerforming().getElementReference().of(By.xpath("//div[@id='" + tableId + "']//div[contains(@class,'panel-footer')]"));
        WebElement getTotalRecordCountFromChildFooter = I.amPerforming().getElementReference().of(By.xpath("//div[@id='" + tableId + "']//div[@class='contentCenterH']"));

        if (isParent) {
            if (getTotalRecordCountFromFooter.getCssValue("text-align").equalsIgnoreCase("right")) {
                return true;
            }
        } else if (getTotalRecordCountFromChildFooter.getCssValue("text-align").equalsIgnoreCase("center")) {
            return true;
        }
        return flag;
    }

    /**
     * @param listView
     * @return true if loader is not displayed at flex table list view
     * @author ashwini.mahore
     */
    private Boolean isLoaderDisplayedAtFlexTableListView(String listView) {
        boolean flag = true;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//a[text()='" + listView + "']/following-sibling::span//img[@alt='loading Icon']"))) {
                flag = false;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * assert true if currency field values are displayed as right aligned inside ME Grid flex table
     *
     * @param tableId
     * @author - ashwini.mahore
     */
    private Boolean isCurrencyFieldValueDisplayedRightAlignedInsideFlexTable(String tableId) {
        boolean flag = false;
        WebElement getCurrencyFieldValue = I.amPerforming().getElementReference().of(By.xpath("//div[@id='" + tableId + "']//td//span[contains(@class,'pull-right')]"));
        try {
            if (getCurrencyFieldValue.isDisplayed()) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * assert true if if currency total/sub total displayed in an expected format like $n,nnn,nnn.nn inside me grid
     *
     * @param tableId
     * @param fieldName
     * @author - ashwini.mahore
     */
    private Boolean isCurrencyCurrencyTotalWithCorrectFormattingDisplayed(Boolean isTotal, String tableId, String fieldName) {
        boolean flag = false;
        String currencyInStandardFormat = "^\\$\\d{1,3}(,?\\d{3})*(\\.\\d{2})?$";
        if (isTotal) {
            String totalCurrency = getTotalValueFromLastRow(tableId, fieldName).getText();
            if (totalCurrency.matches(currencyInStandardFormat)) {
                return true;
            }
        } else {
            String subTotalCurrency = getSubTotalValueFromLastRow(tableId, fieldName).getText();
            if (subTotalCurrency.matches(currencyInStandardFormat)) {
                return true;
            }
        }
        return flag;
    }

    private Boolean isNumberFieldTotalWithCorrectFormattingDisplayed(String fieldName, String tableId) {
        boolean flag = false;
        String numberInStandardFormat;
        String totalCurrency = getTotalValueFromLastRow(tableId, fieldName).getText();
        numberInStandardFormat = "^\\d{1,3}(?:,\\d{3})*$";
        if (totalCurrency.matches(numberInStandardFormat)) {
            return true;
        }
        return flag;
    }
}