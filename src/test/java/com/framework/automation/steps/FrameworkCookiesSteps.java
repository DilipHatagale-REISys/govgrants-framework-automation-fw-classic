package com.framework.automation.steps;

import com.helperPackage.handlers.govgrants;
import com.framework.automation.pageobject.FrameworkCookiesPage;
import com.helperPackage.actionsfactory.api.ByUsing;
import com.helperPackage.register.I;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;

public class FrameworkCookiesSteps {
    FrameworkCookiesPage frameworkCookiesPage;

    public FrameworkCookiesSteps() {
        frameworkCookiesPage = new FrameworkCookiesPage();
    }


    @Then("^I (see|do not see|softly see|softly do not see) user on last pagination page \"([^\"]*)\" table$")
    public void iSeeUserOnLastPaginationTable(String usage, String tableId) {
        frameworkCookiesPage.assertFlexTabelPaginationEnabled(usage, tableId);
    }

    @Then("^I (see|do not see|softly see|softly do not see) \"([^\"]*)\" table contains \"([^\"]*)\"$")
    public void iSeeTableContains(String usage, String tableId, String textContains) {
        frameworkCookiesPage.assertPaginationOnCurrentPage(usage, tableId, textContains);
    }

    @Then("^I (softly see|see|do not see) Click ‘Reset Table’ under the menu icon to refresh the table’s default values message in table")
    public void iDoNotSeeClickResetTableUnderTheMenuIconToRefreshTheTableSDefaultValuesMessageInTable(String usage) {
        FrameworkCookiesPage.assertIfMessageDisplayed(usage);
    }

    @And("I quick search {string} inside table {string}")
    public void iQuickSearchInsideTable(String textValue, String tableid) {
        frameworkCookiesPage.enterTextAndClickOnSearchButton(textValue, tableid);
    }

    @Then("^I (see|do not see|softly see|softly do not see) list contain \"([^\"]*)\" inside table \"([^\"]*)\"$")
    public void iSeeListContainInsideTable(String usage, String ProjectTitleList, String tableid) {
        frameworkCookiesPage.getListOfWebElementAfterSearchOperationPerform(usage, ProjectTitleList, tableid);
    }

    @And("I select {string} order by clicking on arrow beside of {string} in table {string}")
    public void iSelectOrderByClickingOnArrowBesideOfInTable(String order, String titleName, String tableid) {
        frameworkCookiesPage.selectAscendingOrDescendingOrder(order, titleName, tableid);
    }

    @Then("^I (see|do not see|softly see|softly do not see) \"([^\"]*)\" arrow is displayed inside \"([^\"]*)\" in table \"([^\"]*)\"$")
    public void iSeeArrowIsDisplayedInsideInTable(String usage, String arrow, String columnName, String tableid) {
        frameworkCookiesPage.upArrowOrDownArrowIsDisplayed(usage, arrow, columnName, tableid);
    }

    @And("I click on menu inside {string}")
    public void iClickOnMenuInside(String tableId) {
        I.amPerforming().click().on(ByUsing.xpath("//span[text()='" + tableId + "']/ancestor::div[@class='row displayFlexCenter ng-scope']//span[@class='dropdown']/a[@title='Menu']"));
        I.amPerforming().click().on(ByUsing.xpath("//div[@id='GrantorRelatedAwards2FlexToggle']/preceding-sibling::div//ul/li/a/span[contains(text(),'Reset Table')]"));
    }


    @Then("^I (see|do not see|softly see|softly do not see) the \"([^\"]*)\" message after Reset Table$")
    public void iSeeTheMessageAfterResetTable(String usage, String textMessage) {
        I.amPerforming().click().on(ByUsing.xpath("//span[text()='Scheduled Activities - All']/ancestor::div[@class='col-xs-6 col-md-7 header-title ']/following-sibling::div/span//ul/li/a/span[text()='Reset Table']"));
        frameworkCookiesPage.afterResetTableMessageDisplayed(usage, textMessage);
    }

    @Then("^I (see|do not see|softly see|softly do not see) table contains \"([^\"]*)\" inside table id \"([^\"]*)\"$")
    public void iSeeTableContainsInsideTableId(String usage, String showingTextValue, String tableId) {
        frameworkCookiesPage.pageSizeShowAfterPageSetting(usage, showingTextValue, tableId);
    }

    @Then("^I (see|do not see|softly see|softly do not see) user on \"([^\"]*)\" pagination page \"([^\"]*)\" table$")
    public void iSeeUserOnPaginationPageTable(String usage, String FirstOrLastPage, String tableId) {
        frameworkCookiesPage.assertFlexTableFirstOrLastPage(usage, FirstOrLastPage, tableId);
    }


    @Then("^I (see|do not see) the following message in \"([^\"]*)\" table :$")
    public void iSeeTheFollowingMessageInTable(String usage, String message, String tableId) {
        frameworkCookiesPage.resetMessageDisplayedOrNot(usage, message, tableId);
    }

    @And("I click on toggle button inside table {string} to select {string}")
    public void iClickOnToggleButtonInsideTableToSelect(String tableId, String listId) {
        frameworkCookiesPage.clickOnListViewAndSelectValue(tableId, listId);
    }

    @And("I click on {string} from parallel lines dropdown of Menu {string}")
    public void iClickOnFromParallelLinesDropdownOf(String action, String tableId) {
        frameworkCookiesPage.iClickOnRefreshResetTableOrDownloadAsPDFinsideMenuIcon(action, tableId);
    }

    @Then("^I (see|do not see) list view \"([^\"]*)\" displayed inside table \"([^\"]*)\"$")
    public void iSeeListViewDisplayedInsideTable(String usage, String listViewName, String tableId) {

    }

    @And("I click on \"([^\"]*)\" button inside tabel header \"([^\"]*)\"$")
    public void iClickOnButtonInsideTabelHeader(String button, String tableHeader) {
        frameworkCookiesPage.iClickOnCloseButtonWithHeader(button, tableHeader);
    }

    @Then("^I (see|do not see) field \"([^\"]*)\" as \"([^\"]*)\" inside program information$")
    public void iSeeFieldAsInsideProgramInformation(String usage,String field, String value) {
frameworkCookiesPage.displayProgramDetailsValueWithField(usage, field, value);
    }
}

