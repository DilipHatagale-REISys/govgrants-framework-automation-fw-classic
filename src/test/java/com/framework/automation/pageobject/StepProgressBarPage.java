package com.framework.automation.pageobject;

import org.testng.Assert;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.projectmanager.GovGrantsManager;

public class StepProgressBarPage extends GovGrantsManager {

	/******* "Variables and Locators" *****************/

	/**
	 * Constructor to handle dependency injection and framework library
	 */
	public StepProgressBarPage(Controller controller, Handlers reiDriver) {
		super(controller, reiDriver);

	}

	/******* "Key Methods with complete functionality - public" *****************/

	/**
	 * assert if step progress bar is not displayed
	 * 
	 */
	public void assertStepProgressBarForGrantor() {
		Assert.assertTrue(isStepProgressBarIsNotDisplayed());
	}

	/*********
	 * "Local Methods with Limited functionality - Private"
	 *****************/

	/**
	 * validate if step progress bar is displayed or not
	 * 
	 * @return: true if it is not displayed
	 */
	private boolean isStepProgressBarIsNotDisplayed() {
		boolean flag = true;
		try {
			if (reiDriver.findMyElement().getElement(stepProgressBar).isDisplayed()) {
				flag = false;
			}
		} catch (Exception e) {
		}
		return flag;
	}

}
