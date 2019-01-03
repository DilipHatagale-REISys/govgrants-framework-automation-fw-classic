package com.framework.automation.pageobject;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.testng.Assert;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.CoreHandlers;
import com.automation.rei.handlers.GovGrantsHandler;
import com.framework.automation.projectmanager.GovGrantsManager;

public class EnhancedFlexGridPage extends GovGrantsManager {
	/******* "Variables and Locators" *****************/
	private final By advanceFilterButtonForEnhancedGrid, reachOutToEnhancedGridCollapse, menuIconForEnhancedGrid,
			searchInputEnhancedGrid, completeTableRowOfEnhancedGrid, totalRowCountInsideEnhancedGrid,
			selectRecordCheckBoxForEnhancedGrid, scrollToActionColumn, completeTableRowEnhancedGrid,
			currentBudgetPeriodEndDate;

	/**
	 * Constructor to handle dependency injection and framework library
	 */
	public EnhancedFlexGridPage(Controller controller, CoreHandlers reiDriver, GovGrantsHandler govgrants) {
		super(controller, reiDriver, govgrants);
		advanceFilterButtonForEnhancedGrid = By
				.xpath("//div[@id='flexGridEnhanced1']//span[contains(text(),'Advance Filter')]");
		reachOutToEnhancedGridCollapse = By.id("ProgramBudgetCategoryflexTable");
		menuIconForEnhancedGrid = By
				.xpath("//div[@id='flexGridEnhanced1']//a[@title='Menu']//span[contains(@class,'fa fa-bars')]");
		searchInputEnhancedGrid = By.cssSelector("div>grid>div>div>div>div>div>input.form-control");
		completeTableRowOfEnhancedGrid = By
				.xpath("//div[@class='panel ng-scope']/div[@class='panel-body collapse in']//table/tbody/tr");
		totalRowCountInsideEnhancedGrid = By.xpath("//span[@ng-bind='totalRecords']");
		selectRecordCheckBoxForEnhancedGrid = By
				.xpath("//div[@id='Enhanced1grid']//input[@aria-label='Select Record']");
		scrollToActionColumn = By.xpath("//div[@id='Enhanced1grid']//th[contains(text(),'Actions')]");
		completeTableRowEnhancedGrid = By
				.xpath("//div[@id='flexGridEnhanced1']//div[contains(@class,'panel-body')]//div/table/tbody/tr");
		currentBudgetPeriodEndDate = By.xpath("//field[@field-name='BudgetPeriodEndDate__c']//input[@type='text']");
	}

	/******* "Key Methods with complete functionality - public" *****************/

	/**
	 * @param advancefilter
	 * @return
	 */
	public WebElement getAdvanceFilterItemFromEnhancedGrid() {
		reiDriver.JavaScript().scrollpageToSpecificElement(reachOutToEnhancedGridCollapse);
		return reiDriver.findMyElement().getElement(advanceFilterButtonForEnhancedGrid);
	}

	/**
	 * @param menuicon
	 * @return
	 */

	public WebElement getMenuIconFromEnhancedGrid() {
		reiDriver.JavaScript().scrollpageToSpecificElement(reachOutToEnhancedGridCollapse);
		return reiDriver.findMyElement().getElement(menuIconForEnhancedGrid);
	}

	/**
	 * click on help text inside flex enhanced grid
	 * 
	 * @param blockTitle
	 */
	public void getHelpTextAtParentFlexTableEnhancedGrid(String blockTitle) {
		reiDriver.JavaScript().scrollpageToSpecificElement(reachOutToEnhancedGridCollapse);
		reiDriver.Clickers().moveMouseToSpecificLocation(
				reiDriver.findMyElement().getElement(By.xpath("//div[@id='flexGridEnhanced1']//span[contains(text(),'"
						+ blockTitle + "')]/../../..//span[contains(@class,'fa-info')]")));
	}

	/**
	 * get complete rows of enhanced flex grid
	 * 
	 * @return
	 */
	public List<WebElement> getCompleteTableRowOfEnhancedGrid() {
		reiDriver.WaitFor().WaitForElementToBePresent(completeTableRowOfEnhancedGrid);
		return reiDriver.findMyElement().getElements(completeTableRowOfEnhancedGrid);
	}

	/**
	 * select item from enhanced flex grid header
	 * 
	 * @param dropdownoption
	 * @return
	 */
	public WebElement getElementFromEnhancedGridHeader(String titleName) {
		reiDriver.JavaScript().scrollpageToSpecificElement(reachOutToEnhancedGridCollapse);
		return reiDriver.WaitFor().FluentWaitForClick(
				By.xpath("//div[@id='flexGridEnhanced1']//span[contains(text(),'" + titleName + "')]"));
	}

	/**
	 * click on help text inside enhanced grid table specific to internal
	 * organization column
	 * 
	 * @param columnTitle
	 */
	public void getHelpTextAtEnhancedGridTableSpecificColumn(String columnTitle) {

		reiDriver.JavaScript()
				.scrollpageToSpecificElement(By.xpath("//a[@data-target='#toggleFlexTableProgramBudgetCategory']"));

		reiDriver.Clickers().moveMouseToSpecificLocation(
				reiDriver.findMyElement().getElement(By.xpath("//th//span[@title='" + columnTitle + "' or text()='"
						+ columnTitle + "']/../../..//span[contains(@class,'fa-info')]")));
	}

	/**
	 * get any element from enhanced flex grid title table bar except Action
	 * 
	 * @param titleName
	 * @return
	 */
	public WebElement getSpecificElementFromEnhancedGridHeader(String titleName) {
		return reiDriver.findMyElement().getElement(By.xpath(
				"//div[@class='panel ng-scope']/div[@class='panel-body collapse in']//table/thead/tr/th//span[contains(text(),'"
						+ titleName + "')]"));
	}

	/**
	 * get any cell for respective record from enhanced flex grid
	 * 
	 * @param cellValue
	 * @return
	 */
	public WebElement getSpecificRecordCellValueFromEnhancedGridHeader(String cellValue, String colName) {
		return reiDriver.findMyElement().getElement(By.xpath("//td//*[@title = '" + colName + "' or text() = '"
				+ colName + "']/ancestor::tr[1]//td//span[contains(text(),'" + cellValue + "')]"));
	}

	/**
	 * assert correct title name of enhanced flex grid is displayed
	 * 
	 * @param titleName
	 */
	public void assertEnhancedFlexGridTitleDisplayed(String titleName) {
		Assert.assertTrue(isTitleDisplayedForEnhancedGrid(titleName));
	}

	/**
	 * assert if quick search is not displayed on enhanced grid
	 */
	public void assertquickSearchDisabledForEnhancedGrid() {
		Assert.assertTrue(isQuickSearchDisabledForEnhancedGrid());
	}

	/**
	 * assert true if total row calculation is disabled in enhanced grid
	 */
	public void assertEnhancedFlexGridTabelRowCountDisabled() {
		try {
			reiDriver.JavaScript().scrollpageToSpecificElement(completeTableRowOfEnhancedGrid);
		} catch (Exception e) {
		}
		Assert.assertTrue(isEnhancedFlexGridRowsCountDisabled());
	}

	/**
	 * assert true if header column name is present inside enhanced flex grid
	 * 
	 * @param headerColumnName
	 */
	public void assertEnhancedFlexGridHeaderColumnName(String headerColumnName) {
		Assert.assertTrue(isEnhancedFlexGridColumnHeaderName(headerColumnName));
	}

	/***
	 * assert true if check box select record enabled at enhanced flex grid
	 */
	public void assertEnhancedFlexGridRecordSelectionEnabled() {
		Assert.assertTrue(isSelectRecordCheckBoxEnabledAtEnhancedGrid());
	}

	/**
	 * assert if Edit icon open in same tab or not for enhanced flex grid
	 */
	public void assertEditOpenInSameTabForEnhancedGrid() {
		Assert.assertTrue(isSameTabStaysForEditForEnhancedGrid());
	}

	/**
	 * assert true if page size is enabled at bottom of enhanced grid
	 */
	public void assertEnhancedGridPageSizeEnabled(String text) {
		Assert.assertTrue(isEnhancedGridBottomElementEnabled(text));
	}

	/**
	 * assert if advance filter is disabled from planning enhanced flex grid
	 */
	public void assertDisableAdvanceFilterFromEnhancedGrid() {
		Assert.assertTrue(isAdvanceFilterDisabledFromEnhancedGrid());
	}

	/**
	 * assert if menu icon is disabled from planning enhanced flex grid
	 */
	public void assertDisableMenuIconFromEnhancedGrid() {
		Assert.assertTrue(isMenuIconDisabledForEnhancedFlexGrid());
	}

	/**
	 * assert true if 10 records present inside enhanced grid
	 */
	public void assertEnhancedGridNumberOfRecordsPresent(int rowCount) {
		Assert.assertTrue(isNoOfRecordsInsideEnhancedGridPresent(rowCount));
	}

	/**
	 * assert changed enhanced grid table column name displayed
	 * 
	 * @param columnTitleName
	 */
	public void assertCorrectEnhancedGridTableColumnTitleDisplayed(String columnTitleName) {
		Assert.assertTrue(isChangedEnhancedFlexGridColumnHeaderName(columnTitleName));
	}
	
	/**
	 * assert specific column inside enhanced grid table column not displayed
	 * 
	 * @param columnTitleName
	 */
	public void assertSpecificColumnOfEnhancedGridTableNotDisplayed(String columnTitleName) {
		Assert.assertFalse(isChangedEnhancedFlexGridColumnHeaderName(columnTitleName));
	}

	/**
	 * assert enhanced grid cell value for particular record is displayed
	 * 
	 * @param cellValue
	 */
	public void assertCellValueOfEnhancedGridForSpecificRecordDisplayed(String columnTitleName, String colName) {
		Assert.assertTrue(isSpecificCellValueOfEnhancedFlexGrid(columnTitleName, colName));
	}

	/**
	 * assert text input box for current project period end date column inside
	 * enhanced grid is not displayed
	 * 
	 */
	public void assertTextInputBoxForSpecificColumnNotDisplayed() {
		Assert.assertFalse(isInputTextBoxIsDisplayedForSpecificColumnOfEnhancedFlexGrid());
	}

	/*********
	 * "Local Methods with complete functionality - private"
	 *****************/

	/**
	 * Boolean status of advance filter option from program enhanced flex grid
	 * 
	 * @param status
	 */
	private Boolean isAdvanceFilterDisabledFromEnhancedGrid() {
		boolean flag = false;
		try {
			if (getAdvanceFilterItemFromEnhancedGrid().isDisplayed()) {
				flag = false;
			}
		} catch (org.openqa.selenium.NoSuchElementException e) {
			flag = true;
		}
		return flag;
	}

	/**
	 * Boolean status of menu icon from program enhanced flex grid
	 * 
	 * @param status
	 */
	private Boolean isMenuIconDisabledForEnhancedFlexGrid() {
		boolean flag = false;
		try {
			if (getMenuIconFromEnhancedGrid().isDisplayed()) {
				flag = false;
			}
		} catch (org.openqa.selenium.NoSuchElementException e) {
			flag = true;
		}
		return flag;
	}

	/**
	 * validate if tile is displayed
	 * 
	 * @param titleName
	 * @return
	 */
	private boolean isTitleDisplayedForEnhancedGrid(String titleName) {
		try {
			if (getElementFromEnhancedGridHeader(titleName).isDisplayed()) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			return false;
		}
	}

	/**
	 * validate if quick search is displayed or not at enhanced grid
	 * 
	 * @return: true if it is not displayed
	 */
	private boolean isQuickSearchDisabledForEnhancedGrid() {
		boolean flag = true;
		try {
			reiDriver.JavaScript().scrollpageToSpecificElement(reachOutToEnhancedGridCollapse);
			if (reiDriver.findMyElement().getElement(searchInputEnhancedGrid).isDisplayed()) {
				flag = false;
			}
		} catch (Exception e) {
		}
		return flag;
	}

	/**
	 * 
	 * @return true if element is not displayed inside enhanced grid
	 */
	private Boolean isEnhancedFlexGridRowsCountDisabled() {
		boolean flag = true;
		try {
			if (getCompleteTableRowOfEnhancedGrid().stream()
					.anyMatch(item -> item.findElement(totalRowCountInsideEnhancedGrid).isDisplayed())) {
				flag = false;
			}
		} catch (org.openqa.selenium.NoSuchElementException e) {
		}
		return flag;
	}

	/**
	 * 
	 * @return false if element is not displayed
	 */
	private Boolean isEnhancedFlexGridColumnHeaderName(String titleName) {
		boolean flag = false;
		try {
			reiDriver.JavaScript().scrollpageToSpecificElement(reachOutToEnhancedGridCollapse);
			if (getSpecificElementFromEnhancedGridHeader(titleName).isDisplayed()
					|| getSpecificElementFromEnhancedGridHeader(titleName).isEnabled()) {
				flag = true;
			}
		} catch (org.openqa.selenium.NoSuchElementException e) {
			flag = false;
		}
		return flag;
	}

	/**
	 * 
	 * @return: true if select record check box eneabled at enhanced grid
	 */
	private boolean isSelectRecordCheckBoxEnabledAtEnhancedGrid() {
		boolean flag = false;
		try {
			reiDriver.JavaScript().scrollElementToPageDetailCenter(reachOutToEnhancedGridCollapse);
			for (WebElement element : getCompleteTableRowOfEnhancedGrid()) {
				if (element.findElement(selectRecordCheckBoxForEnhancedGrid).isDisplayed()) {
					flag = true;
					break;
				}
			}
		} catch (Exception e) {

		}
		return flag;
	}

	/**
	 * Boolean status of Edit icon opens in same tab for enhanced flex grid
	 * 
	 * @return
	 */
	private Boolean isSameTabStaysForEditForEnhancedGrid() {
		boolean sameTabFound = false;
		if (reiDriver.switchTo().getWindowsHandlers().size() == 1) {
			sameTabFound = true;
		}
		return sameTabFound;
	}

	/**
	 * 
	 * @return true if bottom element is displayed at enhanced grid
	 */
	private boolean isEnhancedGridBottomElementEnabled(String text) {
		reiDriver.JavaScript().scrollPageDocumentJS("PageDown", 0, 0);
		boolean flag = false;
		try {
			if (getBottomEnhancedGridTableElement(text).isDisplayed()
					|| getBottomEnhancedGridTableElement(text).isEnabled()) {
				flag = true;
			}
		} catch (Exception e) {
		}
		return flag;
	}

	/**
	 * get webelemnt with text inside bottom of flex table
	 * 
	 * @param text
	 * @return
	 */
	private WebElement getBottomEnhancedGridTableElement(String text) {
		return reiDriver.WaitFor().WaitForElementToBePresent(
				By.xpath("//div[@id='flexGridEnhanced1']//tfoot//span[contains(text(),'" + text + "')]"));
	}

	/**
	 * click flex table item based on program name/subject , status and icon name
	 * 
	 * @param programSubject
	 * @param statusName
	 * @param iconName
	 */
	public void clickTableActionIconsForSpecificSubjectInsideEnhancedGrid(String programSubject, String statusName,
			String iconName) {
		try {
			reiDriver.JavaScript().scrollpageToSpecificElement(scrollToActionColumn);
			reiDriver.WaitFor()
					.WaitForElementToBePresent(By.xpath("//td//span[contains(text(),'" + programSubject
							+ "')]/./../../../../../td//span[contains(text(),'" + statusName
							+ "')]/../../../..//td//span//a[@title='" + iconName + "']//i"))
					.click();

		} catch (Exception e) {
			reiDriver.JavaScript().scrollpageToSpecificElement(scrollToActionColumn);
			reiDriver.WaitFor().makeThreadSleep(1000);
			reiDriver.JavaScript()
					.clickByJS(By.xpath("//td//span[contains(text(),'" + programSubject
							+ "')]/./../../../../../td//span[contains(text(),'" + statusName
							+ "')]/../../../..//td//span//a[@title='" + iconName + "']//i"));
		}
	}

	/**
	 * 
	 * @return true if expected count of records is present inside enhanced grid
	 */
	private boolean isNoOfRecordsInsideEnhancedGridPresent(int rowCount) {
		reiDriver.JavaScript().scrollPageDocumentJS("PageDown", 0, 0);
		boolean flag = false;
		try {
			int listSize = getCompleteTableRowEnhancedGrid().size();
			if (listSize == rowCount) {
				flag = true;
			}
		} catch (Exception e) {
		}
		return flag;
	}

	/**
	 * get complete rows of enhanced grid
	 *
	 * @return
	 */
	public List<WebElement> getCompleteTableRowEnhancedGrid() {
		reiDriver.WaitFor().WaitForElementToBePresent(completeTableRowEnhancedGrid);
		return reiDriver.WaitFor().WaitForElementListToBePresent(completeTableRowEnhancedGrid);
	}

	/**
	 * 
	 * @return true if changed column name is displayed for enhaced grid
	 */
	private Boolean isChangedEnhancedFlexGridColumnHeaderName(String titleName) {
		boolean flag = false;
		try {
			reiDriver.JavaScript().scrollpageToSpecificElement(reachOutToEnhancedGridCollapse);
			if (getSpecificElementFromEnhancedGridHeader(titleName).getText().equalsIgnoreCase(titleName)) {
				flag = true;
			}
		} catch (Exception e) {
		}
		return flag;
	}

	/**
	 * 
	 * @return true if changed cell value for specific record is displayed for
	 *         enhaced grid
	 */
	private Boolean isSpecificCellValueOfEnhancedFlexGrid(String cellValue, String colName) {
		boolean flag = false;
		try {
			reiDriver.JavaScript().scrollpageToSpecificElement(reachOutToEnhancedGridCollapse);
			if (getSpecificRecordCellValueFromEnhancedGridHeader(cellValue, colName).getText()
					.equalsIgnoreCase(cellValue)) {
				flag = true;
			}
		} catch (Exception e) {
		}
		return flag;
	}

	/**
	 * 
	 * @return true if changed cell value for specific record is displayed for
	 *         enhaced grid
	 */
	private Boolean isInputTextBoxIsDisplayedForSpecificColumnOfEnhancedFlexGrid() {
		boolean flag = false;
		try {
			//reiDriver.JavaScript().scrollpageToSpecificElement(currentBudgetPeriodEndDate);
			govgrants.flexTable().slideNestedFlexTable("TmpActiveGrantsGridFlexToggle", 150);
			if (reiDriver.findMyElement().getElement(currentBudgetPeriodEndDate).isDisplayed()) {
				flag = true;
			}
		} catch (Exception e) {
		}
		return flag;
	}
}
