package com.framework.automation.pageobject;

import com.framework.automation.projectmanager.GovGrantsManager;
import com.testingblaze.actionsfactory.api.ByUsing;
import com.testingblaze.register.I;
import org.junit.Assert;
import org.openqa.selenium.By;

public class FrameworkCookiesPage extends GovGrantsManager {
    /******* "Variables and Locators" *****************/


    private static By defaultValueMassage;

    public FrameworkCookiesPage() {
        defaultValueMassage = By.xpath("//div[@class='panel-title custom-title ng-scope']/following::div/span[@class='sessionClass' and contains(text(),'Click ‘Reset Table’ under the menu icon to refresh the table’s default values')] " +

                "| //div[@class='container-fluid ng-scope']//span[text()='Click ‘Reset Table’ under the menu icon to refresh the table’s default values']");
    }

    public void assertFlexTabelPaginationEnabled(String usage, String tableId) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(isLastPageOnPagination(tableId)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(isLastPageOnPagination(tableId)).isFalse();
        }
    }

    private Boolean isLastPageOnPagination(String tableId) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='"+ tableId +"']//div/span[@class='pull-right table-pager ng-scope']/a[@title='Last' and @ng-disabled='true']"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    public void assertPaginationOnCurrentPage(String usage, String tableId, String textContains) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(isCurrentPageDisplayed(tableId, textContains)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(isCurrentPageDisplayed(tableId, textContains)).isFalse();
        }
    }

    private Boolean isCurrentPageDisplayed(String tableId, String textContains ) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='"+ tableId +"']//div/span[@class='pull-right table-pager ng-scope']//span[@class='bold ng-binding' and contains(text(),'"+ textContains +"')]"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    public static void assertIfMessageDisplayed(String usage) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isMessageDisplayed());
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isMessageDisplayed());
        }
    }


    private static boolean isMessageDisplayed() {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(defaultValueMassage)) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }
}
