package com.framework.automation.steps;

import com.framework.automation.pageobject.FlexTablePage;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import eyethink.automation.bots.exception.EyeThinkBotsCustomException;
import org.springframework.context.annotation.Description;

public class FlexTableSteps {
	FlexTablePage flexTablePage;

	public FlexTableSteps() {
		flexTablePage = new FlexTablePage();
	}

	@When("^I click on top right parallel lines bar for \"([^\"]*)\"$")
	public void clickTopRightParallelLinesBar(String title) {
		flexTablePage.clickRightHeaderBars(title);
	}

	@When("^I click on \"([^\"]*)\" icon for \"([^\"]*)\" to save inside subtab$")
	public void clickAnyIconInFlexTable(String iconName, String programRole) {
		flexTablePage.clickRowLevelActionIconsInsideSubTab(iconName, programRole);
		flexTablePage.clickSaveInModal();
	}

	@When("^I hovering mouse on help text icon inside \"([^\"]*)\" for flex table$")
	public void getHelpTextIconsAtPageBlock(String blockTitle) {
		flexTablePage.getHelpTextAtDraftProgramFlexTable(blockTitle);
	}

	@When("^I hovering mouse on help text icon inside \"([^\"]*)\" for flex table column$")
	public void getHelpTextIconsAtFlexTableColumn(String columnTitle) {
		flexTablePage.getHelpTextAtFlexTableSpecificColumn(columnTitle);
	}

	@When("^I click dropdown field \"([^\"]*)\"$")
	public void clickSelectDropdown(String fieldApiName) {
		flexTablePage.clickSelectDropdownAtPageDetail(fieldApiName);
	}

	@Description("Step to validate a bug which results in error if a certain sequnce is followed for a certain period of time continuosly")
	@When("^I perform sequence of actions on flex table for \"([^\"]*)\" minute$")
	public void performSequenceOfActionsOnFlexTable(String durationOfRun) throws EyeThinkBotsCustomException {
		flexTablePage.performSequenceOfActionsOnFlexTable(durationOfRun);
	}

	@When("^I click toggle button for \"([^\"]*)\"$")
	public void clickToggleButtonAndSelect(String menuItemName) {
		flexTablePage.clickToggleButtonAndSelect(menuItemName);
	}

	@Then("^I see \"([^\"]*)\" shown as flex table title$")
	public void assertFlextableTitle(String titleName) {
		flexTablePage.assertCorrectFlexTableTitleDisplayed(titleName);
	}

	@Then("^I see \"([^\"]*)\"\"([^\"]*)\" options inside \"([^\"]*)\" disabled$")
	public void assertTopRightParallelLinesBarOptionsDisabled(String option1, String option2, String pannelTitleName) {
		flexTablePage.assertTopRightParallelLinesBarSpecificOptionsDisabled(option1, option2, pannelTitleName);
	}

	@Then("^I see quick search option disabled$")
	public void assertQuickSearchOptionDisabled() {
		flexTablePage.assertquickSearchDisabled();
	}

	@Then("^I see Menu icon is disabled from planning flex table \"([^\"]*)\"$")
	public void assertDisableMenuIcon(String panelTitleName) {
		flexTablePage.assertDisableMenuIcon(panelTitleName);
	}

	@Then("^I see select check box enabled in flex table$")
	public void assertOptionEnabledInFlexTable() {
		flexTablePage.assertFlexTabelRecordSelectionEnabled();
	}

	@Then("^I see total amount row in flex table is not displayed$")
	public void assertNoTotalAmountInFlexTable() {
		flexTablePage.assertFlexTabelTotalCalulationRowDisabled();
	}

	@Then("^I see no \"([^\"]*)\" count in \"([^\"]*)\"$")
	public void assertFlexTableRowCountDisabled(String text, String tableId) {
		flexTablePage.assertFlexTabelRowCountDisabled(text, tableId);
	}

	@Then("^I see \"([^\"]*)\" count in \"([^\"]*)\"$")
	public void assertFlexTableRowCountEnabled(String text, String tableId) {
		flexTablePage.assertFlexTabelRowCountEnabled(text, tableId);
	}

	@Then("^I see changed label as \"([^\"]*)\" of last row name$")
	public void assertRenameLastRowName(String flexTablelastRowName) {
		flexTablePage.assertnewAddedLastRowLabelName(flexTablelastRowName);
	}

	@Then("^I see \"([^\"]*)\" in flex table header$")
	public void assertFlexTableHeaderName(String headerColumnName) {
		flexTablePage.assertFlexTableHeaderColumnName(headerColumnName);
	}

	@Then("^I see no \"([^\"]*)\" status in flex table id \"([^\"]*)\"$")
	public void assertSpecificStatusCategoryNotDisplayed(String statusCategory, String tableId) {
		flexTablePage.assertFlexTableStatusDisabled(statusCategory, tableId);
	}

	@Then("^I see new tab is opened$")
	public void assertNewTabOpenOnEditClick() {
		flexTablePage.assertEditWithNewTab();
	}

	@Then("^I see no new tab is opened$")
	public void assertNoNewTabOpensOnEditClick() {
		flexTablePage.assertEditOpenInSameTab();
	}

	@Then("^I see \"([^\"]*)\" opens in overLay window$")
	public void assertEditOpensInOverLayWindow(String titleName) {
		flexTablePage.asserTextInOverLayIframe(titleName);
	}

	@Then("^I see entire page is refreshing$")
	public void assertEntirePageRefresh() {
		flexTablePage.asserEntirePageRefreshOnButtonClick();
	}

	@Then("^I see parent page is refreshing$")
	public void assertParentPageRefresh() {
		flexTablePage.asserEntirePageRefreshOnButtonClick();
	}

	@Then("^I see \"([^\"]*)\" icon for \"([^\"]*)\" is not displayed inside flex table$")
	public void assertActionIconNotDisplayedForflexTable(String iconName, String uniqueColumnValue) {
		flexTablePage.assertActionIconNotDisplayedInsideflexTable(iconName, uniqueColumnValue);
	}

	@Then("^I see \"([^\"]*)\" options inside \"([^\"]*)\" enabled$")
	public void assertTopRightParallelLinesBarOptionsEnabled(String menuOption, String pannelTitleName) {
		flexTablePage.assertTopRightParallelLinesBarSpecificOptionsEnabled(menuOption, pannelTitleName);
	}

	@Then("^I see \"([^\"]*)\" with page size dropdown at \"([^\"]*)\"$")
	public void assertFlexTablePageSizeEnabled(String text, String tableId) {
		flexTablePage.assertFlexTabelPageSizeEnabled(text, tableId);
	}

	@Then("^I see \"([^\"]*)\" with pagination arrow at \"([^\"]*)\"$")
	public void assertFlexTablePaginationEnabled(String text, String tableId) {
		flexTablePage.assertFlexTabelPaginationEnabled(text, tableId);
	}

	@Then("^I see \"([^\"]*)\" records inside flex table id \"([^\"]*)\"$")
	public void assertFlexTableNoOfRecords(int rowCount, String tableId) {
		flexTablePage.assertFlexTabelNumberOfRecordsPresent(rowCount, tableId);
	}

	@Then("^I see \"([^\"]*)\" shown as flex table column title$")
	public void assertFlextableColumnName(String columnTitleName) {
		flexTablePage.assertCorrectFlexTableColumnTitleDisplayed(columnTitleName);
	}

	@Then("^I see total amount in flex table$")
	public void assertTotalAmountInFlexTable() {
		flexTablePage.assertFlexTabelTotalCalulationAmountDiplayed();
	}

	@Then("^I see \"([^\"]*)\" row action Button at position \"([^\"]*)\"$")
	public void assertSequenceOfPageLayoutEditButtonAction(String buttonName, String sequenceNumber) {
		flexTablePage.assertSequenceOfEditActionOfProgramFlexTable(buttonName, Integer.parseInt(sequenceNumber));
	}

	@Then("^I see edit opens with \"([^\"]*)\"$")
	public void assertEditOpenedWithSpefifiedUrl(String newActionUrl) {
		flexTablePage.assertSpecifiedUrlForEditActionOfProgramFlexTable(newActionUrl);
	}

	@Then("^I see external link icon as \"([^\"]*)\" for \"([^\"]*)\" inside flex table action$")
	public void assertPencilIconAsSubTab(String columnTitle, String iconTitle) {
		flexTablePage.assertFlexTableEditActionIconDisplayed(columnTitle, iconTitle);
	}

	@Then("^I see \"([^\"]*)\" button inside \"([^\"]*)\" flex table$")
	public void assertEditButtonInsideFlexTable(String buttonName, String headerName) {
		flexTablePage.assertActionButtonInsideFlexTableIsDisplayed(buttonName, headerName);
	}

	@Then("^I see \"([^\"]*)\" icon for \"([^\"]*)\" is displayed inside flex table$")
	public void assertActionIconDisplayedForflexTable(String iconName, String uniqueColumnValue) {
		flexTablePage.assertActionIconDisplayedInsideflexTable(iconName, uniqueColumnValue);
	}

	@Then("^I see \"([^\"]*)\" as title for \"([^\"]*)\" inside flex table action$")
	public void getHelpTextAtEditIconsInsideFlexTable(String iconName, String columnName) {
		flexTablePage.getHelpTextAtEditActionOfFlexTable(iconName, columnName);
	}

	@Then("^I see \"([^\"]*)\" displayed in flex table Action modal$")
	public void assertModalTitleForFlexTableAction(String titleName) {
		flexTablePage.asserTextInOverLayIframe(titleName);
	}

	@Then("^I see \"([^\"]*)\" button inside \"([^\"]*)\" flex table not displayed$")
	public void assertCreateButtonInsideActiveFundingOpprtunitiesFlexTable(String buttonName, String headerName) {
		flexTablePage.assertActionButtonInsideFlexTableIsNotDisplayed(buttonName, headerName);
	}

	@Then("^I see \"([^\"]*)\" is not displayed inside program flex table dropdown$")
	public void assertItemNotDisplayedInsideProgramFlexTable(String itemName) {
		flexTablePage.assertSpecificItemsInsideDropdown(itemName);
	}

	@Then("^I see no \"([^\"]*)\" on page \"([^\"]*)\" of \"([^\"]*)\" pdf file for Block Content$")
	public void assertTExtNotDisplayedForBlockContent(String text, String pageNumber, String fileName) {
		flexTablePage.assertTextDisplayedInPDFForBlockContent(text, Integer.parseInt(pageNumber), fileName);
	}

	@Then("^I see \"([^\"]*)\" on page \"([^\"]*)\" of \"([^\"]*)\" pdf file for Table Content$")
	public void assertTExtNotDisplayedForTableContent(String text, String pageNumber, String fileName) {
		flexTablePage.assertTextDisplayedInPDFForTableContent(text, Integer.parseInt(pageNumber), fileName);
	}

	@Then("^I see \"([^\"]*)\" in xls file \"([^\"]*)\"$")
	public void assertTExtNotDisplayedInXLS(String text, String fileName) {
		flexTablePage.assertTextDisplayedInXLS(text, fileName);
	}

	@Then("^I do not see \"([^\"]*)\" error$")
	public void assertNoError(String errorMessage) {
		flexTablePage.assertErrorMessageNotDisplayed(errorMessage);
	}

	@Then("^I see \"([^\"]*)\" inside Application Budget flex table for specified record \"([^\"]*)\"$")
	public void assertGridRefreshedWithEnteredText(String columnTitleName, String colName) {
		flexTablePage.asserGridRefreshOnButtonClick(columnTitleName, colName);
	}

	@Then("^I see record \"([^\"]*)\" having action \"([^\"]*)\" donot contain icon css \"([^\"]*)\"$")
	public void assertPencilIconAtFlexTable(String columnTitle, String iconTitle, String cssValue) {
		flexTablePage.assertFlexTableViewActionIconDisplayed(columnTitle, iconTitle, cssValue);
	}

	@Then("^I see record with text \"([^\"]*)\" in \"([^\"]*)\"$")
	public void assertFlexTableContainsText(String text, String tableId) {
		flexTablePage.assertFlexTabelRecordsContainsTextAsExpected(text, tableId);
	}

	@Then("^I see toggle button is displayed for \"([^\"]*)\"$")
	public void assertToggleButton(String anyItemContainedInDropDown) {
		flexTablePage.assertToogleButtonIsDisplayed(anyItemContainedInDropDown);
	}

	@Then("^I see \"([^\"]*)\" inside selectbox field \"([^\"]*)\"$")
	public void assertValueInsideSelectDropdownValues(String dropDownValue, String fieldApiName) {
		flexTablePage.assertValueInsideSelectDropdownAtPageDetail(dropDownValue, fieldApiName);
	}

	@Then("^I see alert message \"([^\"]*)\"$")
	public void assertConfirmationAlertMessage(String message) {
		flexTablePage.assertTextMessageOnConfirmationAlert(message);
	}
}