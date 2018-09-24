package com.framework.automation.pageobject;

import org.openqa.selenium.By;
import org.testng.Assert;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.projectmanager.GovGrantsManager;

public class ChartsPage extends GovGrantsManager {
    /******* "Variables and Locators" *****************/

    /**
     * Constructor to handle dependency injection and framework library
     */
    public ChartsPage(Controller controller, Handlers reiDriver) {
        super(controller, reiDriver);

    }

    /******* "Key Methods with complete functionality - public" *****************/

    public void assertChartTitleDisplayed(String title) {
        Assert.assertTrue(isChartTitleDisplayed(title));
    }

    /********* "Local Methods with complete functionality - private" ******/

    private boolean isChartTitleDisplayed(String title) {
        boolean flag = false;
        try {
            if (reiDriver.WaitFor().WaitForElementToBePresent(By.cssSelector("div#charts [title='" + title + "']"))
                    .isDisplayed()) {
                flag = true;
            }
        } catch (Exception e) {

        }
        return flag;
    }

}
