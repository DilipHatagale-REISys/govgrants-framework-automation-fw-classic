package com.framework.automation.steps;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.pageobject.FlexGridPage;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class FlexGridSteps {
    FlexGridPage flexGridPage;

    public FlexGridSteps(Controller controller, Handlers handler) {
        flexGridPage = new FlexGridPage(controller, handler);
    }

    @When("^I click on PPMGV parallel lines bar$")
    public void clickPPMGVParallelLinesBar() {
        flexGridPage.clickPPMGParallelLinesMenuBar();
    }
    
    @Then("^I see \"([^\"]*)\"\"([^\"]*)\" options disabled in PPMGV menu$")
    public void assertOptionsDisabledInPPMGVMenu(String option1, String option2) {
        flexGridPage.assertPPMGVParallelLinesBarSpecificOptionsDisabled(option1, option2);
    }

    @Then("^I see \"([^\"]*)\" as header$")
    public void assertPPMGVPanelheader(String headerName) {
        flexGridPage.assertHeaderNameDisplayed(headerName);
    }

    @Then("^I see quick search option disabled for \"([^\"]*)\"$")
    public void assertPPMGVQuickSearchNotDisplayed(String category) {
        flexGridPage.assertquickSearchDisabled(category);
    }
    
    @Then("^I see PPMGV menu bars not displayed$")
    public void assertProgramPerformanceMgmtGridViewMenuBarsNotDisplayed() {
        flexGridPage.assertprogramPerformanceMgmtGridViewMenuBarsNotDisplayed();
    }
    
    @Then("^I see \"([^\"]*)\" column for PPMGV flex table is not displayed$")
    public void assertSpecificColumnInPPMGVFlexTableNotDisplayed(String columnName) {
        flexGridPage.assertPPMGVFlexTableColumnNotDisplayed(columnName);
    }
}
