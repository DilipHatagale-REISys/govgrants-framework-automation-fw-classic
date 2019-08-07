package com.framework.automation.steps;

import com.automation.rei.handlers.GovGrantsHandler;
import com.framework.automation.projectmanager.GovGrantsManager;
import cucumber.api.java.en.*;
import eyethink.automation.bots.controller.CoreHandlers;
import org.springframework.context.annotation.Description;

public class CommonSteps {
    GovGrantsManager govGrantsManager;

    public CommonSteps(CoreHandlers handler, GovGrantsHandler govgrants) {
        govGrantsManager = new GovGrantsManager(handler, govgrants);
    }

    @Description("click in admin menu to rechout to govegrants homepage")
    @When("^I access the \"([^\"]*)\" for \"([^\"]*)\" app$")
    public void accessthehomepage(String tabName, String appName) {
        govGrantsManager.clickAdminNavBar(tabName, appName);
    }

    @When("^I download the file$")
    public void saveTheFileToProjectRoot() throws Throwable {
        govGrantsManager.saveFile();
    }

    @Then("^I see page title \"([^\"]*)\"$")
    public void asserPageTitle(String pageTitle) {
        govGrantsManager.assertPageTitle(pageTitle);
    }

    @Then("^I see \"([^\"]*)\" in current url$")
    public void assertPlanningDefaultLandingTab(String content) {
        govGrantsManager.assertCurrentURL(content);
        ;
    }
}
