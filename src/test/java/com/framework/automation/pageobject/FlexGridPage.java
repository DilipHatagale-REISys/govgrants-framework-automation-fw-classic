package com.framework.automation.pageobject;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.testng.Assert;

import com.automation.rei.handlers.GovGrantsHandler;
import com.framework.automation.projectmanager.GovGrantsManager;

import eyethink.automation.bots.controller.Controller;
import eyethink.automation.bots.controller.CoreHandlers;

public class FlexGridPage extends GovGrantsManager {

	/******* "Variables and Locators" *****************/
	private final By programPerformanceMgmtGridViewMenuBars, programOutcomesRowsInlineMode,
			enableTotalSumValueForTargetColumn;

	/**
	 * Constructor to handle dependency injection and framework library
	 */
	public FlexGridPage(Controller controller, CoreHandlers reiDriver, GovGrantsHandler govgrants) {
		super(controller, reiDriver, govgrants);
		programPerformanceMgmtGridViewMenuBars = By.xpath(
				"//div[@id='flexGridHeaderButtonsProgramPerformanceMgmtGridView']//span[contains(@class,'fa fa-bars')]");
		programOutcomesRowsInlineMode = By
				.xpath("//div[@id='toggleFGridProgramOutcomes']//table/tbody/tr//*[@mode='edit']");
		enableTotalSumValueForTargetColumn = By.xpath("//b[@class='totalFullDisplayFlex']//span");
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
	 *
	 * @return true if expected sum is displayed for particular column at flex grid
	 */
	public Boolean isExpectedOverAllTotalSumValueForNumberOfAwardsAtEnhancedGridTableDisplayed() {
		WebElement targetColumnSum = reiDriver.findMyElement().getElement(enableTotalSumValueForTargetColumn);
		String sumValueInString = String.format("%.2f", getFlexGridSpecificColumnTotalSum());
		boolean flag = true;
		if (targetColumnSum.getText().equals(sumValueInString)) {
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

	/**
	 * assert edit action open in inline mode
	 */
	public void assertActionOpensInInlineMode() {
		Assert.assertTrue(isActionOpensInInlineMode());
	}

	/**
	 * return true if enable total will return sum value is as expected for target
	 * column
	 * 
	 */
	public void assertTotalSumValueForTargetColumnOfProgramOutcomesFlexGrid() {
		Assert.assertTrue(isExpectedOverAllTotalSumValueForNumberOfAwardsAtEnhancedGridTableDisplayed());
	}

	/**
	 * assert if quick search is not displayed as per table id
	 * 
	 * @param tableId
	 */
	public void assertquickSearchDisabledForSpecificTable(String tableId) {
		Assert.assertTrue(isQuickSearchDisabledForTableId(tableId));
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
	 * @param actionName
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

	/**
	 * 
	 * @return true if inline mode is displayed for actions at flex grid
	 */
	private Boolean isActionOpensInInlineMode() {
		boolean flag = false;
		try {
			if (reiDriver.findMyElement().getElement(programOutcomesRowsInlineMode).isDisplayed()) {
				flag = true;
			}
		} catch (Exception e) {
		}
		return flag;
	}

	/**
	 *
	 * @return total sum value for specific target column inside flex grid
	 */
	private double getFlexGridSpecificColumnTotalSum() {
		WebElement row = reiDriver.findMyElement()
				.getElement(By.xpath("//td[descendant-or-self::*[text()='Citizen']]//ancestor::tr[1]"));
		Set<String> headerTitles = new HashSet<String>();
		headerTitles.add("Target");
		Map<String, Integer> columnMapping = govgrants.flexTable().constructColumnMapping(row, headerTitles);
		System.out.println("The column number was: " + columnMapping.get("Target"));
		By columnSelector = By
				.xpath("//div[@id='toggleFGridProgramOutcomes']//table//tr" + "//td[not(contains(@class, 'ng-hide'))]["
						+ columnMapping.get("Target") + "]" + "//span[contains(@ng-bind, 'viewValue')]");
		double total = 0;
		for (WebElement columnValue : reiDriver.findMyElement().getElements(columnSelector)) {
			try {
				total += Double.parseDouble(columnValue.getText());
			} catch (Exception e) {
				System.out.println("An exception occured with column value '" + columnValue.getText() + "'");
				throw e;
			}
		}
		System.out.println("Total : " + total);

		return total;
	}

	/**
	 * validate if quick search is displayed or not specific to table
	 *
	 * @return: true if it is not displayed
	 */
	private boolean isQuickSearchDisabledForTableId(String tableId) {
		boolean flag = true;
		try {
			if (govgrants.quickSearch().getTableSpecificQuickSearch(tableId).isDisplayed()) {
				flag = false;
			}
		} catch (Exception e) {
		}
		return flag;
	}
}