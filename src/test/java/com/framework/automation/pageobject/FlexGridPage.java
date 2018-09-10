package com.framework.automation.pageobject;

import org.openqa.selenium.By;
import org.testng.Assert;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.projectmanager.GovGrantsManager;

public class FlexGridPage extends GovGrantsManager {
    /******* "Variables and Locators" *****************/

    /**
     * Constructor to handle dependency injection and framework library
     */
    public FlexGridPage(Controller controller, Handlers reiDriver) {
        super(controller, reiDriver);
    }

    /******* "Key Methods with complete functionality - public" *****************/

    /**
     * assert if header name is correctly displayed insider flex table detail pages
     * 
     * @param headerName
     */
    public void assertHeaderNameDisplayed(String headerName) {
        reiDriver.JavaScript().scrollpageToSpecificElement(By.xpath(
                "//div[@class='panel-heading']//div[contains(@class,'panel-title')]/a[text()='" + headerName + "']"));
        Assert.assertTrue(getFlexGridPanels(headerName).isDisplayed());
    }
}
