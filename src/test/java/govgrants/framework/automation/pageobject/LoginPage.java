package govgrants.framework.automation.pageobject;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.testng.Assert;
import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;

import govgrants.framework.automation.projectmanager.GovGrantsManager;
import govgrants.framework.automation.projectmanager.UsersAndURL;

/**
 * Handles all login based methods and locators for Project
 */
public class LoginPage extends GovGrantsManager {
    
    /******* "Variables and Locators" *****************/
    
    private final By userName = By.xpath("//input[@placeholder='Username']");
    private final By password = By.xpath("//input[@placeholder='Password']");
    private final By loginButton = By.xpath("//input[@type='submit'] | //button[@type='submit']");
    private final By userAvatar = By.xpath("//div[@id='myNavbarProfile']/ul/li/a/img[@alt='User Avatar']");
    private final By logOutOption = By.xpath("//ul/li/a[@aria-label='Logout']");
    private final By loginPageLogo = By.xpath("//img[contains(@alt,'Enterprise Grants Management System')]");

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
        reiDriver.findMyElement().getElement(userName).sendKeys(loginName);
    }

    /**
     * Enter password to login
     */
    public void enterPassword(String loginPassword) {
        reiDriver.findMyElement().getElement(password).sendKeys(loginPassword);
    }

    /**
     * Enter on login click button
     */
    public void clickLogin() {
        reiDriver.findMyElement().getElement(loginButton).click();
    }

    /**
     * click logout to log out
     */
    public void clickLogOut() {
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
        enterPassword("passwrd");
    }

    /**
     * Complete login till reached home page
     */
    public void getToHomePage() {
        clickLogin();
        waitForHomePageLogo();
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
        return reiDriver.findMyElement().getElement(By.xpath("//div/ul[contains(@title,'GovGrants logo')]"))
                .isDisplayed();
    }

    /**
     * wait for home page logo to appear
     */
    public void waitForHomePageLogo() {
        reiDriver.WaitFor().WaitForElementToBePresent(By.xpath("//div/a/img[@alt='GovGrants Logo expanded']"));
    }

}
