package com.framework.automation.steps;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.pageobject.PhaseConfigPage;

import cucumber.api.java.en.Then;

public class PhaseConfigSteps {
    PhaseConfigPage phaseConfigPage;

    public PhaseConfigSteps(Controller controller, Handlers handler) {
        phaseConfigPage = new PhaseConfigPage(controller, handler);
    }

    @Then("^I do not see \"([^\"]*)\" phase$")
    public void assertPhaseNotDisplayed(String phaseName) {
        phaseConfigPage.assertSpecificPhaseNotDisplayed(phaseName);
    }

    @Then("^I see \"([^\"]*)\" phase$")
    public void asserPhaseDisplayed(String phaseName) {
        phaseConfigPage.assertSpecificPhaseDisplayed(phaseName);
    }

    @Then("^I see \"([^\"]*)\" phase at position \"([^\"]*)\"$")
    public void i_see_phase_at_position(String phaseName, String sequenceNumber) {
        phaseConfigPage.assertSequenceOfPhase(phaseName, Integer.parseInt(sequenceNumber));
    }
    
    @Then("^I see \"([^\"]*)\" charts are displayed$")
    public void assertNumberOfChartsDisplayed(String numberOfCharts) {
        phaseConfigPage.assertNumberOfChartsDisplayed(Integer.parseInt(numberOfCharts));
    }
}
