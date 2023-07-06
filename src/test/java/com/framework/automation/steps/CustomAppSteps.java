package com.framework.automation.steps;

import com.framework.automation.pageobject.CustomAppPage;
import com.testingblaze.actionsfactory.api.ByUsing;
import com.testingblaze.register.I;
import io.cucumber.java.en.Then;

public class CustomAppSteps {

    CustomAppPage customAppPage;

    @Then("^I (see|do not see) position \"([^\"]*)\" option of custom app is at \"([^\"]*)\"$")
    public void iSeePositionOptionOfCustomAppIsAt(String usage, String dropDownItem, String position) {
        String getTestFromDropdown = I.amPerforming().getElementReference().of(ByUsing.xpath("(//div/ul/li[contains(@class,'dropdown appDropdown')]/ul/li)[" + position + "]")).getText();
        System.out.println("getTestFromDropdown Text:" + getTestFromDropdown);
        customAppPage.dropDownOptionDisplayed(usage, dropDownItem, position);
    }
}
