package com.framework.automation.steps;

import org.springframework.context.annotation.Description;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.projectmanager.GovGrantsManager;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class CommonSteps {
    GovGrantsManager govGrantsManager;

    public CommonSteps(Controller controller, Handlers handler) {
        govGrantsManager = new GovGrantsManager(controller, handler);
    }

    @Description("click in admin menu to rechout to govegrants homepage")
    @When("^I access the \"([^\"]*)\"$")
    public void accessthehomepage(String tabName) {
        govGrantsManager.clickAdminNavBar(tabName);
    }

    @When("^I access the \"([^\"]*)\" to reach \"([^\"]*)\" tab$")
    public void reachOutToSpecificPhasesTab(String adminTabName, String phaseTabName) {
        govGrantsManager.clickAdminNavBar(adminTabName);
        govGrantsManager.clickPhasesNaveBar(phaseTabName);
    }

    @When("^I navigate to \"([^\"]*)\" to reach \"([^\"]*)\" side bar content$")
    public void navigateToSideBar(String sideBarCategory, String accordianSubHeaderDetail) {
        govGrantsManager.clickAccordiansubHeaderContent(sideBarCategory, accordianSubHeaderDetail);
    }

    @When("^I search for \"([^\"]*)\"$")
    public void performQuickSearch(String searchTerm)  {
        govGrantsManager.performQuickSearch(searchTerm);
    }

    @Then("^I see page title \"([^\"]*)\"$")
    public void asserPageTitle(String pageTitle) {
        govGrantsManager.assertPageTitle(pageTitle);
    }
}
