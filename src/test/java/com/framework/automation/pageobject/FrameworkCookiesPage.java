package com.framework.automation.pageobject;


import com.framework.automation.projectmanager.GovGrantsManager;

import com.testingblaze.register.I;

import org.junit.Assert;

import org.openqa.selenium.By;


public class FrameworkCookiesPage extends GovGrantsManager {

    /******* "Variables and Locators" *****************/

    private static By defaultValueMassage;


    /**

     * Constructor to handle dependency injection and framework library

     */

    public FrameworkCookiesPage() {

        defaultValueMassage = By.xpath("//div[@class='panel-title custom-title ng-scope']/following::div/span[@class='sessionClass' and contains(text(),'Click ‘Reset Table’ under the menu icon to refresh the table’s default values')] " +

                "| //div[@class='container-fluid ng-scope']//span[text()='Click ‘Reset Table’ under the menu icon to refresh the table’s default values']");

    }


    /******* "Key Methods with complete functionality - public" *****************/


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






