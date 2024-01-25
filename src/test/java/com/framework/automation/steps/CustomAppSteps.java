package com.framework.automation.steps;

import com.framework.automation.pageobject.CustomAppPage;
import com.framework.automation.pageobject.SmokeSanityPage;
import com.helperPackage.actionsfactory.api.ByUsing;
import com.helperPackage.register.I;
import io.cucumber.java.en.Then;

public class CustomAppSteps {

    CustomAppPage customAppPage;
    public CustomAppSteps() {
        customAppPage = new CustomAppPage();
    }

    @Then("^I (see|do not see) position \"([^\"]*)\" option of custom app is at \"([^\"]*)\"$")
    public void iSeePositionOptionOfCustomAppIsAt(String usage, String dropDownItem, String position) {
        customAppPage.dropDownOptionDisplayed(usage, dropDownItem, position);
    }
}
