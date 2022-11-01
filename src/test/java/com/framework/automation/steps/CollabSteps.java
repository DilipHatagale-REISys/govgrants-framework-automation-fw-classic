package com.framework.automation.steps;

import com.framework.automation.pageobject.CollabPage;
import com.framework.automation.pageobject.PageLayoutPage;
import com.framework.automation.projectmanager.GovGrantsManager;
import com.testingblaze.actionsfactory.api.ByUsing;
import com.testingblaze.register.I;
import io.cucumber.java.en.And;
import io.cucumber.java.en.When;
import org.apache.commons.lang3.StringUtils;
import org.openqa.selenium.By;

public class CollabSteps extends GovGrantsManager{
    CollabPage collabPage;

    @When("clicked on view icon if the test is for an {string} application")
    public void clickedOnViewIconIfTheTestIsForAnApplication(String existingApplicationYesorNo) {
        if(existingApplicationYesorNo.equalsIgnoreCase("Yes"))
        {
            collabPage.clickOnViewButton("1");
        }

    }
    private final By feedSection = ByUsing.xpath("//div/textarea[@class='mention-for-post']");

    public void enterDataInFeedSection(String value)
    {
        I.amPerforming().click().on(feedSection);
        I.amPerforming().textInput().in(feedSection, value);
        I.amPerforming().waitFor().makeThreadSleep(3000);
    }
    @When("enters {string} in my feed section")
    public void entersInMyFeedSection(String arg0) {
        enterDataInFeedSection(arg0);
    }

    @And("I click on {string} on the {string}")
    public void iClickOnOnThe(String buttonName, String arg1) {
        collabPage.ClickOnInsideMyFeed(buttonName);
    }

    @And("selects {string} from To dropdown")
    public void selectsFromToDropdown(String value) {
       // if (!StringUtils.isEmpty(value))
        //{
            collabPage.selectValueFromDropDown(value);
       // }
    }
}
