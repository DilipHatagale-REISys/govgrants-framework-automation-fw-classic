package com.framework.automation.steps;

import com.framework.automation.pageobject.EnhancedFlexGridPage;
import eyethink.automation.bots.Register.EyeThink;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;


import java.math.BigDecimal;

public class EnhancedFlexGridSteps {
	EnhancedFlexGridPage enhancedFlexGrid;

	public EnhancedFlexGridSteps() {
		enhancedFlexGrid = new EnhancedFlexGridPage();
	}

	@When("^I hovering mouse on help text icon inside \"([^\"]*)\" for enhanced grid$")
	public void getHelpTextIconsAtPageBlock(String blockTitle) {
		enhancedFlexGrid.getHelpTextAtParentFlexTableEnhancedGrid(blockTitle);
	}

	@When("^I hovering mouse on help text icon inside \"([^\"]*)\" for enhanced grid table column$")
	public void getHelpTextIconsAtFlexTableColumn(String columnTitle) {
		enhancedFlexGrid.getHelpTextAtEnhancedGridTableSpecificColumn(columnTitle);
	}

	@When("^I enter values \"([^\"]*)\" into textarea for table id \"([^\"]*)\"$")
	public void textAreaFieldAtEnhancedGrid(String enteredValue, String tableId) {
		enhancedFlexGrid.enterValueForTextareaAtEnhancedGridColumn(enteredValue, tableId);
	}

	@When("^I save the value from row \"([^\"]*)\" for column name \"([^\"]*)\" as \"([^\"]*)\" from flex table \"([^\"]*)\"$")
	public void SaveTheValueFromRowForColumnNameAsFromFlexTable(String columnValueFromRow, String columnName, String key, String flexTableId) {
		enhancedFlexGrid.saveSpecificValueFromFlexTableInsideGivenKey(columnValueFromRow, columnName, key, flexTableId);
	}

	@When("^I click on advance filter of table id \"([^\"]*)\"$")
	public void performClickOnAnvanceFilter(String tableId, String dataTargetValue) {
		enhancedFlexGrid.performClickOnAdvanceFilterWithTableId(tableId, dataTargetValue);
	}

	@When("^I enter values into advance filter \"([^\"]*)\" as \"([^\"]*)\"\"([^\"]*)\"\"([^\"]*)\"$")
	public void enterValuesForAdvanceFilter(String advanceFilterId, String value1, String value2, String value3) {
		enhancedFlexGrid.handleDropdownInputForAdvanceFilter(advanceFilterId, value1, value2, value3);
	}

	@Then("^I see Advance Filter is disabled from table \"([^\"]*)\" with data target value \"([^\"]*)\"$")
	public void assertAdvanceFilterOptionDisabled(String tableId, String dataTargetValue) {
		enhancedFlexGrid.assertDisableAdvanceFilterFromEnhancedGrid(tableId, dataTargetValue);
	}

	@Then("^I see \"([^\"]*)\" shown as inside \"([^\"]*)\"$")
	public void assertEnhancedFlexGridTitle(String titleName, String tableId) {
		enhancedFlexGrid.assertEnhancedFlexGridTitleDisplayed(titleName, tableId);
	}

	@Then("^I see quick search option disabled from enhanced grid$")
	public void assertQuickSearchOptionDisabledForEnhancedGrid() {
		enhancedFlexGrid.assertquickSearchDisabledForEnhancedGrid();
	}

	@Then("^I see no \"([^\"]*)\" count in enhanced grid \"([^\"]*)\"$")
	public void assertFlexTableRowCountDisabled(String text, String tableId) {
		enhancedFlexGrid.assertEnhancedFlexGridTabelRowCountDisabled(text, tableId);
	}

	@Then("^I see \"([^\"]*)\" in enhanced flex grid header$")
	public void assertFlexTableHeaderName(String headerColumnName) {
		enhancedFlexGrid.assertEnhancedFlexGridHeaderColumnName(headerColumnName);
	}

	@Then("^I see select check box enabled in enhanced flex grid$")
	public void assertOptionEnabledInFlexTable() {
		enhancedFlexGrid.assertEnhancedFlexGridRecordSelectionEnabled();
	}

	@Then("^I see no new tab is opened for action item in enhanced flex grid$")
	public void assertNoNewTabOpensOnEditClickForEnhancedGrid() {
		enhancedFlexGrid.assertEditOpenInSameTabForEnhancedGrid();
	}

	@Then("^I see \"([^\"]*)\" with page size dropdown in enhanced grid \"([^\"]*)\"$")
	public void assertFlexTablePageSizeEnabled(String text, String tableId) {
		enhancedFlexGrid.assertEnhancedGridPageSizeEnabled(text, tableId);
	}

	@Then("^I see \"([^\"]*)\" records inside enhanced grid id \"([^\"]*)\"$")
	public void assertFlexTableNoOfRecords(String rowCount, String tableId) {
		enhancedFlexGrid.assertEnhancedGridNumberOfRecordsPresent(Integer.parseInt(rowCount), tableId);
	}

	@Then("^I see \"([^\"]*)\" shown inside enhanced grid table for specified record \"([^\"]*)\"$")
	public void assertEnhancedGridSpecificCellValue(String cellValue, String colName) {
		enhancedFlexGrid.assertCellValueOfEnhancedGridForSpecificRecordDisplayed(cellValue, colName);
	}

	@Then("^I see input box is not displayed for budget period end date$")
	public void assertTextInputBoxForSpecificColumn() {
		enhancedFlexGrid.assertTextInputBoxForSpecificColumnNotDisplayed();
	}

	@Then("^I see \"([^\"]*)\" not displayed in enhanced grid table column title$")
	public void assertEnhancedGridtableColumnNotDisplayed(String columnTitleName) {
		enhancedFlexGrid.assertSpecificColumnOfEnhancedGridTableNotDisplayed(columnTitleName);
	}

	@Then("^I see \"([^\"]*)\" shown inside flex table with id \"([^\"]*)\"$")
	public void assertEnhancedGridtableColumnName(String columnTitleName, String tableId) {
		enhancedFlexGrid.assertCorrectEnhancedGridTableColumnTitleDisplayed(columnTitleName, tableId);
	}

	@Then("^I see external link icon as \"([^\"]*)\" for \"([^\"]*)\" inside enhanced grid table action$")
	public void assertPencilIconAsSubTab(String columnTitle, String iconTitle) {
		enhancedFlexGrid.assertEnhancedGridTableEditActionIconDisplayed(columnTitle, iconTitle);
	}

	@Then("^I see \"([^\"]*)\" button inside \"([^\"]*)\" enhanced grid$")
	public void assertEditButtonInsideFlexTable(String buttonName, String headerName) {
		enhancedFlexGrid.assertActionButtonInsideEnhancedGridTableIsDisplayed(buttonName, headerName);
	}

	@Then("^I see no \"([^\"]*)\" button inside \"([^\"]*)\" enhanced grid$")
	public void assertButtonInsideFlexTable(String buttonName, String headerName) {
		enhancedFlexGrid.assertActionButtonInsideEnhancedGridTableIsNotDisplayed(buttonName, headerName);
	}

	@Then("^I see cell subtotal as \"([^\"]*)\"$")
	public void assertCellValue(BigDecimal value) {
		enhancedFlexGrid.assertCellValueAtEnhancedGrid(value);
	}

	@Then("^I see column \"([^\"]*)\" value is in \"([^\"]*)\" order$")
	public void assertColumnValueInAscendingOrder(String text, String order) {
		enhancedFlexGrid.assertAscendingOrderOfEnhancedGridColumnValue(text, order);
	}

	@Then("^I see currency column \"([^\"]*)\" value is in \"([^\"]*)\" order$")
	public void assertCurrencyColumnValueInAscendingOrder(String text, String order) {
		enhancedFlexGrid.assertAscendingOrderOfEnhancedGridCurrencyColumnValue(text, order);
	}

	@Then("^I see grouped row value is in \"([^\"]*)\" order$")
	public void assertRowSortingInAscendingOrderWithRowGrouping(String order) {
		enhancedFlexGrid.assertAscendingOrderOfRowValueWithRowGrouping(order);
	}

	@Then("^I see \"([^\"]*)\" icon for \"([^\"]*)\" is at position \"([^\"]*)\" inside flex table$")
	public void assertActionIconNotDisplayedForflexTable(String iconName, String tableId, String sequenceNumber) {
		enhancedFlexGrid.assertSequenceOfEditActionOfEnhancedGrid(iconName, tableId, Integer.parseInt(sequenceNumber));
	}

	@Then("^Then I see Menu icon is disabled from planning child flex table \"([^\"]*)\" under Monitoring Schedule For All Active Grants table$")
	public void thenISeeMenuIconIsDisabledFromPlanningChildFlexTableUnderMonitoringScheduleForAllActiveGrantsTable(
			String tableName) {
		enhancedFlexGrid.assertThatMenuFieldIsDisabledOnChildFlexTable(tableName);
	}

	@Then("^I see quick search option disabled from enhanced grid for child flex table \"([^\"]*)\"$")
	public void iSeeQuickSearchOptionDisabledFromEnhancedGridForChildFlexTable(String flexTableID) {
		enhancedFlexGrid.assertThatQuickSearchIsDisabledOnChildFlexTable(flexTableID);
	}

	@Then("^I see \"([^\"]*)\" for Child Flex table \"([^\"]*)\" count in enhanced grid$")
	public void iSeeForChildFlexTableCountInEnhancedGrid(String childFlexFooter, String childFlexTableId) {
		enhancedFlexGrid.assertThatTotalRecordIsPresentOnChildFlexTable(childFlexFooter, childFlexTableId);
	}

	@Then("^I see select check box enabled for child flex table in enhanced flex grid$")
	public void iSeeSelectCheckBoxEnabledForChildFlexTableInEnhancedFlexGrid() {
		enhancedFlexGrid.assertIfSelectRecordIsEnabledOnChildFlexTable();
	}

	@Then("^I see input box is not displayed for ID inside child Flex table$")
	public void assertTextInputBoxForIdColumn() {
		enhancedFlexGrid.assertTextInputBoxForIdColumnNotDisplayed();
	}

	@Then("^I see \"([^\"]*)\" inside rows of enhanced grid id \"([^\"]*)\"$")
	public void assertNewRowsWithTextAtParentFlexTable(String text, String tableId) {
		enhancedFlexGrid.assertTextContainingRowAtParentFlexTabel(text, tableId);
	}

	@Then("^I see cell subtotal for number of awards at enhanced grid$")
	public void assertCellValueAtNumberOfAwardsColumn() {
		enhancedFlexGrid.assertCellValueForNumberOfAwardsAtEnhancedGrid();
	}

	@Then("^I see \"([^\"]*)\" error is displayed at enhanced grid$")
	public void assertApprovalDecisionMandatoryErrorDisplayed(String error) {
		enhancedFlexGrid.assertIsMasterViewErrorMessageIsDisplayed(error);
	}

	@Then("^I see \"([^\"]*)\" error is not displayed at enhanced grid$")
	public void assertApprovalDecisionMandatoryErrorNotDisplayed(String error) {
		enhancedFlexGrid.assertIsMasterViewErrorMessageIsNotDisplayed(error);
	}

	@Then("^I see \"([^\"]*)\" inside enhanced grid table id \"([^\"]*)\" in \"([^\"]*)\" colour$")
	public void assertEnhancedGridSpecificCellValueWithColor(String cellValue, String tableId, String colorName) {
		enhancedFlexGrid.assertCellValueColourOfEnhancedGridForSpecificRecordDisplayed(cellValue, tableId, colorName);
	}

	@Then("^I see cell subtotal for obligated amount at child table of enhanced grid$")
	public void assertCellValueAtObligatedAmountForChildTable() {
		enhancedFlexGrid.assertCellValueForObligatedAmountAtChildFlexTableOfEnhancedGrid();
	}

	@Then("^I see over all total for number of awards at enhanced grid$")
	public void assertOverAllTotalCellValueAtNumberOfAwardsColumn() {
		enhancedFlexGrid.assertOverAllTotalCellValueForNumberOfAwardsAtEnhancedGrid();
	}

	@Then("^I see edited value inside textarea is \"([^\"]*)\" for column value \"([^\"]*)\" of table \"([^\"]*)\"$")
	public void assertEditedTextAreaValue(String enteredValue, String columnValue, String tableId) {
		enhancedFlexGrid.assertEditedValueForTextAreaField(enteredValue, columnValue, tableId);
	}

	@Then("^I see value \"([^\"]*)\" for multiple cells at column \"([^\"]*)\"$")
	public void assertEditedTextAreaValueForMultipleCells(String enteredValue, String columnValue) {
		enhancedFlexGrid.assertEditedValueForTextAreaFieldForMultipleCells(enteredValue, columnValue);
	}

	@Then("^I see \"([^\"]*)\" and \"([^\"]*)\" in \"([^\"]*)\" order$")
	public void assertColumnValueInAscendingOrderWithAnotherColumn(String text1, String text2, String order) {
		enhancedFlexGrid.assertAscendingOrderOfEnhancedGridColumnValueWRTOtherColumn(text1, text2, order);
	}

	@Then("^I see select box for picklist is not displayed for status inside table$")
	public void assertSelectBoxForStatusColumn() {
		enhancedFlexGrid.assertSelectBoxForStatusColumnDisplayedInViewMode();
	}

	@Then("^I see the Budget Period End Date field contains todays date$")
	public void assertBudgetPeriodEndDateFieldContainsTodaysDate() {
		enhancedFlexGrid.assertBugetPeriodDateField();
	}

	@Then("^I see \"([^\"]*)\" and \"([^\"]*)\" contains user names as \"([^\"]*)\"$")
	public void assertStandardFieldsColumnValue(String text1, String text2, String userName) {
		enhancedFlexGrid.assertUserNameAtStandardFieldsInsideEnhancedGridColumn(text1, text2, userName);
	}
}