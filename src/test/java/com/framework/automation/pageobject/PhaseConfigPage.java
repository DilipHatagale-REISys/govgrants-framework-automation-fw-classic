package com.framework.automation.pageobject;

import org.openqa.selenium.By;
import org.testng.Assert;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.CoreHandlers;
import com.automation.rei.handlers.GovGrantsHandler;
import com.framework.automation.projectmanager.GovGrantsManager;

public class PhaseConfigPage extends GovGrantsManager {

	/******* "Variables and Locators" *****************/

	/**
	 * Constructor to handle dependency injection and framework library
	 */
	public PhaseConfigPage(Controller controller, CoreHandlers reiDriver, GovGrantsHandler govgrants) {
		super(controller, reiDriver, govgrants);
	}

	/******* "Key Methods with complete functionality - public" *****************/

	/**
	 * click on global search all
	 */
	public void clickOnGlobalSearchAll() {
		reiDriver.findMyElement().getElement(By.xpath("//select[@id='selectSearchId']")).click();
	}

	/**
	 * assert if a specific phase tab is not displayed
	 * 
	 * @param phaseName
	 */
	public void assertSpecificPhaseNotDisplayed(String phaseName) {
		Assert.assertTrue(isPhaseNotDisplayed(phaseName));
	}

	/**
	 * assert if a specific phase tab is displayed
	 * 
	 * @param phaseName
	 */
	public void assertSpecificPhaseDisplayed(String phaseName) {
		Assert.assertTrue(isPhaseDisplayed(phaseName));
	}

	/**
	 * assert if specific phase appears at a specific position
	 * 
	 * @param phaseName
	 * @param phasePoistion
	 */
	public void assertSequenceOfPhase(String phaseName, int sequenceNumber) {
		Assert.assertTrue(isPhaseSequence(phaseName, sequenceNumber));
	}

	/**
	 * assert number of charts displayed
	 * 
	 * @param numberOfCharts
	 */
	public void assertNumberOfChartsDisplayed(int numberOfCharts) {
		Assert.assertEquals(numberOfCharts, reiDriver.findMyElement().getElements(chartsContainer).size());
	}

	/**
	 * assert position of charts on page
	 * 
	 * @param position
	 */
	public void assertPostionOfChartsDisplayed(String position) {
		switch (position.toUpperCase()) {
		case "BOTTOM":
			Assert.assertTrue(isChartsGridAtCorrectPosition(
					reiDriver.findMyElement().getElements(containerFluid_PageWrapperList).size()));
			break;
		}
	}

	/**
	 * Assert if specific phase is not displayed in task summary on home page
	 * 
	 * @param phaseName
	 */
	public void assertPhaseNotDisplayedInTaskSummaryByPhase(String phaseName) {
		reiDriver.WaitFor().makeThreadSleep(1000);
		Assert.assertTrue(isPhaseNotDisplayedInTaskSummary(phaseName));
	}

	public void assertPhaseBookIconDisplayed(String phaseName) {
		Assert.assertTrue(reiDriver.WaitFor().WaitForElementToBePresent(By.xpath(
				"//div/ul[@class='nav navbar-nav']/li/a[@title='" + phaseName + "']//i[contains(@class,'fa-book')]"))
				.isDisplayed());
	}

	/**
	 * assert if phase tab planning is getting highlighted or not
	 */
	public void assertTabHighlightedInsideNewTab(String phaseName) {
		Assert.assertTrue(isParticularTabHighlighted(phaseName));
	}

	/**
	 * assert if changed label search item is present in global search All option in
	 * sidebar of phase planning
	 * 
	 * @param searchItem
	 */
	public void assertChangedLabelOfSearchedItemsInGlobalSearchAll(String searchItem) {
		String searchLocator = "//select[@id='selectSearchId']//option[text()='" + searchItem + "']";
		Assert.assertTrue(reiDriver.WaitFor().WaitForElementToBePresent(By.xpath(searchLocator)).isDisplayed());
	}

	/**
	 * assert if particular search item is present in global search All option in
	 * sidebar of phase planning
	 * 
	 * @param searchItem
	 */
	public void assertSearchedItemIsNotDisplayedInGlobalSearchAll(String searchItem) {
		Assert.assertTrue(isSearchedItemNotPresentInGlobalSearchAll(searchItem));
	}

	/********* "Local Methods with complete functionality - private" *********/

	/**
	 * 
	 * @param phaseName
	 * @return true if phase is no displayed
	 */
	private boolean isPhaseNotDisplayed(String phaseName) {
		boolean flag = true;
		try {
			if (reiDriver.findMyElement()
					.getElement(By.xpath("//div/ul[@class='nav navbar-nav']/li/a[@title='" + phaseName + "']"))
					.isDisplayed()) {
				flag = false;
			}
		} catch (Exception e) {

		}
		return flag;
	}

	/**
	 * 
	 * @param phaseName
	 * @return true if phase is displayed
	 */
	private boolean isPhaseDisplayed(String phaseName) {
		boolean flag = false;
		try {
			if (reiDriver.findMyElement()
					.getElement(By.xpath("//div/ul[@class='nav navbar-nav']/li/a[@title='" + phaseName + "']"))
					.isDisplayed()) {
				flag = true;
			}
		} catch (Exception e) {

		}
		return flag;
	}

	/**
	 * check the sequence of the phases
	 * 
	 * @param phaseName
	 * @param sequenceNumber
	 * @return true/false
	 */
	private boolean isPhaseSequence(String phaseName, int sequenceNumber) {
		if (reiDriver.findMyElement().getElements(allPhases).get(sequenceNumber).getAttribute("title")
				.contains(phaseName)) {
			return true;
		} else
			return false;
	}

	/**
	 * is position of charts grid true
	 * 
	 * @param positionNumber
	 * @return
	 */
	private boolean isChartsGridAtCorrectPosition(int positionNumber) {
		boolean flag = false;
		try {
			if (reiDriver.WaitFor()
					.WaitForElementToBePresent(
							By.cssSelector("div#page-content-wrapper>div.container-fluid>div>div>div:nth-of-type("
									+ positionNumber + ") div#charts"))
					.isEnabled()) {
				flag = true;
			}
		} catch (Exception e) {

		}
		return flag;
	}

	/**
	 * is specific phase not displayed in task summary on homepage
	 * 
	 * @param positionNumber
	 * @return
	 */
	private boolean isPhaseNotDisplayedInTaskSummary(String phaseName) {
		boolean flag = true;
		try {
			if (reiDriver.findMyElement().getElement(getSpecificPhaseInTaskSummaryByPhase(phaseName)).isDisplayed()) {
				flag = false;
			}
		} catch (Exception e) {

		}
		return flag;
	}

	/**
	 * Boolean status for planning phase getting highlighted or not inside new tab
	 * 
	 * @return
	 */
	private Boolean isParticularTabHighlighted(String phaseName) {
		boolean flag = false;
		reiDriver.switchTo().getWindowsHandlers();
		if (reiDriver.WaitFor()
				.WaitForElementToBePresent(
						By.xpath("//div/ul[@class='nav navbar-nav']/li[contains(@class,'ng-scope active')]/a[@title='"
								+ phaseName + "']"))
				.isDisplayed()) {
			flag = true;
		}
		return flag;
	}

	/**
	 * Boolean status for global search items for planning phase is displayed or not
	 * 
	 * @return
	 */
	private boolean isSearchedItemNotPresentInGlobalSearchAll(String searchItem) {
		boolean flag = true;
		try {
			if (reiDriver.WaitFor()
					.WaitForElementToBePresent(
							By.xpath("//select[@id='selectSearchId']//option[text()='" + searchItem + "']"))
					.isDisplayed()) {
				flag = false;
			}
		} catch (Exception e) {
		}
		return flag;
	}
}