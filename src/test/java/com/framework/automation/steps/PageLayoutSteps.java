package com.framework.automation.steps;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.GovGrantsHandler;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.pageobject.PageLayoutPage;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class PageLayoutSteps {
    PageLayoutPage pageLayoutPage;

    public PageLayoutSteps(Controller controller, Handlers handler, GovGrantsHandler govgrants) {
        pageLayoutPage = new PageLayoutPage(controller, handler, govgrants);
    }

    @When("^I click on \"([^\"]*)\" button in right header$")
    public void clickbuttonOnRightHeader(String buttonName) {
        pageLayoutPage.getRightHeaderButton(buttonName).click();
    }

    @When("^I click on \"([^\"]*)\" button inside detail page$")
    public void clickbuttonInsideDetailPage(String button) {
        pageLayoutPage.clickRightHeaderButtonInsideDetailPage(button);
    }

    @When("^I click on \"([^\"]*)\" sub tab inside page layout$")
    public void clickSubTabAfterSelectingFlexTableIcons(String subTabName) {
        pageLayoutPage.clickSubTab(subTabName);
    }
    
    @When("^I select \"([^\"]*)\" from dropdown$")
    public void selectFromDropdown(String itemName) {
        pageLayoutPage.getItemFromTopRightHeaderBars(itemName).click();
    }

    @Then("^I see \"([^\"]*)\" shown as over view title in header \"([^\"]*)\"$")
    public void assertOverViewTitleWithHeader(String overViewTitle, String overViewHeader) {
        pageLayoutPage.assertOverViewTitleWithHeader(overViewTitle, overViewHeader);
    }

    @Then("^I see \"([^\"]*)\" shown as page instruction text$")
    public void assertPageInstructionText(String pageInstructionText) {
        pageLayoutPage.assertPageInstructionText(pageInstructionText);
    }

    @Then("^I see \"([^\"]*)\" shown as over view header$")
    public void assertOverViewHeaderDisplayed(String headerName) {
        pageLayoutPage.assertOverViewHeaderDisplayed(headerName);
    }

    @Then("^I see \"([^\"]*)\" button is not displayed$")
    public void assertTopRightHeaderButtonNotDisplayed(String buttonName) {
        pageLayoutPage.assertTopRightButtonNotDisplayed(buttonName);
    }

    @Then("^I see Download as PDF options disabled$")
    public void assertPDFDownloadOptionsDisabled() {
        pageLayoutPage.assertDownloadPDFDisabled();
    }

    @Then("^I see \"([^\"]*)\" options disabled$")
    public void assertTopRightParallelLinesBarOptionsDisabled(String option) {
        pageLayoutPage.assertTakeSnapshotDisabled(option);
    }

    @Then("^I see prompt For automation is displayed$")
    public void assertPromptBoxDisplayed() {
        pageLayoutPage.assertPromptDialogBoxDisplayed();
    }

    @Then("^I see \"([^\"]*)\" button is not displayed at view detail page$")
    public void assertHeaderButtonsInsideDetailsPageNotDisplayed(String buttonName) {
        pageLayoutPage.assertHeaderButtonsNotDisplayed(buttonName);
    }
}
