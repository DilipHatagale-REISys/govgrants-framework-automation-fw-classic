package com.framework.automation.pageobject;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.testng.Assert;
import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.projectmanager.GovGrantsManager;

public class FormPage extends GovGrantsManager {

	/******* "Variables and Locators" *****************/

	private final By businessFormSection;

	public FormPage(Controller controller, Handlers reiDriver) {
		super(controller, reiDriver);

		businessFormSection = By.xpath(
				"//a//span[contains(text(),'Business Forms')]/ancestor::div[contains(@class,'panel panel-default ng-scope')]");
	}

	/******* "Key Methods with complete functionality - public" *****************/

	/**
	 * assert business form not displayed inside attachment under application view
	 * detail page
	 */
	public void assertBusinessFormVisibility() {
		Assert.assertTrue(isBusinessFormSectionNotDisplayed());
	}

	/**
	 * assert preview action item not displayed inside business form action for
	 * internal user
	 */
	public void assertPreviewActionVisibility(String Item) {
		Assert.assertTrue(isPreviewActionItemNotDisplayForInternalUser(Item));
	}

	/*********
	 * "Local Methods with complete functionality - private"
	 *****************/

	/**
	 * validate if options are not displayed
	 * 
	 * @return: true if it is not displayed
	 */
	private boolean isBusinessFormSectionNotDisplayed() {
		boolean flag = false;
		try {
			if (reiDriver.findMyElement().getElement(businessFormSection).isDisplayed()) {
				flag = false;
			}
		} catch (Exception e) {
			flag = true;
		}
		return flag;
	}

	/**
	 * validate if action item are not displayed
	 * 
	 * @return: true if it is not displayed
	 */
	private boolean isPreviewActionItemNotDisplayForInternalUser(String Item) {
		boolean flag = false;
		try {
			if (getAllActionItemInsideBusinessForm(Item).isDisplayed()) {
				flag = false;
			}
		} catch (Exception e) {
			flag = true;
		}
		return flag;
	}

	/**
	 * check title of any action item
	 * 
	 * @param item
	 * @return
	 */
	private WebElement getAllActionItemInsideBusinessForm(String Item) {
		return reiDriver.WaitFor().WaitForElementToBePresent(
				By.xpath(("//div[@id='FormComponent']//div/table/tbody/tr//td//a[@title='" + Item + "']")));
	}
}
