package com.framework.automation.steps;

import com.framework.automation.projectmanager.GovGrantsManager;
import eyethink.automation.bots.Register.EyeThink;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.springframework.context.annotation.Description;

public class CommonSteps {
    GovGrantsManager govGrantsManager;

    public CommonSteps() {
        govGrantsManager = new GovGrantsManager();
    }

    @Description("click in admin menu to rechout to govegrants homepage")
    @When("^I access the \"([^\"]*)\" for \"([^\"]*)\" app$")
    public void accessthehomepage(String tabName, String appName) {
        govGrantsManager.clickAdminNavBar(tabName, appName);
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

    @When("^I download the file$")
    public void saveTheFileToProjectRoot() throws Throwable {
        govGrantsManager.saveFile();
    }
}