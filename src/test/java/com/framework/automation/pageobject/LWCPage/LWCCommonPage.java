package com.framework.automation.pageobject.LWCPage;

import com.framework.automation.projectmanager.GovGrantsManager;
import com.testingblaze.actionsfactory.api.ByUsing;
import com.testingblaze.register.I;
import org.junit.Assert;
import org.openqa.selenium.By;

public class LWCCommonPage extends GovGrantsManager {

    /******* "Variables and Locators" *****************/
    private final By reachOutToEnhancedGridCollapse;

    /**
     * Constructor to handle dependency injection and framework library
     */
    public LWCCommonPage() {
        reachOutToEnhancedGridCollapse = By.id("ProgramBudgetCategoryflexTable");
    }

    public void assertIfArrowValueDisplayed(String usage, String arrow, String tableTitle) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isArrowIsDisplayed(arrow, tableTitle));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isArrowIsDisplayed(arrow, tableTitle));
        }
    }

    public void headerDisplayedOrNot(String usage, String header) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(headerNameDisplayedInLwc(header));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(headerNameDisplayedInLwc(header));
        }
    }

    private boolean headerNameDisplayedInLwc(String header) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@class='slds-modal__container']/descendant::h2[text()='" + header + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    private boolean isArrowIsDisplayed(String arrow, String tableTitle) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//lightning-icon[@title='" + tableTitle + "']//lightning-primitive-icon//*[@data-key='" + arrow + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void clickOnButtonInsideTable(String button, String tableName) {
        if (tableName.contains("Attachments") || tableName.equals("Notes")) {
            I.amPerforming().click().withJavaScript(ByUsing.xpath("//*[text()='" + tableName + "']/parent::div/following-sibling::lightning-button//button[@title='" + button + "'] | //div[@class='NotesAttach']//div[@ng-controller='customNotesAppCtrl']/div//div/button[@type='button' and @title='" + button + "'] | " +
                    "//div[@class='panel panel-default ng-scope']/div//button[contains(@ng-click,'" + tableName + "') and @title='" + button + "'] | " +
                    "//div[@class='panel panel-default ng-scope']/div/div//button[contains(@title,'" + tableName + "')]//*[text()='" + button + "']"));
        } else if (tableName.contains("Contacts")) {
            I.amPerforming().click().withJavaScript(ByUsing.xpath("//*[text()='" + tableName + "']/parent::div//following-sibling::div//div//div//div/lightning-button//button[@title='" + button + "']"));
        } else if (tableName.contains("Associate table")) {
            I.amPerforming().click().withJavaScript(ByUsing.xpath("//button[@title='" + button + "' and @class='secondaryBtn ng-scope ng-binding']"));
        }
    }

}
