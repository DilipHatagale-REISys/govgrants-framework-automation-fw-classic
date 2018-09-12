package com.framework.automation.steps;

import java.io.IOException;

import org.springframework.context.annotation.Description;

import com.automation.rei.controller.Controller;
import com.automation.rei.exception.ReiFrameworkCustomException;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.pageobject.LoginPage;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class LoginSteps {
    LoginPage loginPage;

    public LoginSteps(Controller controller, Handlers handler) {
        loginPage = new LoginPage(controller, handler);
    }

    @Description("Enter user name to login")
    @Given("^I enter my user \"([^\"]*)\"$")
    public void enterUserName(String userName) {
        loginPage.enterUserName(userName);
    }

    @Description("Enter password to login")
    @Given("^I enter my password \"([^\"]*)\"$")
    public void enterPassword(String password) {
        loginPage.enterPassword(password);
    }

    @Description("Complete login process based on user category")
    @Given("^I login as \"([^\"]*)\" User$")
    public void login(String user) {
        loginPage.enterAsUser(user);
        loginPage.clickLogin();
    }

    @Description("Log out and login again according to user type")
    @When("^I re-login as \"([^\"]*)\"$")
    public void reLogin(String user) throws ReiFrameworkCustomException {
        loginPage.clickLogOut();
        loginPage.enterAsUser(user);
        loginPage.getToAdminPage();
    }

    @Description("Click on Login button")
    @When("^I login$")
    public void clickLogin() {
        loginPage.clickLogin();
    }

    @When("^I re-login as \"([^\"]*)\" with \"([^\"]*)\" url$")
    public void reLoginWithUrl(String user,String envName) throws ReiFrameworkCustomException, IOException  {    
        loginPage.clickLogOut();
        loginPage.navigateToURL(envName);
        loginPage.enterAsUser(user);
        loginPage.getToAdminPage();
    }
    
    @Description("Assert login is successful and landed on login page")
    @Then("^I am on the homepage$")
    public void assertHomepage() {
        loginPage.assertHomePage();
    }

}
