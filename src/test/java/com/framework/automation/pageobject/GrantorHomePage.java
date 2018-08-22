package com.framework.automation.pageobject;

import org.openqa.selenium.WebElement;
import org.testng.Assert;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.projectmanager.GovGrantsManager;

public class GrantorHomePage extends GovGrantsManager {

    /******* "Variables and Locators" *****************/

    /**
     * Constructor to handle dependency injection and framework library
     */
    public GrantorHomePage(Controller controller, Handlers reiDriver) {
        super(controller, reiDriver);
    }

    /******* "Key Methods with complete functionality - public" *****************/

    /**
     * assert if header is on correct location in side bar
     * 
     * @param headerName
     * @param sequenceNumber
     */
    public void assertSideBarHeaderSequence(String headerName, int sequenceNumber) {
        Assert.assertTrue(isHeaderSequence(headerName, sequenceNumber));
    }

    /**
     * assert if Task menu is disabled from side bar
     * 
     * @param headerName
     */
    public void assertRemovalOfTaskMenu(String headerName) {
        Assert.assertFalse(isTaskMenuDisabled(headerName));
    }
    
    /**
     * @param subTabName
     * @param mainTabName
     */
    public void assertnewSubHeaderContentLabel(String subTabName,String mainTabName) {
        Assert.assertEquals(getSideBarAccordianSubHeaderContent(mainTabName,subTabName).getText(), subTabName);
    }

    /**
     * 
     * @param accordianHeaderName
     * @param number
     * @param headerName
     */
    public void assertAccordianHeaderSequence(String accordianHeaderName, int number, String headerName) {
        Assert.assertTrue(isAccordianHeaderSequence(accordianHeaderName, number, headerName) );
    }
    
    /********
     * "Local Methods with Limited functionality - Private"
     *****************/

    /**
     * 
     * @param headerName:
     *            Header name in sidebar
     * @param sequenceNumber:
     *            item number in side bar
     * @return
     */
    private Boolean isHeaderSequence(String headerName, int sequenceNumber) {
        if (getSideBarHeadersList().get(sequenceNumber).getText().contains(headerName)) {
            return true;
        } else
            return false;
    }

    /**
     * Boolean status of Task menu from sidebar
     * 
     * @param status
     */
    private Boolean isTaskMenuDisabled(String headerName) {
        for (WebElement we : getSideBarHeadersList()) {
            if (we.getText().equalsIgnoreCase(headerName)) {
                return true;
            }
        }
        return false;
    }
    
    private Boolean isAccordianHeaderSequence(String accordianHeaderName, int number, String headerName) {
        if (accordianHeadersList(headerName).get(number).getText().contains(accordianHeaderName)) {
            return true;
        } else
            return false;
    }
}
