package com.framework.automation.pageobject.LWCPage;

import com.framework.automation.projectmanager.GovGrantsManager;
import com.helperPackage.actionsfactory.api.ByUsing;
import com.helperPackage.register.I;
import org.junit.Assert;
import org.openqa.selenium.By;

import java.util.List;

public class LWC_ApprovalHistoryComponentPage extends GovGrantsManager {
    /******* "Variables and Locators" *****************/
    private final By DescriptionFieldeUnderOverViewTab;

    /**
     * Constructor to handle dependency injection and framework library
     */
    public LWC_ApprovalHistoryComponentPage() {
        DescriptionFieldeUnderOverViewTab = By.xpath("//div[@id='fieldTest_Description__c']/parent::div/following-sibling::div/div[@id='fieldObjectives__c']");
    }

    public void assertIfMessageIsDisabled(String usage, String message) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isMessageIsDisplayed(message));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isMessageIsDisplayed(message));
        }
    }



    public void enterTextInsideDescriptionBox(String text) {
        I.amPerforming().textInput().in(ByUsing.xpath("//html//body[@aria-label='Editor, j_id0:MainPageID:j_id124:j_id125:componentForm:j_id339:1:j_id340:j_id342:j_id343:j_id359:3:j_id786:1:editor']"), text);
    }

    private boolean isMessageIsDisplayed(String message) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//gnt-approval-history//descendant::td[text()='" + message + "'] |" +
                    " //gnt-approval-history//descendant::td[contains(text(),'" + message + "')]"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

}
