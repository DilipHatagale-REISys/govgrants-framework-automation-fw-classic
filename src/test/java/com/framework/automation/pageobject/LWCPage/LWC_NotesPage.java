package com.framework.automation.pageobject.LWCPage;

import com.framework.automation.projectmanager.GovGrantsManager;
import com.helperPackage.actionsfactory.api.ByUsing;
import com.helperPackage.register.I;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;

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

    public void assertIfFormatingIsCorrect(String usage, String textValue, String htmlTag) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isFormatingTagIsCorrectlyDisplayed(textValue, htmlTag));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isFormatingTagIsCorrectlyDisplayed(textValue, htmlTag));
        }
    }

    public void assertTextAlignment(String usage, String textValue, String allignment) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(ifAssertTextAlignmentCenterRightLeft(textValue, allignment));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(ifAssertTextAlignmentCenterRightLeft(textValue, allignment));
        }
    }

    private boolean ifAssertTextAlignmentCenterRightLeft(String textValue, String allignment) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//*[contains(@style,'text-align: " + allignment + "') and contains(text(),'" + textValue + "')] |" +
                    " //p[contains(text(),'" + textValue + "')]"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    private boolean isFormatingTagIsCorrectlyDisplayed(String textValue, String htmlTag) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//tbody/tr//" + htmlTag + "[contains(text(),'" + textValue + "')] |" +
                    " //tbody/tr//td//" + htmlTag + "[@class='ql-indent-1' and contains(text(),'" + textValue + "')] |" +
                    " //tbody/tr//td//" + htmlTag + "[contains(text(),'" + textValue + "')]"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void selectDescriptionTextAndClickOnToolbar(String button) {
        By attachmentDescriptionPath = By.xpath("//lightning-input-rich-text//div[@class='slds-rich-text-editor__textarea slds-grid editor ql-container']/div/p  | //div[@class='slds-rich-text-editor__textarea slds-grid']");
        I.amPerforming().click().on(attachmentDescriptionPath);
        WebElement ele = I.amPerforming().getElementReference().of(ByUsing.xpath("//lightning-input-rich-text//div[@class='slds-rich-text-editor__textarea slds-grid editor ql-container']/div/p"));
        String selectAll = Keys.chord(Keys.CONTROL, "a");
        I.amPerforming().textInput().in(ele, selectAll);
        I.amPerforming().click().on(ByUsing.xpath("//div[@role='toolbar']/ul/li/button[@title='" + button + "']"));
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
