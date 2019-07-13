package com.framework.automation.pageobject;

import com.automation.rei.handlers.GovGrantsHandler;
import com.framework.automation.projectmanager.GovGrantsManager;
import eyethink.automation.bots.controller.Controller;
import eyethink.automation.bots.controller.CoreHandlers;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class FlexGridPage extends GovGrantsManager {

	/******* "Variables and Locators" *****************/
	private final By programOutcomesRowsInlineMode, enableTotalSumValueForTargetColumn;

	/**
	 * Constructor to handle dependency injection and framework library
	 */
	public FlexGridPage(Controller controller, CoreHandlers reiDriver, GovGrantsHandler govgrants) {
		super(controller, reiDriver, govgrants);
		programOutcomesRowsInlineMode = By
				.xpath("//div[@id='toggleFGridProgramOutcomes']//table/tbody/tr//*[@mode='edit']");
		enableTotalSumValueForTargetColumn = By.xpath("//b[@class='totalFullDisplayFlex']//span");
	}

	/******* "Key Methods with complete functionality - public" *****************/

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
	 * assert quick search is not displayed for Goals objectives / program
	 * Performance Management
	 */
	public void assertquickSearchDisabled(String category) {
		Assert.assertTrue(programPerformanceMgmtGridViewQuickSearchDisabled(category));
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
	 * return true if particular column value of table is in ascending/descending
	 * order
	 *
	 */
	public void assertAscendingORDescendingOrderOfTableColumnValue(String text, String order, String tableId) {
		Assert.assertTrue(reiDriver.is().isTableSorted(getTableSpecificColumnValues(text, tableId), order));
	}

	/**
	 * assert true if header column name for program outcomes flex table is present
	 * -Mass Editable grid
	 *
	 * @param columnTitleName
	 * @param tableId
	 */
	public void assertProgramOutcomesFlexTableHeaderColumnName(String columnTitleName, String tableId) {
		Assert.assertTrue(isProgramOutcomesFlexTableColumnHeaderName(columnTitleName, tableId));
	}

	/**
	 * assert width size for Program outcomes/toggleFGridProgramOutcomes flex table
	 * column is displayed
	 *
	 * @param columnName
	 * @param tableId
	 * @param widthSize
	 */
	public void assertColumnWidthOfFlexGridSpecificColumn(String columnName, String tableId, String widthSize) {
		Assert.assertTrue(isSpecificWidthOfColumnOfFlexGrid(columnName, tableId, widthSize));
	}

	/**
	 * assert width size for ActiveGrantsAwards/Monitoring schedule for all active
	 * awards flex table column is displayed
	 *
	 * @param columnName
	 * @param tableId
	 * @param widthSize
	 */
	public void assertColumnWidthOfActiveGrantsAwardsFlexGridSpecificColumn(String columnName, String tableId,
			String widthSize) {
		Assert.assertTrue(isSpecificWidthOfColumnOfActiveGrantsAwardsFlexTable(columnName, tableId, widthSize));
	}

	/**
	 * assert if specific action is not displayed at budget period flex table
	 *
	 * @param iconName
	 * @param tableId
	 * @param colValue
	 */
	public void assertActionIconNotDisplayedInsideForGrantorBudgetPeriodflexTable(String iconName, String colValue,
			String tableId) {
		try {
			reiDriver.WaitFor()
					.WaitForElementToBePresent(govgrants.flexTable().getTableActionIcon(iconName, colValue, tableId));
			Assert.assertFalse(reiDriver.findMyElement()
					.getElement(govgrants.flexTable().getTableActionIcon(iconName, colValue, tableId)).isDisplayed());
		} catch (Exception e) {
		}
	}

	/**
	 * assert true if Nested table is displayed with changes header name
	 *
	 */
	public void assertNestedTableHeaderName(String tableId, String changedText) {
		Assert.assertTrue(isNestedTableHeaderChanged(tableId, changedText));
	}

	/**
	 * return true if action button inside Mass editable grid table as per name is
	 * displayed
	 * 
	 * @param buttonName
	 * @param headerName
	 */
	public void assertActionButtonInsideMassEditableGridTableIsDisplayed(String buttonName, String headerName) {
		Assert.assertTrue(isActionButtonInsideTopOfMassEditableGridTableDisplayed(buttonName, headerName));
	}

	/**
	 * return true if action button inside Nested Navigation grid table as per name
	 * is displayed
	 * 
	 * @param buttonName
	 * @param headerName
	 */
	public void assertActionButtonInsideNestedNAvigationTableIsDisplayed(String buttonName, String headerName) {
		Assert.assertTrue(isActionButtonInsideTopOfNestedNavigationTableDisplayed(buttonName, headerName));
	}

	/*********
	 * "Local Methods with complete functionality - private"
	 *****************/

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
		WebElement columnWidth = reiDriver.findMyElement().getElement(By.xpath(
				"//div[@id='" + tableId + "']//tr//th//span[contains(text(),'" + columnName + "')]/ancestor::th"));
		if (columnWidth.getAttribute("style").contains(widthSize)) {
			flag = true;
		}
		return flag;
	}

	/**
	 * @return true if expected width of specified column is displayed for
	 *         ActiveGrantsAwards flex table
	 */
	private Boolean isSpecificWidthOfColumnOfActiveGrantsAwardsFlexTable(String columnName, String tableId,
			String widthSize) {
		boolean flag = false;
		WebElement columnWidth = reiDriver.WaitFor().WaitForElementToBePresent((By.xpath("//div[@id='" + tableId
				+ "']//tr//th//span[contains(text(),'" + columnName + "')]/ancestor::th[@width='" + widthSize + "']")));
		if (columnWidth.isDisplayed()) {
			flag = true;
		}
		return flag;
	}

	/**
	 * @return specific column values inside table while passing column name
	 */
	private List<WebElement> getTableSpecificColumnValues(String text, String tableId) {
		WebElement row = reiDriver.WaitFor()
				.WaitForElementToBePresent(By.xpath("//div[@id='" + tableId + "']//table//tbody//tr"));
		Set<String> headerTitles = new HashSet<String>();
		headerTitles.add(text);
		Map<String, Integer> columnMapping = govgrants.flexTable().constructColumnMapping(row, headerTitles);
		System.out.println("The column number was: " + columnMapping.get(text));
		By columnSelector = By
				.xpath("//div[@id='" + tableId + "']//table//tr" + "//td[not(contains(@class, 'ng-hide'))]["
						+ columnMapping.get(text) + "]" + "//span[contains(@ng-bind, 'viewValue')]");
		return reiDriver.findMyElement().getElements(columnSelector);
	}

	/**
	 * @return true if Nested table is displayed with changed header name
	 */
	private Boolean isNestedTableHeaderChanged(String tableId, String changedText) {
		boolean flag = false;
		WebElement changedHeader = reiDriver.findMyElement()
				.getElement(By.xpath("//div[@id='" + tableId + "']//td//*[text()='" + changedText + "']"));
		if (changedHeader.isDisplayed()) {
			flag = true;
		}
		return flag;
	}

	/**
	 * return true if action button inside Mass editable table is displayed
	 * 
	 * @param buttonName
	 * @param headerName
	 * @return
	 */
	private boolean isActionButtonInsideTopOfMassEditableGridTableDisplayed(String buttonName, String headerName) {
		boolean flag = false;
		try {
			if (reiDriver.WaitFor()
					.WaitForElementToBePresent(By.xpath("//*[@title='" + headerName + "' or text()='" + headerName
							+ "']//following-sibling::div//button[contains(@title,'" + buttonName + "') or @text()='"
							+ buttonName + "']"))
					.isDisplayed()) {
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

	/**
	 * return true if action button inside Nested Navigation table is displayed
	 * 
	 * @param buttonName
	 * @param headerName
	 * @return
	 */
	private boolean isActionButtonInsideTopOfNestedNavigationTableDisplayed(String buttonName, String headerName) {
		boolean flag = false;
		try {
			if (reiDriver.WaitFor().WaitForElementToBePresent(By.xpath("//*[@title='" + headerName + "' or text()='"
					+ headerName
					+ "']/ancestor::div[contains(@class,'header-title') or 1]/following-sibling::div//button[contains(@title,'"
					+ buttonName + "') or @text()='" + buttonName + "']")).isDisplayed()) {
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
}