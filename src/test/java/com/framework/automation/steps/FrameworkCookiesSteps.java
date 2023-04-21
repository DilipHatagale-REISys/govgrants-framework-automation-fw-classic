package com.framework.automation.steps;

import com.framework.automation.pageobject.FrameworkCookiesPage;
import com.framework.automation.pageobject.LibraryFilesPage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;

public class FrameworkCookiesSteps {
    FrameworkCookiesPage frameworkCookiesPage;

    public FrameworkCookiesSteps() {
        frameworkCookiesPage = new FrameworkCookiesPage();
    }


    @Then("^I (see|do not see|softly see|softly do not see) user on last pagination page \"([^\"]*)\" table$")
    public void iSeeUserOnLastPaginationTable(String usage, String tableId) {
        frameworkCookiesPage.assertFlexTabelPaginationEnabled(usage, tableId);
    }

    @Then("^I (see|do not see|softly see|softly do not see) \"([^\"]*)\" table contains \"([^\"]*)\"$")
    public void iSeeTableContains(String usage, String tableId, String textContains) {
        frameworkCookiesPage.assertPaginationOnCurrentPage(usage, tableId, textContains);
    }
}

