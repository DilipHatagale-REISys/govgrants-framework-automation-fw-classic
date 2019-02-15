package com.framework.automation.pageobject;

import org.openqa.selenium.By;
import org.testng.Assert;

import com.automation.rei.handlers.GovGrantsHandler;
import com.framework.automation.projectmanager.GovGrantsManager;

import eyethink.automation.bots.controller.Controller;
import eyethink.automation.bots.controller.CoreHandlers;

public class ChartsPage extends GovGrantsManager {
	/******* "Variables and Locators" *****************/

	/**
	 * Constructor to handle dependency injection and framework library
	 */
	public ChartsPage(Controller controller, CoreHandlers reiDriver, GovGrantsHandler govgrants) {
		super(controller, reiDriver, govgrants);
	}

	/******* "Key Methods with complete functionality - public" *****************/

	public void assertChartTitleDisplayed(String title) {
		Assert.assertTrue(isChartTitleDisplayed(title));
	}

	/**
	 * 
	 * @param chartName
	 */
	public void assertChartLegendNotDisplayed(String chartName) {
		Assert.assertTrue(isChartLegendNotDisplayed(chartName));
	}

	/**
	 * If correct text is displayed in xhart. like xaxis label and prefix
	 * 
	 * @param title
	 * @param chartName
	 */
	public void assertCorrectTextDisplayed(String title, String chartName) {
		Assert.assertTrue(reiDriver.WaitFor()
				.WaitForElementToBePresent(By.xpath("//div[@id='" + chartName
						+ "Id']//*[contains(@class,'highcharts-container')]//*[contains(text(),'" + title + "')]"))
				.getText().contains(title));
	}

	/********* "Local Methods with complete functionality - private" ******/

	/**
	 * If correct chart title is displayed
	 * 
	 * @param title
	 * @return true
	 */
	private boolean isChartTitleDisplayed(String title) {
		boolean flag = false;
		try {
			if (reiDriver.WaitFor().WaitForElementToBePresent(By.cssSelector("div#charts [title='" + title + "']"))
					.isDisplayed()) {
				flag = true;
			}
		} catch (Exception e) {
		}
		return flag;
	}

	/**
	 * If chart legends not displayed
	 * 
	 * @param title
	 * @return true
	 */
	private boolean isChartLegendNotDisplayed(String title) {
		boolean flag = true;
		try {
			if (reiDriver.findMyElement().getElement(By.cssSelector("div#" + title + "Id .highcharts-legend"))
					.isDisplayed()) {
				flag = false;
			}
		} catch (Exception e) {
		}
		return flag;
	}
}