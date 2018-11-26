package com.framework.automation.steps;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.CoreHandlers;
import com.automation.rei.handlers.GovGrantsHandler;
import com.framework.automation.pageobject.FlexGridPage;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class FlexGridSteps {
    FlexGridPage flexGridPage;

    public FlexGridSteps(Controller controller, CoreHandlers handler, GovGrantsHandler govgrants) {
        flexGridPage = new FlexGridPage(controller, handler, govgrants);
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

    @Then("^I see \"([^\"]*)\" icon is not displayed inside PPMGV flex table$")
    public void assertActionIconNotDisplayedInsidePPMGVflexTable(String actionIcon) {
        flexGridPage.assertActionIconNotDisplayedInsidePPMGVflexTable(actionIcon);
    }
}
