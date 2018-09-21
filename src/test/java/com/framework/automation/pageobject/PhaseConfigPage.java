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

    /**
     * assert if specific phase appears at a specific position
     * 
     * @param phaseName
     * @param phasePoistion
     */
    public void assertSequenceOfPhase(String phaseName, int sequenceNumber) {
        Assert.assertTrue(isPhaseSequence(phaseName, sequenceNumber));
    }

    /**
     * assert number of charts displayed
     * 
     * @param numberOfCharts
     */
    public void assertNumberOfChartsDisplayed(int numberOfCharts) {
        Assert.assertEquals(numberOfCharts, reiDriver.findMyElement().getElements(chartsContainer).size());
    }

    /**
     * assert position of charts on page
     * 
     * @param position
     */
    public void assertPostionOfChartsDisplayed(String position) {
        switch (position.toUpperCase()) {
        case "BOTTOM":
            Assert.assertTrue(isChartsGridAtCorrectPosition(
                    reiDriver.findMyElement().getElements(containerFluid_PageWrapperList).size()));
            break;
        }
    }

    /**
     * Assert if specific phase is not displayed in task summary on home page
     * 
     * @param phaseName
     */
    public void assertPhaseNotDisplayedInTaskSummaryByPhase(String phaseName) {
        reiDriver.WaitFor().makeThreadSleep(1000);
        Assert.assertTrue(isPhaseNotDisplayedInTaskSummary(phaseName));
    }

    public void assertPhaseBookIconDisplayed(String phaseName) {
        Assert.assertTrue(reiDriver.WaitFor().WaitForElementToBePresent(By.xpath(
                "//div/ul[@class='nav navbar-nav']/li/a[@title='" + phaseName + "']//i[contains(@class,'fa-book')]"))
                .isDisplayed());
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

    /**
     * check the sequence of the phases
     * 
     * @param phaseName
     * @param sequenceNumber
     * @return true/false
     */
    private boolean isPhaseSequence(String phaseName, int sequenceNumber) {
        if (reiDriver.findMyElement().getElements(allPhases).get(sequenceNumber).getAttribute("title")
                .contains(phaseName)) {
            return true;
        } else
            return false;
    }

    /**
     * is position of charts grid true
     * 
     * @param positionNumber
     * @return
     */
    private boolean isChartsGridAtCorrectPosition(int positionNumber) {
        boolean flag = false;
        try {
            if (reiDriver.WaitFor()
                    .WaitForElementToBePresent(
                            By.cssSelector("div#page-content-wrapper>div.container-fluid>div>div>div:nth-of-type("
                                    + positionNumber + ") div#charts"))
                    .isEnabled()) {
                flag = true;
            }
        } catch (Exception e) {

        }
        return flag;
    }

    /**
     * is specific phase not displayed in task summary on homepage
     * 
     * @param positionNumber
     * @return
     */
    private boolean isPhaseNotDisplayedInTaskSummary(String phaseName) {
        boolean flag = true;
        try {
            if (reiDriver.findMyElement().getElement(getSpecificPhaseInTaskSummaryByPhase(phaseName)).isDisplayed()) {
                flag = false;
            }
        } catch (Exception e) {

        }
        return flag;
    }

}
