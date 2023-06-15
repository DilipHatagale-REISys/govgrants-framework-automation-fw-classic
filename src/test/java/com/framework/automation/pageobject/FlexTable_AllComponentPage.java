package com.framework.automation.pageobject;

import com.framework.automation.projectmanager.GovGrantsManager;
import com.testingblaze.actionsfactory.api.ByUsing;
import com.testingblaze.register.I;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

public class FlexTable_AllComponentPage extends GovGrantsManager {
    /******* "Variables and Locators" *****************/
    private static By SearchByCcXpath, SearchByToXpath;

    public FlexTable_AllComponentPage() {
        SearchByToXpath = By.xpath("//div[@class='form-group required ng-scope']//div//button[@type='button']");
        SearchByCcXpath = By.xpath("//div[@class='form-group ng-scope']//div//button[@type='button']");
    }


    public void assertTextIsCentrallyAlignedAtBottomOfTable(String usage, String text, String allignment, String tableId) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isTextAllignedCentreOrRight(text, allignment, tableId));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isTextAllignedCentreOrRight(text, allignment, tableId));
        }
    }

    private boolean isTextAllignedCentreOrRight(String text, String allignment, String tableId) {
        boolean flag = false;
        WebElement textAlligened = I.amPerforming().getElementReference().of(By.xpath("//div[@id='" + tableId + "']/div[@class='row ng-scope']/div/span[@ng-bind='totalRecords' and contains(text(),'" + text + "')] |" +
                " //div[@id='" + tableId + "']/descendant::div[@class='table-pager col-md-4 col-sm-4 col-xs-4 ng-scope']/span[@ng-bind='pageInfo' and contains(text(),'" + text + "')] |" +
                " //div[@id='" + tableId + "']/div[@class='row']/div/div/table/thead/tr/th/div/input[@aria-label='" + text + "']"));
        try {
            String rightLeftCentre = textAlligened.getCssValue("text-align");
            System.out.println("-------------" + textAlligened.getCssValue("text-align"));
            Assert.assertEquals(rightLeftCentre, allignment);
            {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    public void assertIfShowEntriesIsDisplayed(String usage, String text, String tableId) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isShowEntriesIsDisplayeOnFlexTable(text, tableId));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isShowEntriesIsDisplayeOnFlexTable(text, tableId));
        }
    }

    private Boolean isShowEntriesIsDisplayeOnFlexTable(String text, String tableId) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + tableId + "']/div[@class='row ng-scope']//div//span[contains(text(),'" + text + "')] |" +
                    " //div[@id='" + tableId + "']/div[@class='row ng-scope']/div/span/span//font[contains(text(),'" + text + "')] |" +
                    " //div[@id='" + tableId + "']/div[@class='row ng-scope']/div[@class='totalRecords col-md-4 col-sm-4 col-xs-4 ng-scope']/span[contains(text(),'" + text + "')]"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    public void assertIndexingIsAvailable(String usage, int startIndexing, int lastIndex, String tableId) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isIndexesIsAvailableOnPage(startIndexing, lastIndex, tableId));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isIndexesIsAvailableOnPage(startIndexing, lastIndex, tableId));
        }
    }

    private Boolean isIndexesIsAvailableOnPage(int startIndexing, int lastIndex, String tableId) {
        boolean flag = false;
        try {

            for (int i = startIndexing; i <= lastIndex; i++) {
                I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + tableId + "']/div[@class='row']/div/div/table/tbody/tr/td[@class='ng-scope ng-binding' and contains(text(),'" + i + "')]"));
            }
            flag = true;
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    public void assertRecordSelectionIsAvailable(String usage, int recordSelectionStart, int recordSelectionEnd, String tableId) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isRecordSelectionIsAvailableOnPage(recordSelectionStart, recordSelectionEnd, tableId));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isRecordSelectionIsAvailableOnPage(recordSelectionStart, recordSelectionEnd, tableId));
        }
    }

    private Boolean isRecordSelectionIsAvailableOnPage(int recordSelectionStart, int recordSelectionEnd, String tableId) {
        boolean flag = false;
        try {

            for (int i = recordSelectionStart; i <= recordSelectionEnd; i++) {
                I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + tableId + "']/div[@class='row']/div/div/table/tbody/tr/td[@class='ng-scope ng-binding' and contains(text(),'" + i + "')]/preceding-sibling::td[@class='pdf-wrap-td ng-scope']"));
            }
            flag = true;
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    public void assertColumnPositionAlignedAtLeftOrRight(String usage, String text, String allignment, String tableId) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isColumnAllignedLeftRight(text, allignment, tableId));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isColumnAllignedLeftRight(text, allignment, tableId));
        }
    }

    private boolean isColumnAllignedLeftRight(String text, String allignment, String tableId) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + tableId + "']/div[@class='row']/div/div/table/thead/tr/th[contains(@ng-if,\"" + allignment + "\")]/div/input[@aria-label='" + text + "']"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    public void assertActionButtonIsDisplayed(String usage, String button, String tableId) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isButtonDisplayedOnTable(button, tableId));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isButtonDisplayedOnTable(button, tableId));
        }
    }

    private boolean isButtonDisplayedOnTable(String button, String tableId) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + tableId + "']/preceding-sibling::div/div/div[@align='right']/div//span/a[@title='" + button + "'] |" +
                    " //div[@id='" + tableId + "']/div[@class='row ng-scope']/div/div[@class='" + button + "']/div/input[@id='quickSearchAllText']"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }
}
