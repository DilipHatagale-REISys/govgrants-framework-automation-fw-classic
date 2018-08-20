package com.framework.automation.steps;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.pageobject.GrantorHomePage;

import cucumber.api.java.en.Then;

public class GrantorHomeSteps {
    GrantorHomePage grantorHomePage;

    public GrantorHomeSteps(Controller controller, Handlers handler) {
        grantorHomePage = new GrantorHomePage(controller, handler);
    }
    
    
    @Then("^i see \"([^\"]*)\" shown at number \"([^\"]*)\" in sideBar$")
    public void assertSequenceOfAccordianSideBarHeader(String headerName, String sequenceNumber) {
        grantorHomePage.assertAccordianHeaderSequence(headerName, Integer.parseInt(sequenceNumber));
    }
}
