package com.framework.automation.steps;

import org.springframework.context.annotation.Description;

import com.automation.rei.handlers.GovGrantsHandler;
import com.framework.automation.pageobject.LoginPage;
import io.cucumber.java.en.*;
import eyethink.automation.bots.controller.Controller;
import eyethink.automation.bots.controller.CoreHandlers;

public class LoginSteps {
    LoginPage loginPage;

    public LoginSteps(Controller controller, CoreHandlers handler, GovGrantsHandler govgrants) {
        loginPage = new LoginPage(controller, handler, govgrants);
    }

    @Description("Assert login is successful and landed on login page")
    @Then("^I am on the homepage$")
    public void assertHomepage() {
        loginPage.assertHomePage();
    }

}
