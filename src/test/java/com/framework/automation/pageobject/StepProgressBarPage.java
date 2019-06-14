package com.framework.automation.pageobject;

import com.automation.rei.handlers.GovGrantsHandler;
import com.framework.automation.projectmanager.GovGrantsManager;
import eyethink.automation.bots.controller.Controller;
import eyethink.automation.bots.controller.CoreHandlers;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.testng.Assert;

import java.util.List;

public class StepProgressBarPage extends GovGrantsManager {
	public final By stepProgressBar;

	/**
	 * Constructor to handle dependency injection and framework library
	 */
	public StepProgressBarPage(Controller controller, CoreHandlers reiDriver, GovGrantsHandler govgrants) {
		super(controller, reiDriver, govgrants);
		stepProgressBar = By.xpath("//div[@class='container-fluid']//*[@id='progressBarId']//ol//li");
	}

	/******* "Key Methods with complete functionality - public" *****************/

	/**
	 * assert if step progress bar is not displayed
	 * 
	 */
	public void assertStepProgressBarForCustomApp() {
		Assert.assertTrue(isStepProgressBarIsNotDisplayed());
	}

	/**
	 * assert if step progress bar is not displayed
	 * 
	 */
	public void assertStepInsideStepProgressBarForUser(String statusName) {
		Assert.assertTrue(isStatusStepInsideProgressBarIsNotDisplayed(statusName));
	}

	/**
	 * assert if step progress bar is displayed
	 * 
	 */
	public void assertStepInsideStepProgressBarIsDisplayedForUser(String statusName) {
		Assert.assertFalse(isStatusStepInsideProgressBarIsNotDisplayed(statusName));
	}

	/**
	 * assert if status item submit for approval is on correct sequence in step
	 * progress bar
	 * 
	 * @param statusName
	 * @param sequenceNumber
	 */
	public void assertStatusSequenceInsideProgressBar(String statusName, int sequenceNumber) {
		Assert.assertTrue(isStatusItemSequence(statusName, sequenceNumber));
	}

	/**
	 * assert if changed display name for specific status of step progress bar is
	 * displayed
	 * 
	 */
	public void assertChangedDisplayNameInsideStepProgressBarForUser(String statusName) {
		Assert.assertFalse(isStatusStepInsideProgressBarIsNotDisplayed(statusName));
	}

	/**
	 * click on help text inside program information page block
	 * 
	 * @param statusName
	 */
	public void getHoveringContentOfStepProgressBar(String statusName) {
		reiDriver.WaitFor().specialCustomWait(By.xpath("//div[@class='container-fluid']"
				+ "//*[@id='progressBarId']//li//span[contains(text(),'" + statusName + "')]"));
		reiDriver.JavaScript().moveToElement(By.xpath("//div[@class='container-fluid']"
				+ "//*[@id='progressBarId']//li//span[contains(text(),'" + statusName + "')]"));
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

	/**
	 * @param statusName:
	 * @param sequenceNumber:
	 * 
	 * @return
	 */
	private Boolean isStatusItemSequence(String statusName, int sequenceNumber) {
		if (getallStatusItemList().get(sequenceNumber).getText().contains(statusName)) {
			return true;
		} else
			return false;
	}

	/**
	 * @return: List of all status item of step progress bar.
	 */
	private List<WebElement> getallStatusItemList() {
		return reiDriver.WaitFor().WaitForElementListToBeVisisble(stepProgressBar);
	}

	/**
	 * validate if status step 'submit for approval' is displayed or not inside step
	 * status progress bar
	 * 
	 * @return: true if it is not displayed
	 */
	private boolean isStatusStepInsideProgressBarIsNotDisplayed(String statusName) {
		boolean flag = false;
		try {
			if (govgrants.pageDetails().getSpecificStatusFromProgressBar(statusName).isDisplayed()) {
				flag = false;
			}
		} catch (Exception e) {
			flag = true;
		}
		return flag;
	}
}