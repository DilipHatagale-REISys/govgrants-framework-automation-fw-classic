package com.framework.automation.pageobject;

import java.util.*;

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

	/**
	 * return true if particular column value is in ascending order for flex grid
	 *
	 */
	public void assertAscendingOrderOfFlexGridColumnValue(String text, String order) {
		Assert.assertTrue(isColumnValueInExectedOrderForFlexGrid(text, order));
	}

	/**
	 * assert true if header column name for program outcomes flex table is present -Mass Editable grid
	 *
	 * @param columnTitleName
	 * @param tableId
	 */
	public void assertProgramOutcomesFlexTableHeaderColumnName(String columnTitleName, String tableId) {
		Assert.assertTrue(isProgramOutcomesFlexTableColumnHeaderName(columnTitleName, tableId));
	}

	/**
	 * assert enhanced grid cell value colour for particular record is displayed
	 *
	 * @param columnName
	 * @param tableId
	 * @param widthSize
	 */
	public void assertColumnWidthOfFlexGridSpecificColumn(String columnName, String tableId,
														  String widthSize) {
		Assert.assertTrue(isSpecificWidthOfColumnOfFlexGrid(columnName, tableId, widthSize));
	}

	/**
	 * assert if specific action is not displayed at budget period flex table
	 *
	 * @param iconName
	 * @param tableId
	 * @param colValue
	 */
	public void assertActionIconNotDisplayedInsideForGrantorBudgetPeriodflexTable(String iconName,String colValue, String tableId) {
		try {
			reiDriver.WaitFor().WaitForElementToBePresent(
					govgrants.flexTable().getTableActionIcon(iconName, colValue,tableId ));
			Assert.assertFalse(reiDriver.findMyElement()
					.getElement(govgrants.flexTable().getTableActionIcon(iconName, colValue,tableId ))
					.isDisplayed());
		} catch (Exception e) {
		}
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

	/**
	 * return true if particular column value of flex grid table is in
	 * ascending/descending order
	 *
	 * @return
	 */
	private boolean isColumnValueInExectedOrderForFlexGrid(String text, String order) {
		boolean flag = false;
		try {
			ArrayList<String> obtainedList = new ArrayList<>();
			List<WebElement> rows_table = getFlexGridSpecificColumnValues(text);
			for (WebElement we : rows_table) {
				obtainedList.add(we.getText().toLowerCase());
			}
			ArrayList<String> sortedList = new ArrayList<>();
			for (String s : obtainedList) {
				sortedList.add(s.toLowerCase());
			}
			if (order.equals("Ascending")) {
				Collections.sort(sortedList);
			} else if (order.equals("Descending")) {
				Collections.sort(sortedList, Collections.reverseOrder());
			}
			if (sortedList.equals(obtainedList)) {
				flag = true;
			} else {
				flag = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

	/**
	 * @return specific target column inside flex grid
	 */
	private List<WebElement> getFlexGridSpecificColumnValues(String text) {
		WebElement row = reiDriver.findMyElement()
				.getElement(By.xpath("//td[descendant-or-self::*[text()='Citizen']]//ancestor::tr[1]"));
		Set<String> headerTitles = new HashSet<String>();
		headerTitles.add("Target");
		Map<String, Integer> columnMapping = govgrants.flexTable().constructColumnMapping(row, headerTitles);
		System.out.println("The column number was: " + columnMapping.get("Target"));
		By columnSelector = By
				.xpath("//div[@id='toggleFGridProgramOutcomes']//table//tr" + "//td[not(contains(@class, 'ng-hide'))]["
						+ columnMapping.get("Target") + "]" + "//span[contains(@ng-bind, 'viewValue')]");
		return reiDriver.findMyElement().getElements(columnSelector);
	}

	/**
	 *
	 * @return false if element is not displayed for Program outcomes flex table
	 */
	private Boolean isProgramOutcomesFlexTableColumnHeaderName(String columnTitleName, String tableId) {
		boolean flag = false;
		try {
			if (govgrants.flexTable().getSpecificElementFromTableHeader(tableId, columnTitleName).isDisplayed()
					|| govgrants.flexTable().getSpecificElementFromTableHeader(tableId, columnTitleName).isEnabled()) {
				flag = true;
			}
		} catch (org.openqa.selenium.NoSuchElementException e) {
			flag = false;
		}
		return flag;
	}

	/**
	 * @return true if expected width of specified column is displayed for flex grid
	 */
	private Boolean isSpecificWidthOfColumnOfFlexGrid(String columnName, String tableId, String widthSize) {
		boolean flag = false;
		WebElement columnWidth = reiDriver.findMyElement()
				.getElement(By.xpath("//div[@id='" + tableId + "']//tr//th//span[contains(text(),'" + columnName + "')]/ancestor::th"));
		if (columnWidth.getAttribute("style").contains(widthSize)) {
			flag = true;
		}
		return flag;
	}
}