package com.framework.automation.pageobject.LWCPage;

import com.framework.automation.projectmanager.GovGrantsManager;
import com.testingblaze.actionsfactory.api.ByUsing;
import com.testingblaze.register.I;
import org.junit.Assert;
import org.openqa.selenium.By;

public class LWC_NotesPage extends GovGrantsManager {
    /******* "Variables and Locators" *****************/
    private final By DescriptionFieldeUnderOverViewTab;

    /**
     * Constructor to handle dependency injection and framework library
     */
    public LWC_NotesPage() {
        DescriptionFieldeUnderOverViewTab = By.xpath("//div[@id='fieldTest_Description__c']/parent::div/following-sibling::div/div[@id='fieldObjectives__c']");
    }

    public void assertIfMessageIsDisabled(String usage, String errorMsg) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isMessageIsDisplayed(errorMsg));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isMessageIsDisplayed(errorMsg));
        }
    }

    public void columnNameIsDisplayedOrNot(String usage, String tableName, String columnName) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isColumnDisplyedDisplayedInTable(tableName, columnName));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isColumnDisplyedDisplayedInTable(tableName, columnName));
        }
    }

    private boolean isColumnDisplyedDisplayedInTable(String tableName, String columnName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//span[@class='slds-text-heading_medium' and text()='" + tableName + "']/ancestor::div/following-sibling::div/table/thead//*[contains(text(),'" + columnName + "')]"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    private boolean isMessageIsDisplayed(String errorMsg) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[text()='" + errorMsg + "'] | //div[text()='" + errorMsg + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }
}
