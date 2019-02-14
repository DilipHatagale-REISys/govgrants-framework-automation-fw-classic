package com.framework.automation.steps;

import java.math.BigDecimal;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.CoreHandlers;
import com.automation.rei.handlers.GovGrantsHandler;
import com.framework.automation.pageobject.EnhancedFlexGridPage;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class EnhancedFlexGridSteps {
	EnhancedFlexGridPage enhancedFlexGrid;

	public EnhancedFlexGridSteps(Controller controller, CoreHandlers handler, GovGrantsHandler govgrants) {
		enhancedFlexGrid = new EnhancedFlexGridPage(controller, handler, govgrants);
	}

	@When("^I hovering mouse on help text icon inside \"([^\"]*)\" for enhanced grid$")
	public void getHelpTextIconsAtPageBlock(String blockTitle) {
		enhancedFlexGrid.getHelpTextAtParentFlexTableEnhancedGrid(blockTitle);
	}

	@When("^I hovering mouse on help text icon inside \"([^\"]*)\" for enhanced grid table column$")
	public void getHelpTextIconsAtFlexTableColumn(String columnTitle) {
		enhancedFlexGrid.getHelpTextAtEnhancedGridTableSpecificColumn(columnTitle);
	}
	
	@Then("^I see Advance Filter is disabled from table \"([^\"]*)\"$")
	public void assertAdvanceFilterOptionDisabled(String tableId) {
		enhancedFlexGrid.assertDisableAdvanceFilterFromEnhancedGrid(tableId);
	}

	@Then("^I see \"([^\"]*)\" shown as inside \"([^\"]*)\"$")
	public void assertEnhancedFlexGridTitle(String titleName, String tableId) {
		enhancedFlexGrid.assertEnhancedFlexGridTitleDisplayed(titleName, tableId);
	}

	@Then("^I see quick search option disabled from enhanced grid$")
	public void assertQuickSearchOptionDisabledForEnhancedGrid() {
		enhancedFlexGrid.assertquickSearchDisabledForEnhancedGrid();
	}

	@Then("^I see \"([^\"]*)\" count in enhanced grid \"([^\"]*)\"$")
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
	public void assertFlexTableNoOfRecords(int rowCount, String tableId) {
		enhancedFlexGrid.assertEnhancedGridNumberOfRecordsPresent(rowCount, tableId);
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

	@Then("^I see cell subtotal as \"([^\"]*)\"$")
	public void assertCellValue(BigDecimal value) {
		enhancedFlexGrid.assertCellValueAtEnhancedGrid(value);
	}
	
	@Then("^I see column \"([^\"]*)\" value is in \"([^\"]*)\" order$")
	public void assertColumnValueInAscendingOrder(String text, String order) {
		enhancedFlexGrid.assertAscendingOrderOfEnhancedGridColumnValue(text, order);
	}
	
	@Then("^I see \"([^\"]*)\" icon for \"([^\"]*)\" is at position \"([^\"]*)\" inside flex table$")
	public void assertActionIconNotDisplayedForflexTable(String iconName, String tableId, String sequenceNumber) {
		enhancedFlexGrid.assertSequenceOfEditActionOfEnhancedGrid(iconName, tableId, Integer.parseInt(sequenceNumber));
	}

	@Then("^Then I see Menu icon is disabled from planning child flex table \"([^\"]*)\" under Monitoring Schedule For All Active Grants table$")
	public void thenISeeMenuIconIsDisabledFromPlanningChildFlexTableUnderMonitoringScheduleForAllActiveGrantsTable(String tableName) {
		enhancedFlexGrid.assertThatMenuFieldIsDisabledOnChildFlexTable(tableName);
	}

	@Then("^I see quick search option disabled from enhanced grid for child flex table$")
	public void iSeeQuickSearchOptionDisabledFromEnhancedGridForChildFlexTable() {
		enhancedFlexGrid.assertThatQuickSearchIsDisabledOnChildFlexTable();
	}
}