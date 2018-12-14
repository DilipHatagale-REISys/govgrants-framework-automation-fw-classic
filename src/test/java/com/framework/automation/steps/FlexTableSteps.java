package com.framework.automation.steps;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.CoreHandlers;
import com.automation.rei.handlers.GovGrantsHandler;
import com.framework.automation.pageobject.FlexTablePage;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class FlexTableSteps {
	FlexTablePage flexTablePage;

	public FlexTableSteps(Controller controller, CoreHandlers handler, GovGrantsHandler govgrants) {
		flexTablePage = new FlexTablePage(controller, handler, govgrants);
	}

	@When("^I click on top right parallel lines bar for \"([^\"]*)\"$")
	public void clickTopRightParallelLinesBar(String title) {
		flexTablePage.clickRightHeaderBars(title);
	}

	@When("^I click on \"([^\"]*)\" icon of status \"([^\"]*)\" for \"([^\"]*)\" program in flex table$")
	public void clickTableActionIcons(String iconName, String statusName, String programSubject) {
		flexTablePage.clickTableActionIconsForSpecificSubject(iconName, statusName, programSubject);
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

	@When("^I click on \"([^\"]*)\" icon of status \"([^\"]*)\" for \"([^\"]*)\" program in flex table without processing$")
	public void clickTableActionIconsWithoutProcessing(String iconName, String statusName, String programSubject) {
		flexTablePage.clickTableActionIconsForSpecificSubjectWithoutProcessing(iconName, statusName, programSubject);
	}

	@When("^I click double headed arrow icon for \"([^\"]*)\" inside program flex table$")
	public void clickDoubleHeadedArrowIconOfProgramFlexTable(String termContainedInDataTarget) {
		flexTablePage.clickDoubleHeadedArrowIconInsideProgramFlexTable(termContainedInDataTarget);
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

	@Then("^I see Advance filter is disabled from planning flex table$")
	public void assertAdvanceFilterOptionDisabled() {
		flexTablePage.assertDisableAdvanceFilter();
	}

	@Then("^I see Menu icon is disabled from planning flex table$")
	public void assertDisableMenuIcon() {
		flexTablePage.assertDisableMenuIcon();
	}

	@Then("^I see select check box enabled in flex table$")
	public void assertOptionEnabledInFlexTable() {
		flexTablePage.assertFlexTabelRecordSelectionEnabled();
	}

	@Then("^I see no total amount row in flex table$")
	public void assertNoTotalAmountInFlexTable() {
		flexTablePage.assertFlexTabelTotalCalulationRowDisabled();
	}

	@Then("^I see no total row count in flex table$")
	public void assertFlexTableRowCountDisabled() {
		flexTablePage.assertFlexTabelRowCountDisabled();
	}

	@Then("^I see changed label as \"([^\"]*)\" of last row name$")
	public void assertRenameLastRowName(String flexTablelastRowName) {
		flexTablePage.assertnewAddedLastRowLabelName(flexTablelastRowName);
	}

	@Then("^I see \"([^\"]*)\" in flex table header$")
	public void assertFlexTableHeaderName(String headerColumnName) {
		flexTablePage.assertFlexTableHeaderColumnName(headerColumnName);
	}

	@Then("^I see no \"([^\"]*)\" status in flex table$")
	public void assertSpecificStatusCategoryNotDisplayed(String statusCategory) {
		flexTablePage.assertFlexTableStatusDisabled(statusCategory);
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

	@Then("^I see \"([^\"]*)\" icon for \"([^\"]*)\" is not displayed inside flex table$")
	public void assertActionIconNotDisplayedForflexTable(String iconName, String uniqueColumnValue) {
		flexTablePage.assertActionIconNotDisplayedInsideflexTable(iconName, uniqueColumnValue);
	}

	@Then("^I see \"([^\"]*)\" options inside \"([^\"]*)\" enabled$")
	public void assertTopRightParallelLinesBarOptionsEnabled(String menuOption, String pannelTitleName) {
		flexTablePage.assertTopRightParallelLinesBarSpecificOptionsEnabled(menuOption, pannelTitleName);
	}

	@Then("^I see \"([^\"]*)\" with page size dropdown at bottom in flex table$")
	public void assertFlexTablePageSizeEnabled(String text) {
		flexTablePage.assertFlexTabelPageSizeEnabled(text);
	}

	@Then("^I see \"([^\"]*)\" with pagination arrow at bottom in flex table$")
	public void assertFlexTablePaginationEnabled(String text) {
		flexTablePage.assertFlexTabelPageSizeEnabled(text);
	}

	@Then("^I see \"([^\"]*)\" records inside flex table$")
	public void assertFlexTableNoOfRecords(int rowCount) {
		flexTablePage.assertFlexTabelNumberOfRecordsPresent(rowCount);
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
	
	@Then("^I see \"([^\"]*)\" on page \"([^\"]*)\" of \"([^\"]*)\" pdf file$")
	public void assertTExtNotDisplayed(String text, String pageNumber, String fileName) {
		flexTablePage.assertTextDisplayedInPDF(text, Integer.parseInt(pageNumber), fileName);
	}
}