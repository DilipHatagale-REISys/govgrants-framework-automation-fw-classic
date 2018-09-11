package com.framework.automation.pageobject;

import org.openqa.selenium.By;
import org.testng.Assert;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.projectmanager.GovGrantsManager;

public class FlexGridPage extends GovGrantsManager {
    /******* "Variables and Locators" *****************/
    private final By isProgramPerformanceMgmtGridViewMenuBars;

    /**
     * Constructor to handle dependency injection and framework library
     */
    public FlexGridPage(Controller controller, Handlers reiDriver) {
        super(controller, reiDriver);
        isProgramPerformanceMgmtGridViewMenuBars = By.xpath(
                "//div[@id='flexGridHeaderButtonsProgramPerformanceMgmtGridView']//span[contains(@class,'fa fa-bars')]");
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

    /**
     * assert menu bars not displayed for Goals objectives / program Performance
     * Management
     */
    public void assertprogramPerformanceMgmtGridViewMenuBarsNotDisplayed() {
        Assert.assertTrue(programPerformanceMgmtGridViewMenuBarsNotDisplayed());
    }

    /**
     * assert quick search is not displayed for Goals objectives / program
     * Performance Management
     */
    public void assertquickSearchDisabled(String category) {
        Assert.assertTrue(programPerformanceMgmtGridViewQuickSearchDisabled(category));
    }

    /*********
     * "Local Methods with complete functionality - private"
     *****************/

    /**
     * menu bars not displayed for Goals objectives / program Performance Management
     * 
     * @return
     */
    private boolean programPerformanceMgmtGridViewMenuBarsNotDisplayed() {
        boolean flag = true;
        reiDriver.JavaScript().scrollpageToSpecificElement(
                By.xpath("//div[@id='flexGridHeaderButtonsProgramPerformanceMgmtGridView']"));
        try {
            if (reiDriver.findMyElement().getElement(isProgramPerformanceMgmtGridViewMenuBars).isDisplayed()) {
                return false;
            }
        } catch (Exception e) {
            flag = true;
        }
        return flag;

    }

    /**
     * validate if quick search is displayed or not
     * 
     * @return: true if it is not displayed
     */
    private boolean programPerformanceMgmtGridViewQuickSearchDisabled(String category) {
        boolean flag = true;
        reiDriver.JavaScript().scrollpageToSpecificElement(
                By.xpath("//div[@id='flexGridHeaderButtonsProgramPerformanceMgmtGridView']"));
        try {
            if (reiDriver.findMyElement().getElement(getSpecificQuickSearch(category)).isDisplayed()) {
                flag = false;
            }
        } catch (Exception e) {
        }
        return flag;
    }
}
