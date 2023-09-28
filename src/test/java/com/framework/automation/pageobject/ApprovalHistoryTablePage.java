package com.framework.automation.pageobject;

import com.framework.automation.projectmanager.GovGrantsManager;
import com.helperPackage.actionsfactory.api.ByUsing;
import com.helperPackage.register.I;
import org.junit.Assert;
import org.openqa.selenium.By;

public class ApprovalHistoryTablePage extends GovGrantsManager {
    /******* "Variables and Locators" *****************/
    private static By SearchByCcXpath, SearchByToXpath;

    public ApprovalHistoryTablePage() {
        SearchByToXpath = By.xpath("//div[@class='form-group required ng-scope']//div//button[@type='button']");
        SearchByCcXpath = By.xpath("//div[@class='form-group ng-scope']//div//button[@type='button']");
    }

    public void assertisDisplayedChangedCommentinTable(String usage, String state, String comment) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isDisplayedChangedCommentinTable(state, comment));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isDisplayedChangedCommentinTable(state, comment));
        }
    }

    private boolean isDisplayedChangedCommentinTable(String state, String comment) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='toggleApprovalHistory']//table/tbody//tr//*[contains(text(),'" + state + "')]/ancestor::tr//following-sibling::tr//*[contains(text(),'" + comment + "')]"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }
}
