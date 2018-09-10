package com.framework.automation.pageobject;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.testng.Assert;
import com.automation.rei.controller.Controller;
import com.automation.rei.exception.ReiFrameworkCustomException;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.projectmanager.GovGrantsManager;
import com.framework.automation.projectmanager.UsersAndURL;

/**
 * Handles all login based methods and locators for Project
 */
public class LoginPage extends GovGrantsManager {
    
    /******* "Variables and Locators" *****************/
    
    private final By userName = By.xpath("//input[@name='username' or id ='username']");
    private final By password = By.xpath("//input[@id='password' or @type='password']");
    private final By loginButton = By.xpath("//input[@id='Login' or @type='submit']");
    private final By userAvatar = By.cssSelector("div#myNavbarProfile>ul>li>a>img[alt='User Avatar']");
    private final By userAvatarDownArrow = By.cssSelector("div#myNavbarProfile>ul>li>a>img[alt='User Avatar']+i");
    private final By logOutOption = By.xpath("//ul/li/a[@aria-label='Logout']");
    private final By loginPageLogo = By.xpath("//div[@id='logo_wrapper']//img[@class='standard_logo'and @alt='Salesforce']");

    /**
     * Constructor to handle dependency injection and framework library
     */
    public LoginPage(Controller controller, Handlers reiDriver) {
        super(controller, reiDriver);
    }

    /******* "Key Methods with complete functionality" *****************/

    /**
     * Enter user name to login
     */
    public void enterUserName(String loginName) {
        reiDriver.textInput().enterText(userName, loginName);
    }

    /**
     * Enter password to login
     */
    public void enterPassword(String loginPassword) {
        reiDriver.textInput().enterText(password, loginPassword);
    }

    /**
     * Enter on login click button
     */
    public void clickLogin() {
        reiDriver.findMyElement().getElement(loginButton).click();
    }

    /**
     * click logout to log out
     * @throws ReiFrameworkCustomException 
     */
    public void clickLogOut() throws ReiFrameworkCustomException {
        waitForNavigationLogo();
        reiDriver.WaitFor().WaitForElementToBePresent(userAvatar).click();
        reiDriver.WaitFor().specialCustomWait(5, logOutOption);
        reiDriver.Clickers().MouseClick(logOutOption);
    }

    /**
     * login according to user level i.e: exe , gm etc.
     */
    public void enterAsUser(String userLevel) {
        reiDriver.WaitFor().WaitForElementToBePresent(loginPageLogo);
        enterUserName(new UsersAndURL().handleUsersForEnv(userLevel));
        enterPassword(standardPassword);
    }

    /**
     * Complete login till reached home page
     */
    public void getToHomePage() {
        clickLogin();
        waitForEgmsHeader();
    }

    /**
     * Assert present on home page
     */
    public void assertHomePage() {
        Assert.assertTrue(isHomePageLogoPresent());
    }

    /******* "Local Methods with Limited functionality " **********/

    /**
     * Grab element if present after waiting
     */
    public WebElement getGovGrantsLauncher() {
        return reiDriver.WaitFor()
                .WaitForElementToBePresent(By.xpath("//a[contains(@title,'GovGrants Launcher Tab')]"));
    }

    /**
     * check if home page logo is present
     */
    public boolean isHomePageLogoPresent() {
        return reiDriver.findMyElement().getElement(egmsHeader)
                .isDisplayed();
    }

}
