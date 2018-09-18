package com.framework.automation.pageobject;

import org.openqa.selenium.By;
import org.testng.Assert;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.projectmanager.GovGrantsManager;

public class PhaseConfigPage extends GovGrantsManager {
    /******* "Variables and Locators" *****************/

    /**
     * Constructor to handle dependency injection and framework library
     */
    public PhaseConfigPage(Controller controller, Handlers reiDriver) {
        super(controller, reiDriver);

    }

    /******* "Key Methods with complete functionality - public" *****************/

    /**
     * assert if a specific phase tab is not displayed
     * 
     * @param phaseName
     */
    public void assertSpecificPhaseNotDisplayed(String phaseName) {
        Assert.assertTrue(isPhaseNotDisplayed(phaseName));
    }
    
    /**
     * assert if a specific phase tab is displayed
     * 
     * @param phaseName
     */
    public void assertSpecificPhaseDisplayed(String phaseName) {
        Assert.assertTrue(isPhaseDisplayed(phaseName));
    }

    /*********
     * "Local Methods with complete functionality - private"
     *****************/

    /**
     * 
     * @param phaseName
     * @return true if phase is no displayed
     */
    private boolean isPhaseNotDisplayed(String phaseName) {
        boolean flag = true;
        try {
            if (reiDriver.findMyElement()
                    .getElement(By.xpath("//div/ul[@class='nav navbar-nav']/li/a[@title='" + phaseName + "']"))
                    .isDisplayed()) {
                flag = false;
            }
        } catch (Exception e) {

        }
        return flag;
    }

    /**
     * 
     * @param phaseName
     * @return true if phase is displayed
     */
    private boolean isPhaseDisplayed(String phaseName) {
        boolean flag = false;
        try {
            if (reiDriver.findMyElement()
                    .getElement(By.xpath("//div/ul[@class='nav navbar-nav']/li/a[@title='" + phaseName + "']"))
                    .isDisplayed()) {
                flag = true;
            }
        } catch (Exception e) {

        }
        return flag;
    }
}
