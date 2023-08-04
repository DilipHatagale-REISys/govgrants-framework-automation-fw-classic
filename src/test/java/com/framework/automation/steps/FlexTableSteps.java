package com.framework.automation.steps;

import com.framework.automation.pageobject.FlexTablePage;
import com.testingblaze.actionsfactory.api.ByUsing;
import com.testingblaze.exception.TestingBlazeCustomException;
import com.testingblaze.register.I;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.springframework.context.annotation.Description;

import java.io.IOException;
import java.util.List;


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

    @Then("^I (see|do not see) select check box enabled in flex table$")
    public void assertOptionEnabledInFlexTable(String usage) {
        flexTablePage.assertFlexTabelRecordSelectionEnabled(usage);
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
        flexTablePage.assertFieldRelatedPageRecords(id, key);
    }

    @Then("I see {string} value in flextable {string}")
    public void iSeeValueInFlextable(String fileName, String tableName) {
        I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//span[text()='" + tableName + "']//ancestor::div[@class='col-md-12']//span[text()='" + fileName + "']"));
    }

    @Then("I can see last page displayed in pagination inside {string}")
    public void iCanSeeLastPageDisplayedInPaginationInside(String tableName) {
        String pagination = I.amPerforming().getElementReference().of(ByUsing.xpath("//span[@class='bold ng-binding']")).getText();
        String p1 = pagination.split(" ")[1];
        String p2 = pagination.split(" ")[3];
        //Assert.assertEquals(p1, p2);
    }


    @Then("I see alert message {string} does not contain PLEX Rocks on respective form layout")
    public void iSeeAlertMessageDoesNotContainPLEXRocksOnRespectiveFormLayout(String message) {
        String popupMessage = I.amPerforming().switchTo().getAlertText();
        Assert.assertTrue(popupMessage.equalsIgnoreCase(message));
        I.amPerforming().switchTo().acceptAlert();
        I.amPerforming().waitFor().makeThreadSleep(2000);
        I.amPerforming().click().on(ByUsing.xpath("//div[@class='alert alert-danger']/button[text()='×']"));
    }


    @Then("I see error message contains text {string}")
    public void iSeeErrorMessageContainsText(String errorMessage) {
        boolean errorMessageDisplayed = I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//span[@class='err-access-message' and contains(text(),'" + errorMessage + "')] " +
                "| //span[@id='theErrorPage:theError' and contains(text(),'" + errorMessage + "')] " +
                "| //div[@class='slds-text-longform']//h3[text()='" + errorMessage + "'] " +
                "| //li/span[@class='dynamic-msg-box-margin' and contains(text(),'" + errorMessage + "')]"));
        Assert.assertTrue(errorMessageDisplayed);
    }

    @And("I enter this {string} before {string} parameter and navigate to new URL")
    public void iEnterThisBeforeParameter(String script, String parameter) {
        String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
        String p1 = url.split(parameter)[0];
        String p2 = parameter;
        String p3 = url.split(parameter)[1];
        String newUrl = p1 + script + p2 + p3;
        System.out.println("String newUrl4 :" + newUrl);
        I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
    }

    @And("I enter this {string} before {string} and {string} parameter and navigate to new URL")
    public void iEnterThisBeforeAndParameter(String script, String parameter1, String parameter2) {
        String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
        String p1 = url.split(parameter1)[0];
        String p2 = parameter1;
        String p3 = url.split(parameter1)[1];
        String newUrl = p1 + script + p2 + p3;
        String u1 = newUrl.split(parameter2)[0];
        String u2 = parameter2;
        String u3 = url.split(parameter2)[1];
        String newUrl1 = u1 + script + u2 + u3;
        I.amPerforming().browserOperationsTo().navigateToUrl(newUrl1);
    }

    @And("I enter this {string} script before {string}, {string}, {string}, {string}, {string} parameter and navigate to new URL")
    public void iEnterThisScriptBeforeParameterAndNavigateToNewURL(String script, String par1, String par2, String par3, String par4, String par5) {
        String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
        String p1 = url.split(par1)[0];
        String p2 = par1;
        String p3 = url.split(par1)[1];
        String newUrl = p1 + script + p2 + p3;
        String u1 = newUrl.split(par2)[0];
        String u2 = par2;
        String u3 = url.split(par2)[1];
        String newUrl1 = u1 + script + u2 + u3;
        String v1 = newUrl1.split(par3)[0];
        String v2 = par3;
        String v3 = newUrl1.split(par3)[1];
        String newUrl2 = v1 + script + v2 + v3;
        String w1 = newUrl2.split(par4)[0];
        String w2 = par4;
        String w3 = newUrl2.split(par4)[1];
        String newUrl3 = w1 + script + w2 + w3;
        String x1 = newUrl3.split(par5)[0];
        String x2 = par5;
        String x3 = newUrl3.split(par5)[1];
        String newUrl4 = x1 + script + x2 + x3;
        System.out.println("String newUrl4 :" + newUrl4);
        I.amPerforming().browserOperationsTo().navigateToUrl(newUrl4);
    }

    @And("I enter this {string} script twice before {string} and {string} parameter and navigate to new URL")
    public void iEnterThisScriptTwiceBeforeAndParameterAndNavigateToNewURL(String script, String parameter1, String parameter2) {
        String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
        String p1 = url.split(parameter1)[0];
        String p2 = parameter1;
        String p3 = url.split(parameter1)[1];
        String newUrl = p1 + script + script + p2 + p3;
        String u1 = newUrl.split(parameter2)[0];
        String u2 = parameter2;
        String u3 = url.split(parameter2)[1];
        String newUrl1 = u1 + script + script + u2 + u3;
        I.amPerforming().browserOperationsTo().navigateToUrl(newUrl1);
    }

    @When("I hovering mouse on help text {string} icon")
    public void iHoveringMouseOnHelpTextIcon(String iconId) {
        flexTablePage.getHelpTextFromIcon(iconId);
    }

    @When("I enter advance filter values in table id \"([^\"]*)\"$")
    public void iEnterAdvanceFilterValuesInsideTableId(String advanceFilterId, List<String> rowValues) {
        flexTablePage.handleDropdownInputForAdvanceFilter(advanceFilterId, rowValues);
    }

    @Then("I (see|not see) value \"([^\"]*)\" for the title \"([^\"]*)\" inside table \"([^\"]*)\"$")
    public void iSeeValueForTheTitleInsideTable(String usage, String columnValue, String columnTitle, String flextableDivId) {
        flexTablePage.assertFlextableValuesDisplayedOrNot(usage, columnValue, columnTitle, flextableDivId);
    }

    @Then("I (see|not see) \"([^\"]*)\" as \"([^\"]*)\" in mini page layout$")
    public void iSoftlySeeAsInMiniPageLayout(String usage, String displayType, String value) {
        flexTablePage.assertMiniPagelayoutDisplayedOrNot(usage, displayType, value);
    }


    @When("I click on top right button \"([^\"]*)\" in table id \"([^\"]*)\"$")
    public void iClickOnTopRightButtonInTableId(String button, String tableId) {
        I.amPerforming().click().on(ByUsing.xpath("//div[@id='" + tableId + "']/preceding-sibling::div//button[@title='" + button + "']"));
    }
}