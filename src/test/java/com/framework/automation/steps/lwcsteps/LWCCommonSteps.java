package com.framework.automation.steps.lwcsteps;

import com.automation.rei.handlers.govgrants;
import com.framework.automation.pageobject.LWCPage.LWCCommonPage;
import com.framework.automation.pageobject.LWCPage.LWC_NotesPage;
import com.framework.automation.projectmanager.GovGrantsManager;
import com.testingblaze.actionsfactory.api.ByUsing;
import com.testingblaze.register.I;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class LWCCommonSteps extends GovGrantsManager {

    LWCCommonPage lwcCommonPage;

    public LWCCommonSteps() {
        lwcCommonPage = new LWCCommonPage();
    }

    @Then("^I (see|do not see) \"([^\"]*)\" arrow is displayed on \"([^\"]*)\" table expanded & not shrinked$")
    public void iSeeArrowIsDisplayedOnTable(String usage, String arrow, String tableTitle) {
        lwcCommonPage.assertIfArrowValueDisplayed(usage, arrow, tableTitle);
    }

    //step for shrink and expand block
    @And("I click on \"([^\"]*)\" arrow in \"([^\"]*)\" table$")
    public void iClickOnArrowInTable(String arrow, String tableTitle) {
        I.amPerforming().click().withJavaScript(ByUsing.xpath("//lightning-icon[@title='" + tableTitle + "']//lightning-primitive-icon//*[@class='slds-icon' and @data-key='" + arrow + "'] | //lightning-icon[@title='" + tableTitle + "']//lightning-primitive-icon//*[@class='slds-icon']"));
    }

    @And("I click on top right button \"([^\"]*)\" in tableName \"([^\"]*)\"$")
    public void iClickOnTopRightButtonInTableName(String button, String tableName) {
        lwcCommonPage.clickOnButtonInsideTable(button,tableName);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" is in LWC modal window$")
    public void iSeeIsInLWCModalWindow(String usage, String header) {
        lwcCommonPage.headerDisplayedOrNot(usage,header);
    }

}
