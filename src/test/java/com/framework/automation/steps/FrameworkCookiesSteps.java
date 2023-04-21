package com.framework.automation.steps;

import com.framework.automation.pageobject.FrameworkCookiesPage;
import io.cucumber.java.en.Then;

public class FrameworkCookiesSteps {
    FrameworkCookiesPage frameworkCookiesPage;

    public FrameworkCookiesSteps() {
        frameworkCookiesPage = new FrameworkCookiesPage();
    }


    @Then("^I (softly see|see|do not see) Click ‘Reset Table’ under the menu icon to refresh the table’s default values message in table")
    public void iDoNotSeeClickResetTableUnderTheMenuIconToRefreshTheTableSDefaultValuesMessageInTable(String usage) {
        FrameworkCookiesPage.assertIfMessageDisplayed(usage);
    }

}
