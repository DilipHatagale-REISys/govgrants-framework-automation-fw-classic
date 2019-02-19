package com.framework.automation.pageobject;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.testng.Assert;

import com.automation.rei.handlers.GovGrantsHandler;
import com.framework.automation.projectmanager.GovGrantsManager;

import eyethink.automation.bots.controller.Controller;
import eyethink.automation.bots.controller.CoreHandlers;

public class EnhancedFlexGridPage extends GovGrantsManager {
	/******* "Variables and Locators" *****************/
	private final By reachOutToEnhancedGridCollapse, searchInputEnhancedGrid, completeTableRowOfEnhancedGrid,
			selectRecordCheckBoxForEnhancedGrid, currentBudgetPeriodEndDate, scrollToActionColumn,
			obligatedAmountSpecificCells, idColumnForChildFlexTable;

	/**
	 * Constructor to handle dependency injection and framework library
	 */
	public EnhancedFlexGridPage(Controller controller, CoreHandlers reiDriver, GovGrantsHandler govgrants) {
		super(controller, reiDriver, govgrants);
		reachOutToEnhancedGridCollapse = By.id("ProgramBudgetCategoryflexTable");
		searchInputEnhancedGrid = By.cssSelector("div>grid>div>div>div>div>div>input.form-control");
		completeTableRowOfEnhancedGrid = By
				.xpath("//div[@class='panel ng-scope']/div[@class='panel-body collapse in']//table/tbody/tr");
		selectRecordCheckBoxForEnhancedGrid = By
				.xpath("//div[@id='Enhanced1grid']//input[@aria-label='Select Record']");
		currentBudgetPeriodEndDate = By.xpath("//field[@field-name='BudgetPeriodEndDate__c']//input[@type='text']");
		scrollToActionColumn = By.xpath("//div[@id='Enhanced1grid']//th[contains(text(),'Actions')]");
		obligatedAmountSpecificCells = By.xpath("//table/tbody/tr/td//*[@field-name='TotalAwardObligatedAmount__c']");
		idColumnForChildFlexTable = By.xpath("//field[@field-name='Name']//input[@type='text']");
	}

	/******* "Key Methods with complete functionality - public" *****************/

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
	 * get complete rows of enhanced flex grid- This method is used to return parent
	 * enhanced grid table rows so created separately-It is different from flex
	 * table
	 * 
	 * @return
	 */
	public List<WebElement> getCompleteTableRowOfEnhancedGrid() {
		reiDriver.WaitFor().WaitForElementToBePresent(completeTableRowOfEnhancedGrid);
		return reiDriver.findMyElement().getElements(completeTableRowOfEnhancedGrid);
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
	 * assert true if changed icon css of enhanced grid table edit action is
	 * displayed
	 * 
	 * @param iconTitle
	 */
	public void assertEnhancedGridTableEditActionIconDisplayed(String columnTitle, String iconTitle) {
		reiDriver.JavaScript().scrollpageToSpecificElement(scrollToActionColumn);
		Assert.assertTrue(reiDriver.WaitFor()
				.WaitForElementToBePresent(By.xpath("//td//*[@title = '" + columnTitle + "' or text() = '" + columnTitle
						+ "']/ancestor::tr[1]//td//a[@title = '" + iconTitle
						+ "']//i[contains(@class,'fa fa-external-link')]"))
				.isDisplayed());
	}

	/**
	 * assert correct title name of enhanced flex grid is displayed
	 * 
	 * @param titleName
	 * @param tableId
	 */
	public void assertEnhancedFlexGridTitleDisplayed(String titleName, String tableId) {
		Assert.assertTrue(isTitleDisplayedForEnhancedGrid(titleName, tableId));
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
	public void assertEnhancedFlexGridTabelRowCountDisabled(String text, String tableId) {
		try {
			reiDriver.JavaScript().scrollpageToSpecificElement(completeTableRowOfEnhancedGrid);
		} catch (Exception e) {
		}
		Assert.assertTrue(isEnhancedFlexGridRowsCountDisabled(text, tableId));
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
	public void assertEnhancedGridPageSizeEnabled(String text, String tableId) {
		Assert.assertTrue(isEnhancedGridBottomElementEnabled(text, tableId));
	}

	/**
	 * assert if advance filter is disabled from planning enhanced flex grid
	 */
	public void assertDisableAdvanceFilterFromEnhancedGrid(String tableId) {
		Assert.assertTrue(isAdvanceFilterDisabledFromEnhancedGrid(tableId));
	}

	/**
	 * assert true if 10 records present inside enhanced grid
	 */
	public void assertEnhancedGridNumberOfRecordsPresent(int rowCount, String tableId) {
		Assert.assertTrue(isNoOfRecordsInsideEnhancedGridPresent(rowCount, tableId));
	}

	/**
	 * assert changed enhanced grid table column name displayed
	 * 
	 * @param columnTitleName
	 */
	public void assertCorrectEnhancedGridTableColumnTitleDisplayed(String columnTitleName, String tableId) {
		Assert.assertTrue(isChangedEnhancedFlexGridColumnHeaderName(columnTitleName, tableId));
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

	/**
	 * return true if action button inside enhanced grid table as per name is
	 * displayed
	 * 
	 * @param buttonName
	 * @param headerName
	 */
	public void assertActionButtonInsideEnhancedGridTableIsDisplayed(String buttonName, String headerName) {
		Assert.assertTrue(isActionButtonInsideTopOfEnhancedGridTableDisplayed(buttonName, headerName));
	}

	/**
	 * return true if cell value is as expected
	 * 
	 * @param value
	 */
	public void assertCellValueAtEnhancedGrid(BigDecimal value) {
		Assert.assertTrue(isExpectedSumValueAtEnhancedGridTableDisplayed(value));
	}

	/**
	 * return true if particular column value is in ascending order
	 * 
	 */
	public void assertAscendingOrderOfEnhancedGridColumnValue(String text, String order) {
		Assert.assertTrue(isColumnValueInExectedOrder(text, order));
	}

	/**
	 * assert if specific action item appears at a specific position for
	 * enhancedgrid table
	 * 
	 * @param iconName
	 * @param tableId
	 */
	public void assertSequenceOfEditActionOfEnhancedGrid(String iconName, String tableId, int sequenceNumber) {
		Assert.assertTrue(isEditActionIconSequenceAtEnhancedGridTable(iconName, tableId, sequenceNumber));
	}

	/**
	 * assert true if Menu Field is not present in child flex table (flex grid) for enhancedgrid
	 * @param panelTitleName
	 */
	public void assertThatMenuFieldIsDisabledOnChildFlexTable(String panelTitleName){
		Assert.assertTrue(isMenuIconDisabledInChildFlexTable(panelTitleName));
	}

	/**
	 *  assert true if quick search is not available for child flex table under enhanced grid.
	 */
	public void assertThatQuickSearchIsDisabledOnChildFlexTable(String childTableId){
		Assert.assertTrue(isQuickSearchDisabledForChildFlexTableInEnhancedGrid(childTableId));
	}

	/**
	 * assert true if total record is present on child flex table.
	 * @param footerName
	 * @param tableId
	 */
	public void assertThatTotalRecordIsPresentOnChildFlexTable(String footerName, String tableId){
		Assert.assertTrue(isTotalRecordsEnabledForChildFlexTable(footerName,tableId));
	}

	/**
	 * Assert for Record Selection Enable.
	 */
	public void assertIfSelectRecordIsEnabledOnChildFlexTable(){
		Assert.assertTrue(isRecordSelectionEnabledOnChildFlexTable());
	}
	
	/**
	 * assert text input box for ID column inside child flex table of enhanced grid is not displayed
	 * 
	 */
	public void assertTextInputBoxForIdColumnNotDisplayed() {
		Assert.assertFalse(isInputTextBoxIsDisplayedForIdColumnOfChildFlexTableAtEnhancedGrid());
	}


	/*********
	 * "Local Methods with complete functionality - private"
	 *****************/

	/**
	 * Boolean status of advance filter option from program/enhanced flex grid
	 * 
	 * @param status
	 */
	private Boolean isAdvanceFilterDisabledFromEnhancedGrid(String tableId) {
		boolean flag = false;
		try {
			if (govgrants.phasePannel().getAdvanceFilterItem(tableId).isDisplayed()) {
				flag = false;
			}
		} catch (Exception e) {
			flag = true;
		}
		return flag;
	}

	/**
	 * validate if tile is displayed
	 * 
	 * @param titleName
	 * @param tableId
	 * @return
	 */
	private boolean isTitleDisplayedForEnhancedGrid(String titleName, String tableId) {
		try {
			if (govgrants.phasePannel().getPanelTitleWithTableId(tableId, titleName).isDisplayed()) {
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
	private Boolean isEnhancedFlexGridRowsCountDisabled(String text, String tableId) {
		boolean flag = true;
		try {
			if (govgrants.flexTable().getFooterElementsFromTable(text, tableId).isDisplayed()) {
				flag = false;
			}
		} catch (Exception e) {
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
			if (govgrants.flexTable().getSpecificElementFromTableHeader(titleName).isDisplayed()
					|| govgrants.flexTable().getSpecificElementFromTableHeader(titleName).isEnabled()) {
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
	private boolean isEnhancedGridBottomElementEnabled(String text, String tableId) {
		reiDriver.JavaScript().scrollPageDocumentJS("PageDown", 0, 0);
		boolean flag = false;
		try {
			if (govgrants.flexTable().getFooterElementsFromTable(text, tableId).isDisplayed()
					|| govgrants.flexTable().getFooterElementsFromTable(text, tableId).isEnabled()) {

				flag = true;
			}
		} catch (Exception e) {
		}
		return flag;
	}

	/**
	 * 
	 * @return true if expected count of records is present inside enhanced grid
	 */
	private boolean isNoOfRecordsInsideEnhancedGridPresent(int rowCount, String tableId) {
		reiDriver.JavaScript().scrollPageDocumentJS("PageDown", 0, 0);
		boolean flag = false;
		try {
			int listSize = govgrants.flexTable().getCompleteTableRow(tableId).size();
			if (listSize == rowCount) {
				flag = true;
			}
		} catch (Exception e) {
		}
		return flag;
	}

	/**
	 * 
	 * @return true if changed column name is displayed for enhaced grid
	 */
	private Boolean isChangedEnhancedFlexGridColumnHeaderName(String titleName) {
		boolean flag = false;
		try {
			reiDriver.JavaScript().scrollpageToSpecificElement(reachOutToEnhancedGridCollapse);
			if (govgrants.flexTable().getSpecificElementFromTableHeader(titleName).getText()
					.equalsIgnoreCase(titleName)) {
				flag = true;
			}
		} catch (Exception e) {
		}
		return flag;
	}

	/**
	 * 
	 * @return true if changed column name is displayed for enhaced grid
	 */
	private Boolean isChangedEnhancedFlexGridColumnHeaderName(String columnTitleName, String tableId) {
		boolean flag = false;
		try {
			if (govgrants.flexTable().getSpecificElementFromTableHeader(tableId, columnTitleName).getText()
					.equalsIgnoreCase(columnTitleName)) {
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
			if (reiDriver.findMyElement().getElement(govgrants.flexTable().getFlexTableColumn(cellValue)).getText()
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
			reiDriver.JavaScript().scrollpageToSpecificElement(reachOutToEnhancedGridCollapse);
			govgrants.flexTable().slideNestedFlexTable("TmpActiveGrantsGridFlexToggle", 150);
			if (reiDriver.findMyElement().getElement(currentBudgetPeriodEndDate).isDisplayed()) {
				flag = true;
			}
		} catch (Exception e) {
		}
		return flag;
	}

	/**
	 * return true if action button inside enhanced grid table is displayed
	 * 
	 * @param buttonName
	 * @param headerName
	 * @return
	 */
	private boolean isActionButtonInsideTopOfEnhancedGridTableDisplayed(String buttonName, String headerName) {
		boolean flag = false;
		try {
			reiDriver.JavaScript().scrollpageToSpecificElement(reachOutToEnhancedGridCollapse);
			if (reiDriver.findMyElement().getElement(By.xpath("//*[@title='" + headerName + "' or text()='" + headerName
					+ "']/ancestor::div[contains(@class,'header-title') or 1]/following-sibling::div/div[contains(@class,'header-buttons')]//*[text()='"
					+ buttonName + "'] |//*[@title='" + headerName + "' or text()='" + headerName
					+ "']/ancestor::div[contains(@class,'header-title') or 1]/following-sibling::div/action//button[contains(@title,'"
					+ buttonName + "') or @text()='" + buttonName + "']")).isDisplayed()) {
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

	/**
	 * return true if expected amount at particular cell inside enhanced grid table
	 * is displayed
	 * 
	 * @param value
	 * @return
	 */
	private boolean isExpectedSumValueAtEnhancedGridTableDisplayed(BigDecimal value) {
		boolean flag = false;
		try {
			reiDriver.JavaScript().scrollpageToSpecificElement(obligatedAmountSpecificCells);
			List<WebElement> rows_table = reiDriver.findMyElement().getElements(obligatedAmountSpecificCells);
			String str = "";
			String strNew = "";
			BigDecimal bd = new BigDecimal(0);
			Integer counter = 0;

			for (int row = 0; row < rows_table.size(); row++) {
				if (row <= 2) {
					str = rows_table.get(row).getText();
					strNew = str.replaceAll("[$|,|']", "");
					bd = new BigDecimal(strNew);
					if (strNew != null) {
						counter += new BigDecimal(strNew).intValue();
					}
				}
				if (row == 3) {
					str = rows_table.get(row).getText();
					strNew = str.replaceAll("[$|,|']", "");
					bd = new BigDecimal(strNew);
					if (counter.doubleValue() == bd.doubleValue() && counter.doubleValue() == bd.doubleValue()) {
						flag = true;
					} else {
						flag = false;
					}
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

	/**
	 * return true if particular column value of enhanced grid table is in
	 * ascending/descending order
	 *
	 * @return
	 */
	private boolean isColumnValueInExectedOrder(String text, String order) {
		boolean flag = false;
		try {
			reiDriver.JavaScript().scrollpageToSpecificElement(reachOutToEnhancedGridCollapse);
			ArrayList<String> obtainedList = new ArrayList<>();
			List<WebElement> rows_table = getTableColumnCompleteContent(text);
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
	 * get particular table column complete content
	 * 
	 * @param text
	 * @return
	 */
	public List<WebElement> getTableColumnCompleteContent(String text) {
		return reiDriver.findMyElement().getElements(By.xpath("//table/tbody/tr/td//*[@field-name='" + text + "']"));
	}

	/**
	 * check the sequence of the edit action at enhanced grid table
	 * 
	 * @param buttonName
	 * @param sequenceNumber
	 * @return true/false
	 */
	private boolean isEditActionIconSequenceAtEnhancedGridTable(String iconName, String tableId, int sequenceNumber) {
		if (getCompleteTableAction(iconName, tableId).get(sequenceNumber).getAttribute("title").contains(iconName)) {
			return true;
		} else
			return false;
	}

	/**
	 * get complete action of table Flex/Enhanced
	 * 
	 * @param tableId
	 * @param iconName
	 * @return
	 */
	public List<WebElement> getCompleteTableAction(String iconName, String tableId) {
		By actionItem = By.xpath("//div[@id='" + tableId + "']//div/table/tbody//td//a[@title='" + iconName + "']");
		return reiDriver.findMyElement().getElements(actionItem);
	}

	/**
	 * Boolean status of menu icon from program child flex table(Grid)
	 *
	 * @param panelTitleName
	 */
	private Boolean isMenuIconDisabledInChildFlexTable(String panelTitleName) {
		boolean flag = false;
		try {
			if (reiDriver.findMyElement().getElement(govgrants.phasePannel().getParallelBarsLocator(panelTitleName))
					.isDisplayed()) {
				flag = false;
			}
		} catch (org.openqa.selenium.NoSuchElementException e) {
			flag = true;
		}
		return flag;
	}

	/**
	 *
	 * @return true if Quick Search is not available in child flex table.
	 */
	private Boolean isQuickSearchDisabledForChildFlexTableInEnhancedGrid(String childTableId){
		boolean flag = true;
		try {
			reiDriver.JavaScript().scrollpageToSpecificElement(reachOutToEnhancedGridCollapse);
			if (reiDriver.findMyElement().getElement(By.xpath("//div[@id='"+childTableId+"']/div[1]//input")).isDisplayed()) {
				flag = false;
			}
		} catch (Exception e) {
		}
		return flag;
	}

	/**
	 * check if total record are enabled for child flex table or not.
	 * @param footerName
	 * @param tableId
	 * @return
	 */
	private Boolean isTotalRecordsEnabledForChildFlexTable(String footerName, String tableId){
			reiDriver.JavaScript().scrollpageToSpecificElement(reachOutToEnhancedGridCollapse);
			return reiDriver.WaitFor().WaitForElementToBePresent(By.xpath("//div[@id='"+tableId+"']//span[contains(text(),'"+footerName+"')]")).isDisplayed();
	}

	/**
	 * check if Record Selection option is Enabled or not
	 * @return
	 */
	private Boolean isRecordSelectionEnabledOnChildFlexTable(){
		return reiDriver.WaitFor().WaitForElementToBePresent(By.xpath("//input[@id='TmpGrantorActiveAwardsGridcheckBox']")).isDisplayed();
	}
	
	/**
	 * 
	 * @return true if changed cell value for Id column is displayed for enhaced grid child flex table
	 */
	private Boolean isInputTextBoxIsDisplayedForIdColumnOfChildFlexTableAtEnhancedGrid() {
		boolean flag = false;
		try {
			reiDriver.JavaScript().scrollpageToSpecificElement(reachOutToEnhancedGridCollapse);
			//govgrants.flexTable().slideNestedFlexTable("TmpActiveGrantsGridFlexToggle", 150);
			if (reiDriver.findMyElement().getElement(idColumnForChildFlexTable).isDisplayed()) {
				flag = true;
			}
		} catch (Exception e) {
		}
		return flag;
	}
}
