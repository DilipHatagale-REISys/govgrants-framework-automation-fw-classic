package com.framework.automation.pageobject;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.testng.Assert;

import com.automation.rei.handlers.GovGrantsHandler;
import com.framework.automation.projectmanager.GovGrantsManager;

import eyethink.automation.bots.controller.Controller;
import eyethink.automation.bots.controller.CoreHandlers;

public class FlexGridPage extends GovGrantsManager {

	/******* "Variables and Locators" *****************/
	private final By programPerformanceMgmtGridViewMenuBars;

	/**
	 * Constructor to handle dependency injection and framework library
	 */
	public FlexGridPage(Controller controller, CoreHandlers reiDriver, GovGrantsHandler govgrants) {
		super(controller, reiDriver, govgrants);
		programPerformanceMgmtGridViewMenuBars = By.xpath(
				"//div[@id='flexGridHeaderButtonsProgramPerformanceMgmtGridView']//span[contains(@class,'fa fa-bars')]");
	}

	/******* "Key Methods with complete functionality - public" *****************/

	public void clickPPMGParallelLinesMenuBar() {
		reiDriver.WaitFor().WaitForElementToBePresent(programPerformanceMgmtGridViewMenuBars).click();
	}

	/**
	 * assert if header name is correctly displayed insider flex table detail pages
	 * 
	 * @param headerName
	 */
	public void assertHeaderNameDisplayed(String headerName) {
		reiDriver.JavaScript().scrollpageToSpecificElement(By.xpath(
				"//div[@class='panel-heading']//div[contains(@class,'panel-title')]/a[text()='" + headerName + "']"));
		Assert.assertTrue(getFlexGridPanels(headerName).isDisplayed());
	}

	/**
	 * assert menu bars not displayed for Goals objectives / program Performance
	 * Management
	 */
	public void assertprogramPerformanceMgmtGridViewMenuBarsNotDisplayed() {
		Assert.assertTrue(programPerformanceMgmtGridViewMenuBarsNotDisplayed());
	}

	/**
	 * assert quick search is not displayed for Goals objectives / program
	 * Performance Management
	 */
	public void assertquickSearchDisabled(String category) {
		Assert.assertTrue(programPerformanceMgmtGridViewQuickSearchDisabled(category));
	}

	/**
	 * assert two specific items are not displayed in PPMGV MENU parallel lines bar
	 * 
	 * @param option1
	 * @param option2
	 */
	public void assertPPMGVParallelLinesBarSpecificOptionsDisabled(String option1, String option2) {
		Assert.assertTrue(isprogramPPMGVLinesBarMenuSpecificOptionsDisabled(option1, option2));
	}

	/**
	 * assert if specific table header is not displayed
	 * 
	 * @param columnName
	 */
	public void assertPPMGVFlexTableColumnNotDisplayed(String columnName) {
		Assert.assertTrue(ppmgvSpecificColumnNameNotDisplayed(columnName));
	}

	/**
	 * assert if specific action icon is not displayed
	 * 
	 * @param actionIcon
	 */
	public void assertActionIconNotDisplayedInsidePPMGVflexTable(String actionIcon) {
		Assert.assertTrue(isActionIconNotDisplayedInsidePPMGVflexTable(actionIcon));
	}

	/*********
	 * "Local Methods with complete functionality - private"
	 *****************/

	/**
	 * menu bars not displayed for Goals objectives / program Performance Management
	 * 
	 * @return
	 */
	private boolean programPerformanceMgmtGridViewMenuBarsNotDisplayed() {
		boolean flag = true;
		reiDriver.JavaScript().scrollpageToSpecificElement(
				By.xpath("//div[@id='flexGridHeaderButtonsProgramPerformanceMgmtGridView']"));
		try {
			if (reiDriver.findMyElement().getElement(programPerformanceMgmtGridViewMenuBars).isDisplayed()) {
				return false;
			}
		} catch (Exception e) {
			flag = true;
		}
		return flag;

	}

	/**
	 * validate if quick search is displayed or not
	 * 
	 * @return: true if it is not displayed
	 */
	private boolean programPerformanceMgmtGridViewQuickSearchDisabled(String category) {
		boolean flag = true;
		reiDriver.JavaScript().scrollpageToSpecificElement(
				By.xpath("//div[@id='flexGridHeaderButtonsProgramPerformanceMgmtGridView']"));
		try {
			if (reiDriver.findMyElement().getElement(getSpecificQuickSearch(category)).isDisplayed()) {
				flag = false;
			}
		} catch (Exception e) {
		}
		return flag;
	}

	/**
	 * validate if options are not displayed in top right parallel line bar
	 * 
	 * @param option1
	 * @param option2
	 * @return: true if it is not displayed
	 */
	private boolean isprogramPPMGVLinesBarMenuSpecificOptionsDisabled(String option1, String option2) {
		reiDriver.JavaScript().scrollpageToSpecificElement(
				By.xpath("//div[@id='flexGridHeaderButtonsProgramPerformanceMgmtGridView']"));
		boolean flag = false;
		try {
			if (getPPMGVLinesBarMenuSpecificOptions(option1).isDisplayed()) {
				flag = false;
			}
		} catch (Exception e) {
			flag = true;
		}

		try {
			if (getPPMGVLinesBarMenuSpecificOptions(option2).isDisplayed()) {
				flag = false;
			}
		} catch (Exception e) {
			flag = true;
		}

		return flag;
	}

	/**
	 * get any item from PPMGV MENU bar inside phases without waiting for presence.
	 * 
	 * @param headerItem
	 * @return
	 */
	public WebElement getPPMGVLinesBarMenuSpecificOptions(String headerItem) {
		return reiDriver.findMyElement().getElement(By.xpath(
				" //div[@id='flexGridHeaderButtonsProgramPerformanceMgmtGridView']//span[contains(@class,'fa fa-bars')]/../../ul//span[text()='"
						+ headerItem + "']"));
	}

	/**
	 * get specific column in PPMGV flex table header
	 * 
	 * @param headerName
	 * @return
	 */
	private WebElement getPPMGVFlexTableSpecificColumnHeader(String headerName) {
		return reiDriver.findMyElement().getElement(By.xpath(
				"//div[@class='panel-heading']/following-sibling::div[contains(@class,'panel-body')]//div/table/thead/tr[@class='n2gheader']/th//span[text()='"
						+ headerName + "']"));
	}

	/**
	 * column name in PPMGV flex table
	 * 
	 * @return: true if it is not displayed
	 */
	private boolean ppmgvSpecificColumnNameNotDisplayed(String headerName) {
		boolean flag = true;
		reiDriver.JavaScript().scrollpageToSpecificElement(
				By.xpath("//div[@id='flexGridHeaderButtonsProgramPerformanceMgmtGridView']"));
		try {
			if (getPPMGVFlexTableSpecificColumnHeader(headerName).isDisplayed()) {
				flag = false;
			}
		} catch (Exception e) {
		}
		return flag;
	}

	/**
	 * get specific column in PPMGV flex table action item present
	 * 
	 * @param headerName
	 * @return
	 */
	private WebElement getPPMGVFlexTableSpecificColumnActions(String actionName) {
		return reiDriver.findMyElement().getElement(By.xpath(
				"//div[@class='panel-heading']/following-sibling::div[contains(@class,'panel-body')]//div/table/thead/tr[@class='n2gheader']/../../tbody//tr//td//a[@title='"
						+ actionName + "']"));
	}

	private boolean isActionIconNotDisplayedInsidePPMGVflexTable(String actionIcon) {
		boolean flag = true;
		reiDriver.JavaScript().scrollpageToSpecificElement(
				By.xpath("//div[@id='flexGridHeaderButtonsProgramPerformanceMgmtGridView']"));
		try {
			if (getPPMGVFlexTableSpecificColumnActions(actionIcon).isDisplayed()) {
				flag = false;
			}
		} catch (Exception e) {
		}
		return flag;
	}
}
