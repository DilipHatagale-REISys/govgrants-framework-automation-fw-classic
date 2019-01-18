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
		
    @When("^I click on \"([^\"]*)\" icon of status \"([^\"]*)\" for \"([^\"]*)\" program in enhanced grid table without processing$")
	public void clickTableActionIconsWithoutProcessing(String iconName, String programSubject, String statusName) {
		enhancedFlexGrid.clickTableActionIconsForSpecificSubjectWithoutProcessing(iconName, programSubject, statusName);
	}
    
    @When("^I expand nested table containing column value \"([^\"]*)\" inside enhanced grid$")
    public void expandNestedTable(String uniqueColumnValue) {
    	enhancedFlexGrid.expandOrCollapseNestedTable(uniqueColumnValue, true);
    }

	/*@Then("^I see Advance Filter is disabled from planning enhanced flex grid$")
	public void assertAdvanceFilterOptionDisabled() {
		enhancedFlexGrid.assertDisableAdvanceFilterFromEnhancedGrid();
	}*/
    
    @Then("^I see Advance Filter is disabled from table \"([^\"]*)\"$")
	public void assertAdvanceFilterOptionDisabled(String tableId) {
		enhancedFlexGrid.assertDisableAdvanceFilterFromEnhancedGrid(tableId);
	}

	@Then("^I see Menu Icon is disabled from planning enhanced flex grid$")
	public void assertDisableMenuIcon() {
		enhancedFlexGrid.assertDisableMenuIconFromEnhancedGrid();
	}

	@Then("^I see \"([^\"]*)\" shown as enhanced flex grid title$")
	public void assertEnhancedFlexGridTitle(String titleName) {
		enhancedFlexGrid.assertEnhancedFlexGridTitleDisplayed(titleName);
	}

	@Then("^I see quick search option disabled from enhanced grid$")
	public void assertQuickSearchOptionDisabledForEnhancedGrid() {
		enhancedFlexGrid.assertquickSearchDisabledForEnhancedGrid();
	}

	@Then("^I see no total row count in enhanced flex grid$")
	public void assertFlexTableRowCountDisabled() {
		enhancedFlexGrid.assertEnhancedFlexGridTabelRowCountDisabled();
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

	@Then("^I see \"([^\"]*)\" with page size dropdown at bottom in enhanced grid$")
	public void assertFlexTablePageSizeEnabled(String text) {
		enhancedFlexGrid.assertEnhancedGridPageSizeEnabled(text);
	}

	@Then("^I see \"([^\"]*)\" records inside enhanced grid$")
	public void assertFlexTableNoOfRecords(int rowCount) {
		enhancedFlexGrid.assertEnhancedGridNumberOfRecordsPresent(rowCount);
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
}