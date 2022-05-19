package com.framework.automation.steps;


import com.framework.automation.projectmanager.GovGrantsManager;
import com.testingblaze.register.I;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.springframework.context.annotation.Description;

import java.util.List;

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

    @And("^I enter someting in \"([^\"]*)\"$")
    public void handleDropdownInputForAdvanceFilter(String advanceFilterId, List<String> rowvalues) {
        By dropDownSelector1 = By.xpath("//div[@id='" + advanceFilterId + "']//label[contains(text(),'Column')]/..//select");
        By dropDownSelector2 = By.xpath("//div[@id='" + advanceFilterId + "']//label[contains(text(),'Operator')]/..//select");
        By dropDownSelector3 = By.xpath("//div[@id='" + advanceFilterId + "']//label[contains(text(),'Value')]/..//select");
        By inputField = By.xpath("//div[@id='" + advanceFilterId + "']//input|//div[@id='" + advanceFilterId + "']//textarea");
        By filterAction = By.xpath("//div[@id='" + advanceFilterId + "']//a[@title='Add Filter']/span");
        I.amPerforming().waitFor().makeThreadSleep(5000);
        I.amPerforming().dropDownSelection().from(dropDownSelector1).selectByVisibleText(rowvalues.get(0).toString());
       // I.amPerforming().waitFor().makeThreadSleep(5000);
        I.amPerforming().dropDownSelection().from(dropDownSelector2).selectByVisibleText(rowvalues.get(1).toString());
       // I.amPerforming().waitFor().makeThreadSleep(5000);
        if (I.amPerforming().checkToSee().IsElementPresentQuick(inputField)) {
            //I.amPerforming().waitFor().makeThreadSleep(5000);
            I.amPerforming().textInput().in(inputField, rowvalues.get(2).toString());
        } else {
            //I.amPerforming().waitFor().makeThreadSleep(5000);
            I.amPerforming().dropDownSelection().from(dropDownSelector3).selectByVisibleText(rowvalues.get(2).toString());
        }

        //I.amPerforming().waitFor().makeThreadSleep(5000);
        I.amPerforming().click().on(filterAction);
    }

}