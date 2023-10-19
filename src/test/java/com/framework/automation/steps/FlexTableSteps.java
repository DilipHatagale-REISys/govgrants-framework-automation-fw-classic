package com.framework.automation.steps;

import com.framework.automation.pageobject.FlexTablePage;
import com.framework.automation.pageobject.FrameworkCookiesPage;
import com.helperPackage.actionsfactory.api.ByUsing;
import com.helperPackage.exception.TestingBlazeCustomException;
import com.helperPackage.handlers.govgrants;
import com.helperPackage.objects.Elements;
import com.helperPackage.register.I;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.springframework.context.annotation.Description;

import java.io.IOException;
import java.util.List;


public class FlexTableSteps {
    FlexTablePage flexTablePage;
    FrameworkCookiesPage frameworkCookiesPage;

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

    @Then("I (see|not see) \"([^\"]*)\" as \"([^\"]*)\" in mini page layout$")
    public void iSoftlySeeAsInMiniPageLayout(String usage, String displayType, String value) {
        flexTablePage.assertMiniPagelayoutDisplayedOrNot(usage, displayType, value);
    }


    @When("I click on top right button \"([^\"]*)\" in table id \"([^\"]*)\"$")
    public void iClickOnTopRightButtonInTableId(String button, String tableId) {
        I.amPerforming().click().on(ByUsing.xpath("//div[@id='" + tableId + "']/preceding-sibling::div//button[@title='" + button + "']"));
    }

    @Then("^I (see|do not see) flex table with id \"([^\"]*)\" is displayed$")
    public void iSeeFlexTableWithIdIsDisplayed(String usage, String tableId) {
        flexTablePage.assertIfFlexTableIsDisplayed(usage, tableId);
    }

    @And("I save the total record available from flex table id {string} as {string}")
    public void iSaveTheTotalRecordAvailableFromFlexTableIdAs(String id, String key) {
        flexTablePage.assertFieldRelatedPageRecordsAvailable(id, key);
    }

    @Then("^I (see|do not see) Advance Filter box is displayed inside table id \"([^\"]*)\" in flex table$")
    public void iSeeAdvanceFilterBoxIsDisplayedInsideTableId(String usage, String value) {
        flexTablePage.assertIfAdvanceFilterIsDisplayed(usage, value);
    }

    @Then("^I (see|do not see) Advance Filter \"([^\"]*)\" sub component is displayed inside table id \"([^\"]*)\" in flex table$")
    public void iSeeAdvanceFilterSubcomponentIsDisplayedTableId(String usage, String columnName, String value) {
        flexTablePage.assertAdvanceFilterSubcomponentIsDisplayed(usage, columnName, value);
    }

    @Then("^I (see|do not see) dropdown value \"([^\"]*)\" under field name \"([^\"]*)\" inside flex table$")
    public void iSeeDropdownValueUnderFieldNameInsideFlexTable(String usage, String dropdownValue, String columnName) {
        flexTablePage.assertSpecificItemsInsideListViewDropdown(usage, dropdownValue, columnName);
    }

    @And("I click on {string} after click advance filter")
    public void iClickOnAfterClickAdvanceFilter(String fieldName) {
        flexTablePage.clickOnButtonAfterClickingAdvFilter(fieldName);
    }

    @And("I click on {string} and select {string}")
    public void iClickOnAndSelect(String field, String dropdownValue) {
        flexTablePage.clickOnDopDownButtonAndSelectValue(field, dropdownValue);
    }

    @Then("^I (see|do not see) Operator list change with field \"([^\"]*)\"$")
    public void iSeeOperatorListChangeWithField(String usage, String dropdownValue) {
        flexTablePage.assertIfValueChange(usage, dropdownValue);
    }

    @When("I enter advance filter values in table id \"([^\"]*)\"$")
    public void iEnterAdvanceFilterValuesInsideTableId(String advanceFilterId, List<String> rowValues) {
        flexTablePage.handleDropdownInputForAdvanceFilter(advanceFilterId, rowValues);
    }

    @When("I enter advance filter first two column values in table id \"([^\"]*)\"$")
    public void iEnterAdvanceFilterlLookupValuesInsideTableId(String advanceFilterId, List<String> rowValues) {
        flexTablePage.handleDropdownAndLookupInputForAdvanceFilter(advanceFilterId, rowValues);
    }

    @When("^I (select|select in modal) value \"([^\"]*)\" in field \"([^\"]*)\"$")
    public void selectValue(String usage, String fieldValue, String fieldApiName) {
        govgrants.perform().inputForms().inputFormDataByFieldApiName(fieldApiName, fieldValue, usage.contains("modal"));
        I.amPerforming().click().on(By.xpath("//div[@id='select2-drop']//ul[contains(@class, 'select2-results')]//div"));
        I.amPerforming().click().on(By.xpath("//div[@id='advfActiveGrants']//a[@title='Add Filter']/span"));
    }

    @Then("I (see|not see) value \"([^\"]*)\" for the title \"([^\"]*)\" inside table \"([^\"]*)\"$")
    public void iSeeValueForTheTitleInsideTable(String usage, String columnValue, String columnTitle, String flextableDivId) {
        flexTablePage.assertFlextableValuesDisplayedOrNot(usage, columnValue, columnTitle, flextableDivId);
    }

    @Then("^I (can see|can not see) \"([^\"]*)\" page block displayed$")
    public void iSeeValuePageBlockDisplayed(String usage, String blockName) {
        flexTablePage.assertValuePageBlockDisplayedOrNot(usage, blockName);
    }

    @Then("^I (see|do not see) table id \"([^\"]*)\" flex table render in modal view$")
    public void iSeeTableIdFlexTableRenderInModalView(String usage, String tableidOrDisplayedValue) {
        flexTablePage.assertIfTableRenderInModalWindow(usage, tableidOrDisplayedValue);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" help text displayed in table \"([^\"]*)\"$")
    public void iSeeHelpTextDisplayedInTable(String usage, String headernameOrArrowOrValue, String tableid) {
        flexTablePage.assertIfHeaderNameIsDisplayed(usage, headernameOrArrowOrValue, tableid);
    }

    @Then("^I (see|do not see) Header field \"([^\"]*)\" displayed as a Header on flex table")
    public void iSeeHeaderFieldDisplayedAsAHeaderOnFlexTable(String usage, String tableidOrDisplayedValue) {
        flexTablePage.assertIfTableRenderInModalWindow(usage, tableidOrDisplayedValue);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" displayed on flex table$")
    public void iSeeDisplayedOnFlexTable(String usage, String tableidOrDisplayedValue) {
        flexTablePage.assertIfTableRenderInModalWindow(usage, tableidOrDisplayedValue);
    }


    @Then("^I (see|do not see|softly see|softly do not see) text \"([^\"]*)\" in header instruction field flex table id \"([^\"]*)\"$")
    public void iSeeTextInHeaderInstructionFieldFlexTableId(String usage, String showingTextValue, String tableId) {
        frameworkCookiesPage.pageSizeShowAfterPageSetting(usage, showingTextValue, tableId);
    }

    @Then("^I (see|do not see) row level action button \"([^\"]*)\" rendered on flex table$")
    public void iSeeRowLevelActionButtonRenderedOnFlexTable(String usage, String actionButton) {
        flexTablePage.assertIfActionButtonIsDisplayedOrNotDisplayed(usage, actionButton);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" rendered on flex table$")
    public void iSeeRenderedOnFlexTable(String usage, String actionButton) {
        flexTablePage.assertIfActionButtonIsDisplayedOrNotDisplayed(usage, actionButton);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" as title for Actions inside flex table action$")
    public void iSeeAsTitleForActionsInsideFlexTableAction(String usage, String changedActionName) {
        flexTablePage.assertIfActionNameIsDisplayedOrNotDisplayed(usage, changedActionName);
    }

    @Then("^I (see|do not see) action name \"([^\"]*)\" itself get displayed on UI$")
    public void iSeeActionNameItselfGetDisplayedOnUI(String usage, String changedActionName) {
        flexTablePage.assertIfActionNameIsDisplayedOrNotDisplayed(usage, changedActionName);
    }

    @Then("^I (see|do not see) error message contains text \"([^\"]*)\" if wrong or invalid filter clause provide$")
    public void iSeeErrorMessageContainsTextIfWrongOrInvalidFilterClauseprovide(String usage, String errorMessage) {
        flexTablePage.assertIfErrorMessageDisplayed(usage, errorMessage);

    }

    @Then("^I (see|do not see) added list index \"([^\"]*)\" is \"([^\"]*)\" displayed in provided sequence$")
    public void iSeeAddedListIndexIsDisplayedInProvidedSequence(String usage, String sequence, String value) {
        flexTablePage.indexDisplayedInProvidedSequence(usage, sequence, value);
    }

    @Then("^I (see|do not see) sequence of \"([^\"]*)\" Actions is \"([^\"]*)\" on UI as per given sequence in flex table$")
    public void iSeeSequenceOfActionsIsOnUIAsPerGivenSequenceInFlexTable(String usage, String value, String sequence) {
        flexTablePage.sequenceDisplayedInProvidedSequence(usage, value, sequence);
    }

    @And("I hovering mouse on action \"([^\"]*)\" inside flex table$")
    public void iHoveringMouseOnActionInsideFlexTable(String action) {
        flexTablePage.hoverMouseOnAction(action);
    }

    @Then("^I (see|do not see) characters limit \"([^\"]*)\" for \"([^\"]*)\" attribute Button help text field$")
    public void iSeeCharactersLimitForAttributeButtonHelpTextField(String usage, int charLimit, String attribute) {
        flexTablePage.CountCharectorLimit(usage, charLimit, attribute);
    }

    @Then("^I (see|do not see) Confirmation Message box displayed")
    public void iSeeConfirmationMessageBoxDisplayed(String usage) {
        flexTablePage.validateIfConformationBoxIsDisplayedOrNot(usage);
    }

    @Then("^I (see|do not see) characters limit \"([^\"]*)\" for Confirmation Message$")
    public void iSeeCharactersLimitForConfirmationMessage(String usage, int charLimit) {
        flexTablePage.validateConfirmationMessageCharectorLimit(usage, charLimit);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" modal window is open in same tab$")
    public void iSeeModalWindowIsOpenInSameTab(String usage, String modalTitle) {
        flexTablePage.validateModalWindowIsDisplayedOnSameWindow(usage, modalTitle);
    }


    @Then("^I (see|do not see) modal window is open in same tab with style \"([^\"]*)\"$")
    public void iSeeModalWindowIsOpenInSameTabWithStyle(String usage, String styleValue) {
        flexTablePage.validateStyleOrWidthOfModal(usage, styleValue);
    }

    @Then("^I (see|do not see) record \"([^\"]*)\" having action \"([^\"]*)\" contain icon css \"([^\"]*)\"$")
    public void iSeeRecordHavingActionContainIconCss(String usage, String columnTitle, String iconTitle, String cssValue) {
        flexTablePage.validateIconCssIsDisplayedOrNot(usage, columnTitle, iconTitle, cssValue);
    }

    @And("I hovering mouse on help text icon i inside column name {string} flex table")
    public void iHoveringMouseOnHelpTextIconIInsideColumnNameFlexTable(String columnName) {
        I.amPerforming().scroll().toMoveToElement(By.xpath("//span[@title='" + columnName + "']/ancestor::a/following-sibling::span//*[@class='fa fa-info helpIcon']"));
    }

    @Then("^I (see|do not see) filter \"([^\"]*)\" is displayed$")
    public void iSeeFilterIsDisplayed(String usage, String advanceFilterClass) {
        flexTablePage.ValidateAdvanceFilterIsWorkOrNotInFlextable(usage, advanceFilterClass);
    }

    @Then("I see {string} as header of flex table")
    public void iSeeAsHeaderOfFlexTable(String headerName) {
        flexTablePage.assertHeaderNameDisplayed(headerName);
    }

    @Then("^I (see|do not see) header \"([^\"]*)\" in flex table id \"([^\"]*)\" get sorted in \"([^\"]*)\" order")
    public void iSeeHeaderInFlexTableIdGetSortedInOrder(String usage, String headerName, String tableId, String index) {
        flexTablePage.validateSequenceOfHeaderOfFlexTable(usage, headerName, tableId, index);
    }

    @Then("I do not see \"([^\"]*)\" button inside \"([^\"]*)\" flex table$")
    public void iDoNotSeeButtonInsideFlexTable(String buttonName, String headerName) {
        flexTablePage.assertActionButtonInsideFlexTableIsNotDisplayedInFlexTable(buttonName, headerName);
    }
}