package com.framework.automation.pageobject;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.testng.Assert;

import com.automation.rei.handlers.GovGrantsHandler;
import com.framework.automation.projectmanager.GovGrantsManager;

import eyethink.automation.bots.controller.Controller;
import eyethink.automation.bots.controller.CoreHandlers;

public class PhaseConfigPage extends GovGrantsManager {
	public final By customAppDropdown;

	/******* "Variables and Locators" *****************/

	/**
	 * Constructor to handle dependency injection and framework library
	 */
	public PhaseConfigPage(Controller controller, CoreHandlers reiDriver, GovGrantsHandler govgrants) {
		super(controller, reiDriver, govgrants);
		customAppDropdown = By.xpath("//div/ul/li[contains(@class,'dropdown appDropdown')]");
	}

	/******* "Key Methods with complete functionality - public" *****************/

	/**
	 * click on global search all
	 */
	public void clickOnGlobalSearchAll() {
		reiDriver.findMyElement().getElement(By.xpath("//select[@id='selectSearchId']")).click();
	}

	/**
	 * click on CustomApp Select dropdown inside grantor Home/Planning main page
	 */
	public void clickOnCustomAppSelectDropdown() {
		reiDriver.WaitFor().WaitForElementToBePresent(customAppDropdown).click();
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
	 * @param sequenceNumber
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

	/**
	 * Assert true for not showing passed objectType related entities in Recently
	 * Viewed option which is present in sidebar of phase Planning
	 * 
	 * @param acronym
	 *            = program or announcement or related entity
	 */
	public void assertThatObjectIsNotShowingInRecentlyViewedSideBarOption(String acronym) {
		Assert.assertTrue(isObjectNotShowingInRecentlyViewedSideBar(acronym));
	}

	/**
	 * assert if custom App is displayed inside custom app dropdown list
	 * 
	 * @param dropDownValue
	 */
	public void assertCustomAppValueInsideDropdownDisplayed(String dropDownValue) {
		Assert.assertTrue(isSpecificCustomAppDisplayed(dropDownValue));
	}

	/**
	 * assert if custom App is not displayed inside custom app dropdown list
	 * 
	 * @param dropDownValue
	 */
	public void assertCustomAppValueInsideDropdownNotDisplayed(String dropDownValue) {
		Assert.assertFalse(isSpecificCustomAppDisplayed(dropDownValue));
	}

	/**
	 * get item from custom App Dropdown
	 * 
	 * @param dropDownValue
	 * @return
	 */
	public WebElement getCustomAppFromCustomAppDropdown(String dropDownValue) {
		return reiDriver.findMyElement().getElement(By
				.xpath("//div/ul/li[contains(@class,'dropdown appDropdown')]/ul/li/a[@title='" + dropDownValue + "']"));
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
	 * @param phaseName
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

	/**
	 * Boolean true if the given object type such as program or announcement or any
	 * other relating entity is not present in Recently Viewed Side Bar option
	 * 
	 * @param acronym
	 *            this could be program or announcement or other relating entity
	 * @return true or false
	 */
	private boolean isObjectNotShowingInRecentlyViewedSideBar(String acronym) {
		boolean flag = true;
		try {
			if (reiDriver.WaitFor().WaitForElementToBePresent(By.xpath(
					".//span[text()='Recently Viewed']/parent::a/following-sibling::ul//li//span[starts-with(text(),'"
							+ acronym + "')]"))
					.isDisplayed()) {
				flag = false;
			}
		} catch (Exception e) {
		}
		return flag;
	}

	/**
	 * return true if specific custom App displayed
	 * 
	 * @param dropDownValue
	 * @return
	 */
	private boolean isSpecificCustomAppDisplayed(String dropDownValue) {
		boolean flag = false;
		try {
			if (getCustomAppFromCustomAppDropdown(dropDownValue).getAttribute("innerText").trim()
					.equalsIgnoreCase(dropDownValue)) {
				flag = true;
			}
		} catch (org.openqa.selenium.NoSuchElementException e) {

		}
		return flag;
	}
}