package com.framework.automation.steps;

import com.framework.automation.pageobject.FlexTablePage;
import com.testingblaze.exception.TestingBlazeCustomException;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.springframework.context.annotation.Description;

import java.io.IOException;


public class FlexTableSteps {
    FlexTablePage flexTablePage;

    public FlexTableSteps() {
        flexTablePage = new FlexTablePage();
    }

    @When("^I click on \"([^\"]*)\" icon for \"([^\"]*)\" to save inside subtab$")
    public void clickAnyIconInFlexTable(String iconName, String programRole) {
        flexTablePage.clickRowLevelActionIconsInsideSubTab(iconName, programRole);
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
    public void performSequenceOfActionsOnFlexTable(String durationOfRun) throws TestingBlazeCustomException {
        flexTablePage.performSequenceOfActionsOnFlexTable(durationOfRun);
    }

    @When("^I click toggle button for \"([^\"]*)\"$")
    public void clickToggleButtonAndSelect(String menuItemName) {
        flexTablePage.clickToggleButtonAndSelect(menuItemName);
    }

    @When("I only upload attachment {string} of type {string} from computer")
    public void iOnlyUploadAttachmentOfType(String fileName, String fileType) {
        flexTablePage.onlyUploadAttachmentFromComputerAtFlexTable(fileName, fileType);
    }

    @And("^I select value inside table \"([^\"]*)\" is \"([^\"]*)\"$")
    public void selectValueInsideShowEntriesDropdown(String flexTableId, String numberofEntries) {
        flexTablePage.clickAndSelectValueInsideShowEntriesDropdown(flexTableId, numberofEntries);
    }

    @Then("^I see \"([^\"]*)\" shown as flex table title$")
    public void assertFlextableTitle(String titleName) {
        flexTablePage.assertCorrectFlexTableTitleDisplayed(titleName);
    }

    @Then("^I see \"([^\"]*)\" options inside \"([^\"]*)\" disabled$")
    public void assertTopRightParallelLinesBarOptionsDisabled(String option1, String pannelTitleName) {
        flexTablePage.assertTopRightParallelLinesBarSpecificOptionsDisabled(option1, pannelTitleName);
    }

    @Then("^I (see|do not see) quick search option is displayed")
    public void assertQuickSearchOptionDisabled(String usage) {
        flexTablePage.assertquickSearchEnabled(usage);
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

    @Then("^I see no new tab is opened$")
    public void assertNoNewTabOpensOnEditClick() {
        flexTablePage.assertEditOpenInSameTab();
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

    @Then("^I see \"([^\"]*)\" with page size dropdown at \"([^\"]*)\"$")
    public void assertFlexTablePageSizeEnabled(String text, String tableId) {
        flexTablePage.assertFlexTabelPageSizeEnabled(text, tableId);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" with pagination arrow at \"([^\"]*)\" at \"([^\"]*)\"$")
    public void assertFlexTablePaginationEnabled(String usage, String text, String tableId, String uiType) {
        flexTablePage.assertFlexTabelPaginationEnabled(usage, text, tableId, uiType.equalsIgnoreCase("Top"));
    }

    @Then("^I see \"([^\"]*)\" records inside flex table id \"([^\"]*)\"$")
    public void assertFlexTableNoOfRecords(String rowCount, String tableId) {
        flexTablePage.assertFlexTabelNumberOfRecordsPresent(Integer.parseInt(rowCount), tableId);
    }

    @Then("^I see \"([^\"]*)\" shown as flex table column title$")
    public void assertFlextableColumnName(String columnTitleName) {
        flexTablePage.assertCorrectFlexTableColumnTitleDisplayed(columnTitleName);
    }

    @Then("^I (see|do not see) total amount in flex table$")
    public void assertTotalAmountInFlexTable(String usage) {
        flexTablePage.assertFlexTabelTotalCalulationAmountDiplayed(usage);
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

    @Then("^I see \"([^\"]*)\" button inside \"([^\"]*)\" flex table not displayed$")
    public void assertCreateButtonInsideActiveFundingOpprtunitiesFlexTable(String buttonName, String headerName) {
        flexTablePage.assertActionButtonInsideFlexTableIsNotDisplayed(buttonName, headerName);
    }

    @Then("^I see \"([^\"]*)\" is not displayed inside program flex table dropdown$")
    public void assertItemNotDisplayedInsideProgramFlexTable(String itemName) {
        flexTablePage.assertSpecificItemsInsideDropdown(itemName);
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

    @Then("^I see alert message \"([^\"]*)\"$")
    public void assertConfirmationAlertMessage(String message) {
        flexTablePage.assertTextMessageOnConfirmationAlert(message);
    }

    @Then("^I see take snap shot getting saved with \"([^\"]*)\"$")
    public void assertTakeSnapshotGettingSaved(String text) {
        flexTablePage.assertTakeSnapshotFunctionalityWorkingCorrectly(text);
    }

    @Then("^I see \"([^\"]*)\" is selected at program flex table$")
    public void assertFlexTableIsDisplayed(String tableTitle) {
        flexTablePage.assertFlexTableIsDisplayedWithTitle(tableTitle);
    }

    @Then("^I see \"([^\"]*)\" is displayed under total amount in flex table$")
    public void assertCurrencyUnitInFlexTableTotalAmount(String currencyUnit) {
        flexTablePage.assertFlexTabelCurrencyUnitInTotalAmount(currencyUnit);
    }

    @Then("^I (see|softly see) \"([^\"]*)\" button at \"([^\"]*)\" of  Modal window$")
    public void buttonsAtModalWindow(String usage, String buttonName, String buttonPosition) {
        flexTablePage.assertButtonsIsDisplayedAtModalWindow(usage, buttonName, buttonPosition);
    }

    @Then("I see actions are aligned at attachment")
    public void iSeeActionsAreAlignedAtAttachment() throws IOException {
        flexTablePage.assertActionsAreAlignedAtAttachment();
    }

    @Then("I see placeholder for quick search box as {string} inside {string} table")
    public void placeholderForQuickSearchBoxInsideTable(String placeholder, String tableId) {
        flexTablePage.assertQuickSearchBoxPlaceHolder(placeholder, tableId);
    }

    @Then("I see advance filter with data target value {string} displayed at right side of table {string}")
    public void iSeeAdvanceFilterDisplayedAtRightSideOfTable(String dataTargetValue, String tableId) {
        flexTablePage.assertDisplayOfAdvanceFilterAtRightSideOfTable(dataTargetValue, tableId);
    }

    @Then("^I see sequence of column \"([^\"]*)\" is in correct order inside table \"([^\"]*)\" with startvalue \"([^\"]*)\"$")
    public void assertContentOfColumnInExpectedOrder(String columnName, String tableId, String startValue) {
        flexTablePage.assertSequenceOfAutoIndexColumnDisplayed(columnName, tableId, Integer.parseInt(startValue));
    }

    @Then("^I see margin of \"([^\"]*)\" is present between scroll-bar and page size$")
    public void assertMarginBetweenScrollBarAndPageSize(String marginBottom) {
        flexTablePage.assertMarginBetweenScrollBarAndPageSize(marginBottom);
    }

    @Then("I see label containing value as {string} inside advance filter")
    public void iSeeLabelWithTextInsideAdvanceFilter(String value) {
        flexTablePage.assertTextInsideLabelAtAdvanceFilter(value);
    }

    @Then("I see cross icon is displayed at search box at {string}")
    public void iSeeCrossIconAtSearchBoxIsDisplayed(String tableId) {
        flexTablePage.assertCrossIconAtQuickSearchBox(tableId);
    }

    @Then("I see {string} is displayed inside History table dropdown menu")
    public void iSeeIsDisplayedInsideHistoryTableDropdownMenu(String dropdownOptions) {
        flexTablePage.assertOptionsInDropdownAtHistoryTable(dropdownOptions);
    }

    @Then("^I (softly see|softly do not see) \"([^\"]*)\" field is required$")
    public void iSeeFieldIsRequired(String usage, String fieldApiName) {
        flexTablePage.assertFieldIsRequired(usage, fieldApiName);
    }

    @And("I save the total record from flex table id {string} as {string}")
    public void iSaveTheTotalRecordFromFlexTableIdAs(String id, String key) {
        flexTablePage.assertFieldRelatedPageRecords(id,key);
    }
}