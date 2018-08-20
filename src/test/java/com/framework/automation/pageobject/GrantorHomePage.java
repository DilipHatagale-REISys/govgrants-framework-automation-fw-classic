package com.framework.automation.pageobject;

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
     * @param headerName
     * @param sequenceNumber
     */
    public void assertAccordianHeaderSequence(String headerName, int sequenceNumber) {
        Assert.assertTrue(isHeaderSequence(headerName,sequenceNumber));
    }

    
    /******** "Local Methods with Limited functionality - Private" *****************/
     
    /**
     * 
     * @param headerName: Header name in sidebar
     * @param sequenceNumber: item number in side bar
     * @return
     */
    private Boolean isHeaderSequence(String headerName, int sequenceNumber) {
        if (getSideBarHeadersList().get(sequenceNumber).getText().contains(headerName)) {
            return true;
        } else
            return false;
    }
}
