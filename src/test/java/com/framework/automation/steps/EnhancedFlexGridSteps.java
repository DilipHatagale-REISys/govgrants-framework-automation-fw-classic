package com.framework.automation.steps;

import com.framework.automation.pageobject.EnhancedFlexGridPage;
import com.helperPackage.actionsfactory.api.ByUsing;
import com.helperPackage.register.I;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.WebDriver;

import java.io.IOException;

public class EnhancedFlexGridSteps {
    EnhancedFlexGridPage enhancedFlexGrid;

    private WebDriver driver;

    public EnhancedFlexGridSteps() {
        enhancedFlexGrid = new EnhancedFlexGridPage();
    }

    @When("^I hovering mouse on help text icon inside \"([^\"]*)\" for enhanced grid$")
    public void getHelpTextIconsAtPageBlock(String blockTitle) {
        enhancedFlexGrid.getHelpTextAtParentFlexTableEnhancedGrid(blockTitle);
    }

    @When("^I enter values \"([^\"]*)\" into textarea for table id \"([^\"]*)\"$")
    public void textAreaFieldAtEnhancedGrid(String enteredValue, String tableId) {
        enhancedFlexGrid.enterValueForTextareaAtEnhancedGridColumn(enteredValue, tableId);
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

    @Then("^I (see|do not see) \"([^\"]*)\" count in enhanced grid \"([^\"]*)\"$")
    public void assertFlexTableRowCountDisabled(String usage, String text, String tableId) {
        enhancedFlexGrid.assertEnhancedFlexGridTabelRowCountDisabled(usage, text, tableId);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" in enhanced flex grid header \"([^\"]*)\"$")
    public void assertFlexTableHeaderName(String usage, String headerColumnName, String tableId) {
        enhancedFlexGrid.assertEnhancedFlexGridHeaderColumnName(usage, tableId, headerColumnName);
    }

    @Then("^I see select check box enabled in enhanced flex grid$")
    public void assertOptionEnabledInFlexTable() {
        enhancedFlexGrid.assertEnhancedFlexGridRecordSelectionEnabled();
    }

    @Then("^I see no new tab is opened for action item in enhanced flex grid$")
    public void assertNoNewTabOpensOnEditClickForEnhancedGrid() {
        enhancedFlexGrid.assertEditOpenInSameTabForEnhancedGrid();
    }

    @Then("^I (see|do not see) \"([^\"]*)\" with page size dropdown in enhanced grid \"([^\"]*)\"$")
    public void assertFlexTablePageSizeEnabled(String usage, String text, String tableId) {
        enhancedFlexGrid.assertEnhancedGridPageSizeEnabled(usage, text, tableId);
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

    @Then("^I see cell subtotal as expected as given formula at \"([^\"]*)\" field$")
    public void assertCellValueWithFormula(String fieldApiName) {
        enhancedFlexGrid.assertCellValueAtEnhancedGridWithFormula(fieldApiName);
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

    @Then("^I see cell subtotal for \"([^\"]*)\" at enhanced grid$")
    public void assertCellValueAtNumberOfAwardsColumn(String fieldApiName) {
        enhancedFlexGrid.assertCellValueForNumberOfAwardsAtEnhancedGrid(fieldApiName);
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

    @Then("^I (see|softly see) over all total for \"([^\"]*)\" field at enhanced grid$")
    public void assertOverAllTotalCellValueAtNumberOfAwardsColumn(String usage, String fieldApiName) {
        enhancedFlexGrid.assertOverAllTotalCellValueForNumberOfAwardsAtEnhancedGrid(usage, fieldApiName);
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

    @Then("^I see subtotal value \"([^\"]*)\" for null record values$")
    public void assertCellNullValue(String value) {
        enhancedFlexGrid.assertCellValueForTotalAdjustedAmountAtEnhancedGrid(value);
    }

    @Then("^I see field value is blank for \"([^\"]*)\" at enhanced grid")
    public void assertNullValueForSpecificField(String fieldApiName) {
        enhancedFlexGrid.assertNullValueFoeSpecificFieldAtEnhancedGrid(fieldApiName);
    }

    @Then("^I see field value is current date for \"([^\"]*)\" at enhanced grid")
    public void assertDateAndDateTimeFieldValueForSpecificField(String fieldApiName) {
        enhancedFlexGrid.assertDateAndDateTimeFieldValueForSpecificFieldAtEnhancedGrid(fieldApiName);
    }

    @Then("^I see over all total for \"([^\"]*)\" at enhanced grid$")
    public void assertOverAllTotalCellValueAtTotalAdjustedAmountColumn(String fieldApiName) {
        enhancedFlexGrid.assertOverAllTotalCellValueForTotalAdjustedAmountAtEnhancedGrid(fieldApiName);
    }

    @Then("^I see upArrow for multiple field at enhanced grid")
    public void assertUpArrowForMultipleField() {
        enhancedFlexGrid.assertUpArrowWithSortingAtMultipleField();
    }

    @Then("^I see over all total sum is not displayed for \"([^\"]*)\" inside \"([^\"]*)\" table$")
    public void assertUpArrowForMultipleField(String fieldApiName, String tableId) {
        enhancedFlexGrid.assertOverAllTotalNotDisplayed(fieldApiName, tableId);
    }

    @Then("I (see|do not see) \"([^\"]*)\" field is editable inside enhanced grid$")
    public void assertFieldIsNotEditableInsideEnhancedGrid(String usage, String fieldApiName) {
        enhancedFlexGrid.assertLookupFieldIsNotEditableAtEnhancedGrid(usage, fieldApiName);
    }

    @Then("I (see|do not see) hyperlink at column value \"([^\"]*)\" inside \"([^\"]*)\" table$")
    public void assertHyperlinkAtColumnValueInsideEnhancedGrid(String usage, String columnValue, String tableId) {
        enhancedFlexGrid.assertHyperlinkIsDisplayedAtColumnValueInsideEnhancedGrid(usage, columnValue, tableId);
    }

    @Then("^I see quick search box is disabled in flex table with id \"([^\"]*)\"$")
    public void assertQuickSearchBoxIsDisabledInFlexTable(String tableId) {
        enhancedFlexGrid.assertQuickSearchBoxIsDisabledAtFlexTable(tableId);
    }

    @Then("^I softly see \"([^\"]*)\" symbol in flex table with id \"([^\"]*)\"$")
    public void iSoftlySeeSymbolInFlexTableWithId(String symbol, String tableId) {
        enhancedFlexGrid.assertSymbolIsDisplayed(symbol, tableId);
    }

    @Then("^I see Advance Filter box is displayed with id \"([^\"]*)\"$")
    public void iSeeAdvanceFilterBoxIsDisplayedWithId(String tableId) {
        enhancedFlexGrid.assertAdvanceFilterBoxIsDisplayed(tableId);
    }

    @Then("I see actions under {string} table are aligned and compared with {string}")
    public void iSeeActionsUnderTableAreAlignedAndComparedWith(String tableId, String imageName) throws IOException {
        enhancedFlexGrid.assertActionsAreAlignedInsideFlexTable(tableId, imageName);
    }

    @Then("I see background color of selected filter criteria is Moderate Blue")
    public void iSeeBackgroundColorOfSelectedFilterCriteriaIs() {
        enhancedFlexGrid.assertBackgroundColorOfSelectedFilterCriteria();
    }

    @Then("^I (see|softly see) sorting label as \"([^\"]*)\" inside \"([^\"]*)\" table$")
    public void iSeeSortingLabelAsInsideTable(String usage, String label, String tableId) {
        enhancedFlexGrid.assertSortingLabelAtEnhancedGrid(usage, label, tableId);
    }

    @Then("I see border box is displayed at {string} table")
    public void iSeeBorderBoxIsDisplayedAtTable(String tableId) {
        enhancedFlexGrid.assertBorderBoxAtEnhancedGrid(tableId);
    }

    @Then("I see pagination is displayed at the top and bottom right of table {string}")
    public void iSeePaginationIsDisplayedAtTheTopAndBottomRightOfTable(String tableId) {
        enhancedFlexGrid.assertPositionOfPaginationBar(tableId);
    }

    @Then("I see {string} column inside Enhanced grid id {string} of width {string}")
    public void iSeeColumnInsideEnhancedGridIdOfWidth(String columnName, String tableId, String width) {
        enhancedFlexGrid.assertColumnWidthOfEnhancedGridSpecificColumn(columnName, tableId, width);
    }

    @And("I hover mouse on link {string} at table")
    public void iHoverMouseOnLinkAtTable(String field) {
        I.amPerforming().waitFor().makeThreadSleep(3000);
        I.amPerforming().scroll().toMoveToElement(I.amPerforming().getElementReference().of(ByUsing.xpath("//div[@id='DataTableEnhanceProgramContactsFlexToggle']//div//table//tbody//td//*[contains(text(),'" + field + "')]")));
    }

    @Then("^I (see|do not see) \"([^\"]*)\" as \"([^\"]*)\" value inside mini page layout$")
    public void iSeeAsValueInsideMiniPageLayout(String usage, String displayType, String value) {
        enhancedFlexGrid.assertTypeAndTextInsideMiniPageLayout(usage, displayType, value);
    }
}