package com.framework.automation.steps;

import com.automation.rei.handlers.GovGrantsHandler;
import com.framework.automation.pageobject.FlexGridPage;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import eyethink.automation.bots.controller.Controller;
import eyethink.automation.bots.controller.CoreHandlers;

public class FlexGridSteps {
	FlexGridPage flexGridPage;

	public FlexGridSteps(Controller controller, CoreHandlers handler, GovGrantsHandler govgrants) {
		flexGridPage = new FlexGridPage(controller, handler, govgrants);
	}

	@When("^I record webelement for column \"([^\"]*)\" in table \"([^\"]*)\"$")
	public void getRecordOfTableColumn(String columnName, String tableId) {
		flexGridPage.recordWebElement(columnName, tableId);
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
}