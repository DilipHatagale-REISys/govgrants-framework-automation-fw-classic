package com.framework.automation.steps;

import com.framework.automation.pageobject.FlexGridPage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import java.io.IOException;


public class FlexGridSteps {
    FlexGridPage flexGridPage;

    public FlexGridSteps() {
        flexGridPage = new FlexGridPage();
    }

    @When("^I record webelement at table \"([^\"]*)\" for column \"([^\"]*)\"$")
    public void getRecordOfTableColumn(String tableId, String columnName) {
        flexGridPage.recordWebElement(tableId, columnName);
    }

    @And("^I click on page navigation arrow \"([^\"]*)\" for table id \"([^\"]*)\"$")
    public void ClickOnPaginationArrow(String flexTableId, String NextPrevious) {
        flexGridPage.performClickOnPaginationArrow(flexTableId, NextPrevious);
    }

    @And("^I click on \"([^\"]*)\" column header inside table with id \"([^\"]*)\"$")
    public void ClickOnSpecificTableHeaderColumn(String titleName, String tableId) {
        flexGridPage.performClickOnSpecificTableColumnHeader(tableId, titleName);
    }

    @Then("^I see \"([^\"]*)\" as header$")
    public void assertPPMGVPanelheader(String headerName) {
        flexGridPage.assertHeaderNameDisplayed(headerName);
    }

    @Then("^I see quick search option disabled for \"([^\"]*)\"$")
    public void assertPPMGVQuickSearchNotDisplayed(String category) {
        flexGridPage.assertquickSearchDisabled(category);
    }

    @Then("^I see inline edit options is displayed for flex grid$")
    public void assertTextInputBoxForIdColumn() {
        flexGridPage.assertActionOpensInInlineMode();
    }

    @Then("^I see enable total sum for target column at program outcomes flex grid$")
    public void assertOverAllTotalCellValueAtNumberOfAwardsColumn() {
        flexGridPage.assertTotalSumValueForTargetColumnOfProgramOutcomesFlexGrid();
    }

    @Then("^I see quick search option disabled for table \"([^\"]*)\"$")
    public void assertQuickSearchOptionDisabledForSpecifiedTable(String tableId) {
        flexGridPage.assertquickSearchDisabledForSpecificTable(tableId);
    }

    @Then("^I see column \"([^\"]*)\" value is in \"([^\"]*)\" order for table id \"([^\"]*)\"$")
    public void assertColumnValueOfTableInAscendingORDescendingOrder(String text, String order, String tableId) {
        flexGridPage.assertAscendingORDescendingOrderOfTableColumnValue(text, order, tableId);
    }

    @Then("^I see column \"([^\"]*)\" value is in \"([^\"]*)\" order for table id \"([^\"]*)\" for MEGrid$")
    public void assertColumnValueOfTableInAscendingORDescendingOrderForMEGrid(String text, String order, String tableId) {
        flexGridPage.assertAscendingORDescendingOrderOfTableColumnValueForMEGrid(text, order, tableId);
    }

    @Then("^I see \"([^\"]*)\" in program Outcomes flex table header with id \"([^\"]*)\"$")
    public void assertProgramOutcomesFlexTableHeaderName(String columnTitleName, String tableId) {
        flexGridPage.assertProgramOutcomesFlexTableHeaderColumnName(columnTitleName, tableId);
    }

    @Then("^I see \"([^\"]*)\" column inside Flex grid table id \"([^\"]*)\" of width \"([^\"]*)\"$")
    public void assertWidthOfFlexGridSpecificColumn(String columnName, String tableId, String widthSize) {
        flexGridPage.assertColumnWidthOfFlexGridSpecificColumn(columnName, tableId, widthSize);
    }

    @Then("^I see \"([^\"]*)\" column inside Flex grid table id \"([^\"]*)\" contains width \"([^\"]*)\"$")
    public void assertWidthOfFlexGridSpecificColumnForActiveGrantsAwards(String columnName, String tableId,
                                                                         String widthSize) {
        flexGridPage.assertColumnWidthOfActiveGrantsAwardsFlexGridSpecificColumn(columnName, tableId, widthSize);
    }

    @Then("^I see \"([^\"]*)\" icon for column value \"([^\"]*)\" is not displayed at table \"([^\"]*)\"$")
    public void assertActionIconNotDisplayedInsideGrantorBudgetPeriodflexTable(String iconName, String colValue,
                                                                               String tableId) {
        flexGridPage.assertActionIconNotDisplayedInsideForGrantorBudgetPeriodflexTable(iconName, colValue, tableId);
    }

    @Then("^I see Nested Table \"([^\"]*)\" with changed header name as \"([^\"]*)\"$")
    public void assertChangedHeaderNameForNestedTable(String tableId, String changedText) {
        flexGridPage.assertNestedTableHeaderName(tableId, changedText);
    }

    @Then("^I see \"([^\"]*)\" button inside \"([^\"]*)\" Mass Editable grid$")
    public void assertEditButtonInsideMassEditableTable(String buttonName, String headerName) {
        flexGridPage.assertActionButtonInsideMassEditableGridTableIsDisplayed(buttonName, headerName);
    }

    @Then("^I see \"([^\"]*)\" button inside \"([^\"]*)\" Nested Navigation grid$")
    public void assertButtonInsideNestedNavigationTable(String buttonName, String headerName) {
        flexGridPage.assertActionButtonInsideNestedNAvigationTableIsDisplayed(buttonName, headerName);
    }

    @Then("^I see \"([^\"]*)\" in Monitoring Schedule For All Active Grant flex table header with id \"([^\"]*)\" comes only once$")
    public void assertMonitoringScheduleForAllActiveGrantflextableheaderName(String columnTitleName, String tableId) {
        flexGridPage.assertActiveGrantsGridHeaderColumnName(columnTitleName, tableId);
    }

    @Then("^I see lookup field \"([^\"]*)\" is in view mode$")
    public void assertLookupFieldRenderingMode(String lookupFieldName) {
        flexGridPage.assertLookupFieldRenderingBehaviourInEditMode(lookupFieldName);
    }

    @Then("^I see expected table with id \"([^\"]*)\"$")
    public void assertTableWithId(String tableId) {
        flexGridPage.assertTableRenderedCompletely(tableId);
    }

    @Then("^I see Date Time field is in view mode$")
    public void assertModeOfDateTimeField() {
        flexGridPage.assertDateTimeFieldMode();
    }

    @Then("^I see \"([^\"]*)\" currency unit is present in \"([^\"]*)\" Amount at \"([^\"]*)\" Flex Grid$")
    public void assertCurrencyUnitInMEGridTotalAmount(String currencyUnit, String rowLabel, String tableID) {
        flexGridPage.assertMEGridCurrencyUnitInTotalAmount(currencyUnit, rowLabel, tableID);
    }

    @Then("^I see \"([^\"]*)\" inside rows of child grid id \"([^\"]*)\"$")
    public void assertNewRowsWithTextAtChildFlexTable(String text, String tableId) {
        flexGridPage.assertTextContainingRowAtChildFlexTabel(text, tableId);
    }

    @Then("^I (see|do not see) default total at \"([^\"]*)\" flex grid$")
    public void assertDefaultTotalAtFlexGridIsDisplayed(String usage, String tableId) {
        flexGridPage.assertDefaultTotalAtFlexGrid(usage, tableId);
    }

    @Then("I do not see default total at active grants flex grid")
    public void assertDefaultTotalAtActiveGrantsFlexGridIsNotDisplayed() {
        flexGridPage.assertDefaultTotalAtActiveGrantsFlexGrid();
    }

    @Then("I see Undo action displayed by inline editing record under {string} table")
    public void iSeeUndoActionByInlineEditingARecord(String tableId) {
        flexGridPage.assertUndoActionInsideTable(tableId);
    }

    @Then("^I (see|do not see) format as \"([^\"]*)\" in \"([^\"]*)\" field total inside \"([^\"]*)\" me grid$")
    public void iSeeFormatAsInFieldTotalInsideMeGrid(String usage, String format, String fieldName, String tableId) {
        flexGridPage.assertTotalFieldFormatInsideMeGrid(usage, format, fieldName, tableId);
    }

    @Then("I see actions are aligned at {string} me grid parent table")
    public void iSeeActionsAreAlignedInMeGridParentTable(String tableId) throws IOException {
        flexGridPage.assertActionsAreAlignedInMeGridTable(tableId);
    }

    @Then("^I see total records count is centrally aligned at bottom of \"([^\"]*)\" (parent|child) table$")
    public void iSeeIsCentrallyAlignedAtBottomOfTable(String tableId, String tableType) {
        flexGridPage.assertTextIsCentrallyAlignedAtBottomOfTable(tableId, tableId.equalsIgnoreCase("parent"));
    }

    @Then("I see loader at {string} list view is not displayed")
    public void iSeeLoaderAtListViewIsNotDisplayed(String listView) {
        flexGridPage.assertLoaderAtFlexTableListView(listView);
    }

    @Then("I see currency field value at {string} table is right aligned")
    public void iSeeCurrencyFieldValuesAtTableAreRightAligned(String tableId) {
        flexGridPage.assertCurrencyFieldValuesAreRightAlignedInsideFlexTable(tableId);
    }

    @Then("^I see total amount at \"([^\"]*)\" currency field is displayed in a correct format inside \"([^\"]*)\"$")
    public void iSeeCurrencyTotalWithCorrectFormattingIsDisplayed(String fieldName, String tableId) {
        flexGridPage.assertCurrencyTotalWithCorrectFormattingIsDisplayed(tableId, fieldName);
    }
}