package com.framework.automation.steps;


import com.automation.rei.handlers.govgrants;
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
        //I.amPerforming().waitFor().makeThreadSleep(5000);
        I.amPerforming().waitFor().ElementToBeVisible(dropDownSelector1);
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

    @Description("To perform click on actions at comments under my feed section ex: like, Delete,Share etc")
    @And("^I click on \"([^\"]*)\" (action|action from dropdown) at \"([^\"]*)\" comment1 inside my feed$")
    public void iClickOnActionsAtCommentInsideMyFeed(String actionName, String chooseAction, String comment) {
        if (chooseAction.equalsIgnoreCase("action")) {
            I.amPerforming().waitFor().ElementToBeClickable(By.xpath("//div[text()='" + comment + "']/ancestor::div[contains(@class,'singleComment')]//a[text()='" + actionName + "'] | //*[text()='" + comment + "']/ancestor::div[contains(@class,'media-body')]//a[text()='" + actionName + "']"));
            I.amPerforming().click().on(By.xpath("//div[text()='" + comment + "']/ancestor::div[contains(@class,'singleComment')]//a[text()='" + actionName + "'] | //*[text()='" + comment + "']/ancestor::div[contains(@class,'media-body')]//a[text()='" + actionName + "']"));
        } else {
            I.amPerforming().click().on(By.xpath("//div[text()='" + comment + "']//a[text()='More Options']"));
            I.amPerforming().click().on(By.xpath("//div[text()='" + comment + "']//a[text()='" + actionName + "']"));
        }
    }

}