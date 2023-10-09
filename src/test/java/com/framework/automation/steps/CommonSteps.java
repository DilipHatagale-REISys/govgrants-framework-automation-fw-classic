package com.framework.automation.steps;


import com.framework.automation.projectmanager.GovGrantsManager;
import com.helperPackage.register.I;
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
        String title = I.amPerforming().browserOperationsTo().getPageTitle();
        System.out.println("page title getting:" +title);
        govGrantsManager.assertPageTitle(pageTitle);
    }
}