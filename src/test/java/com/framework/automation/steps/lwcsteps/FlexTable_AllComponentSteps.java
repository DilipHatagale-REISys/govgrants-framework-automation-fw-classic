package com.framework.automation.steps.lwcsteps;

import com.helperPackage.handlers.govgrants;
import com.framework.automation.pageobject.FlexGridPage;
import com.framework.automation.pageobject.FlexTable_AllComponentPage;
import com.helperPackage.actionsfactory.api.ByUsing;
import com.helperPackage.objects.Elements;
import com.helperPackage.register.I;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.Point;
import org.openqa.selenium.WebElement;

import java.util.List;

public class FlexTable_AllComponentSteps {

    FlexTable_AllComponentPage flexTable_AllComponentPage;

    public FlexTable_AllComponentSteps() {
        flexTable_AllComponentPage = new FlexTable_AllComponentPage();
    }


    @Then("^I (see|do not see) \"([^\"]*)\" text-allignment is \"([^\"]*)\" in table id \"([^\"]*)\"$")
    public void iSeeTextAllignmentIsCentreInTableId(String usage, String text, String allignment, String tableId) {
        flexTable_AllComponentPage.assertTextIsCentrallyAlignedAtBottomOfTable(usage, text, allignment, tableId);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" page size inside table \"([^\"]*)\"$")
    public void iSeePageSizeInsideTable(String usage, String text, String tableId) {
        flexTable_AllComponentPage.assertIfShowEntriesIsDisplayed(usage, text, tableId);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" to \"([^\"]*)\" indexing inside table id \"([^\"]*)\"$")
    public void iSeeToIndexingInsideTableId(String usage, int startIndexing, int lastIndex, String tableId) {
        flexTable_AllComponentPage.assertIndexingIsAvailable(usage, startIndexing, lastIndex, tableId);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" to \"([^\"]*)\" Record Selection inside table id \"([^\"]*)\"$")
    public void iSeeToRecordSelectionInsideTableId(String usage, int recordSelectionStart, int recordSelectionEnd, String tableId) {
        flexTable_AllComponentPage.assertRecordSelectionIsAvailable(usage, recordSelectionStart, recordSelectionEnd, tableId);
    }

    @And("I get css value")
    public void iGetCssValue() {
        WebElement textAlligened = I.amPerforming().getElementReference().of(ByUsing.xpath("//div[@id='toggleFlexTablePrograms']/div[@class='row']/div/div/table/thead/tr/th/div/input[@aria-label='Select All Check Box']"));
        System.out.println("------position-------" + textAlligened.getCssValue("position"));
        System.out.println("------allign-------" + textAlligened.getCssValue("text-align"));
    }

    @Then("^I (see|do not see) \"([^\"]*)\" column position is \"([^\"]*)\" in table id \"([^\"]*)\"$")
    public void iSeeColumnPositionIsInTableId(String usage, String text, String allignment, String tableId) {
        flexTable_AllComponentPage.assertColumnPositionAlignedAtLeftOrRight(usage, text, allignment, tableId);
    }

    @Then("^I (see|do not see|softly see|softly do not see) \"([^\"]*)\" action is displayed at the \"([^\"]*)\" modal$")
    public void iSeeActionIsDisplayedAtTheModal(String usage, String menu, String tableId) {
        flexTable_AllComponentPage.assertActionButtonIsDisplayed(usage, menu, tableId);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" is displayed on table id \"([^\"]*)\"$")
    public void iSeeIsDisplayedOnTableId(String usage, String buttonName, String tableId) {
        flexTable_AllComponentPage.assertActionButtonIsDisplayed(usage, buttonName, tableId);
    }

    @Then("^I (see|do not see) value \"([^\"]*)\" is displayed inside table id \"([^\"]*)\"$")
    public void iSeeWebelementIsDisplayedInsideTableId(String usage, String displayedValue, String tableId) {
        flexTable_AllComponentPage.assertValueIsDisplayed(usage, displayedValue, tableId);
    }

    @When("I click on \"([^\"]*)\" button inside table id \"([^\"]*)\"$")
    public void iClickOnButtonInsideTableId(String buttonName, String tableId) {
        flexTable_AllComponentPage.clickOnMenuButton(buttonName, tableId);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" option is getting displayed under Menu in table \"([^\"]*)\"$")
    public void iSeeOptionIsGettingDisplayedUnderMenuInTable(String usage, String option, String tableId) {
        flexTable_AllComponentPage.assertOptionIsDisplayedUnderMenu(usage, option, tableId);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" options are available under Show Entries dropdown inside table id \"([^\"]*)\"$")
    public void iSeeOptionsAreAvailableUnderShowEntriesDropdownInsideTableId(String usage, int values, String tableId) {
        flexTable_AllComponentPage.assertShowEntriesDropdownIsDisplayed(usage, values, tableId);
    }

    @Then("^I (see|do not see) hyperlink at value \"([^\"]*)\" inside \"([^\"]*)\" columnname for tableId \"([^\"]*)\"$")
    public void iSeeHyperlinkAtValueInsideColumnnameForTableId(String usage, String value, String columnName, String tableId) {
        flexTable_AllComponentPage.assertHyperlinkTextIsDisplayed(usage, value, columnName, tableId);
    }

    @When("I enter advance filter values inside table id {string}")
    public void iEnterAdvanceFilterValuesInsideTableId(String advanceFilterId, List<String> rowValues) {
        flexTable_AllComponentPage.handleDropdownInputForAdvanceFilter(advanceFilterId, rowValues);
    }
    @Then("^I (see|do not see) page description is displayed \"([^\"]*)\" with \"([^\"]*)\" arrow inside table id \"([^\"]*)\"$")
    public void iSeePageDescriptionIsDisplayedWithArrowInsideTableId(String usage, String description, String button, String tableId) {
        flexTable_AllComponentPage.assertIfDescriptionButtonDisplayed(usage, description, button, tableId);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" button is enabled in flex table")
    public void iSeeButtonIsEnabledInFlexTable(String usage, String icon) {
        flexTable_AllComponentPage.assertButtonIsDisplayed(usage, icon);
    }
}
