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

	private final By userName;
	private final By password;
	private final By loginButton;
	private final By userAvatar;
	private final By logOutOption;

	/**
	 * Constructor to handle dependency injection and framework library
	 */
	public LoginPage(Controller controller, Handlers reiDriver) {
		super(controller, reiDriver);
		userName = By.xpath("//input[@name='username' or id ='username']");
		password = By.xpath("//input[@id='password' or @type='password']");
		loginButton = By.xpath("//input[@id='Login' or @type='submit']");
		userAvatar = By.cssSelector("div#myNavbarProfile>ul>li>a>img[alt='User Avatar']");
		logOutOption = By.xpath("//ul/li/a[@aria-label='Logout']");
	}

	/******* "Key Methods with complete functionality" *****************/

	/**
	 * Enter user name to login
	 */
	public void enterUserName(String loginName) {
		reiDriver.WaitFor().WaitForElementToBePresent(userName);
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
	 * 
	 */
	public void clickLogOut() {
		waitForNavigationLogo();
		waitForNavigationLogo();
		reiDriver.WaitFor().specialCustomWait(5, userAvatar);
		try {
			reiDriver.Clickers().MouseClick(userAvatar);
		} catch (Exception e) {
			reiDriver.JavaScript().clickByJS(userAvatar);
		}
		reiDriver.WaitFor().specialCustomWait(5, logOutOption);
		reiDriver.Clickers().MouseClick(logOutOption);
	}

	/**
	 * login according to user level i.e: exe , gm etc.
	 */
	public void enterAsUser(String userLevel) {
		enterUserName(new UsersAndURL().handleUsersForEnv(userLevel));
		enterPassword(standardPassword);
	}

	/**
	 * Complete login till reached home page
	 */
	public void getToAdminPage() {
		clickLogin();
	}

	/**
	 * Assert present on home page
	 */
	public void assertHomePage() {
		Assert.assertTrue(isHomePageLogoPresent());
	}

	/******* "Local Methods with Limited functionality " **********/

	/**
	 * check if home page logo is present
	 */
	private boolean isHomePageLogoPresent() {
		return reiDriver.findMyElement().getElement(egmsHeader).isDisplayed();
	}

}
