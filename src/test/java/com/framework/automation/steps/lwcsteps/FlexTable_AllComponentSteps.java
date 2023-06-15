package com.framework.automation.steps.lwcsteps;

import com.framework.automation.pageobject.FlexGridPage;
import com.framework.automation.pageobject.FlexTable_AllComponentPage;
import com.testingblaze.actionsfactory.api.ByUsing;
import com.testingblaze.register.I;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.openqa.selenium.WebElement;

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

    @Then("^I (see|do not see) \"([^\"]*)\" action is displayed at the \"([^\"]*)\" modal$")
    public void iSeeActionIsDisplayedAtTheModal(String usage, String menu, String tableId) {
        flexTable_AllComponentPage.assertActionButtonIsDisplayed(usage, menu, tableId);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" is displayed on table id \"([^\"]*)\"$")
    public void iSeeIsDisplayedOnTableId(String usage, String buttonName, String tableId) {
        flexTable_AllComponentPage.assertActionButtonIsDisplayed(usage, buttonName, tableId);
    }
}
