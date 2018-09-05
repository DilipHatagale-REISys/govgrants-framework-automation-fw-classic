package com.framework.automation.pageobject;

import java.util.ArrayList;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.testng.Assert;
import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.projectmanager.GovGrantsManager;

public class GrantorPlanningPage extends GovGrantsManager {

	/******* "Variables and Locators" *****************/

	private final By overViewHeader, overViewTitle, pageInstructionText, approvalDecisionPannel;

	/**
	 * Constructor to handle dependency injection and framework library
	 */
	public GrantorPlanningPage(Controller controller, Handlers reiDriver) {
		super(controller, reiDriver);
		overViewHeader = By.cssSelector("h2.panel-title>div>span.customLabelstyle");
		overViewTitle = By.cssSelector("h2.panel-title>div>span.overview-title");
		pageInstructionText = By.cssSelector("div.article>div");
		approvalDecisionPannel = By.cssSelector("div>span>input[name='myRadio']");
	}

	/******* "Key Methods with complete functionality - public" *****************/

	/**
	 * selects radio option from approval decision panel
	 * 
	 * @param radioName
	 */
	public void selectApproveDecisionOption(String radioName) {
		getApprovalDecisionPannel(radioName).click();
	}

	/**
	 * assert correct title name of table is displayed
	 * 
	 * @param titleName
	 */
	public void assertCorrectFlexTableTitleDisplayed(String titleName) {
		Assert.assertTrue(isTitleDisplayed(titleName));
	}

	/**
	 * assert two specific items are not displayed in top righ parallel lines bar
	 * 
	 * @param option1
	 * @param option2
	 */
	public void assertTopRightParallelLinesBarSpecificOptionsDisabled(String option1, String option2) {
		Assert.assertTrue(isTopRightParallelLinesBarSpecificOptionsDisabled(option1, option2));
	}

	/**
	 * assert if quick search is not displayed
	 */
	public void assertquickSearchDisabled() {
		Assert.assertTrue(isQuickSearchDisabled());
	}

	/**
	 * assert if advance filter is disabled from planning flex table
	 */
	public void assertDisableAdvanceFilter() {
		Assert.assertTrue(isAdvanceFilterDisabled());
	}

	/**
	 * assert if menu icon is disabled from planning flex table
	 */
	public void assertDisableMenuIcon() {
		Assert.assertTrue(isMenuIconDisabled());
	}

	/***
	 * assert true if check box select record enabled
	 */
	public void assertFlexTabelRecordSelectionEnabled() {
		Assert.assertTrue(isSelectRecordCheckBox());
	}

	/**
	 * assert true if total row calculation is disabled
	 */
	public void assertFlexTabelTotalCalulationRowDisabled() {
		reiDriver.JavaScript().scrollpageJS("PageDown", 0, 0);
		Assert.assertTrue(isFlexTableRowsTotalDisabled());
	}

	/**
	 * assert true if total row calculation is disabled
	 */
	public void assertFlexTabelRowCountDisabled() {
		reiDriver.JavaScript().scrollpageJS("PageDown", 0, 0);
		Assert.assertTrue(isFlexTableRowsCountDisabled());
	}

	/**
	 * @param lastRowName
	 */
	public void assertnewAddedLastRowLabelName(String flexTablelastRowName) {
		reiDriver.WaitFor().WaitForElementToBePresent(flexTablelastRowNameAsTotal);
		reiDriver.JavaScript().scrollpageToSpecificElement(flexTablelastRowNameAsTotal);
		Assert.assertEquals(getLastRowLabelContent().getText(), flexTablelastRowName);
	}

	/**
	 * assert true if header column name is present
	 * 
	 * @param headerColumnName
	 */
	public void assertFlexTableHeaderColumnName(String headerColumnName) {
		Assert.assertTrue(isFlexTableColumnHeaderName(headerColumnName));
	}

	/**
	 * assert if Edit icon open in new tab or not
	 */
	public void assertEditWithNewTab() {
		Assert.assertTrue(isNewTabOpensForEdit());
	}

	/**
	 * return true if specific status category is not displayed
	 * 
	 * @param statusName
	 */
	public void assertFlexTableStatusDisabled(String statusName) {
		Assert.assertTrue(isStatusCategoryDisabled(statusName));
	}

	/**
	 * assert true if correct overview header is displayed
	 * 
	 * @param overViewTitle
	 * @param overViewHeader
	 */
	public void assertOverViewTitleWithHeader(String overViewTitle, String overViewHeader) {
		Assert.assertTrue(isOverViewTitleWithHeaderDisplayed(overViewHeader, overViewTitle));
	}

	/**
	 * assert true if correct page instruction text is displayed
	 */
	public void assertPageInstructionText(String text) {
		Assert.assertTrue(isPageInstructionTextDisplayed(text));
	}

	/**
	 * return true if correct overview header is displayed
	 * 
	 * @param overViewHeaderName
	 */
	public void assertOverViewHeaderDisplayed(String overViewHeaderName) {
		Assert.assertTrue(isOverViewHeaderDisplayed(overViewHeaderName));
	}

	/**
	 * return true if top right header button as per name is not idsplayed
	 * 
	 * @param buttonName
	 */
	public void assertTopRightButtonNotDisplayed(String buttonName) {
		Assert.assertTrue(isTopRightHeaderButtonDisplayed(buttonName));
	}

	/**
	 * Assert specific approce radio button is not displayed
	 * 
	 * @param radioButtonName
	 */
	public void assertRadioButtonNotDisplayed(String radioButtonName) {
		Assert.assertTrue(isApprovalDecisionRadioButtonDisplayed(radioButtonName));
	}

	/**
	 * assert true if sequence is correct as per provided name
	 * 
	 * @param radioName
	 * @param sequenceNumber
	 */
	public void assertApprovalDecisoinRadioSequence(String radioName, int sequenceNumber) {
		Assert.assertTrue(isApprovalDecisionRadioSequence(radioName, sequenceNumber));
	}

	/**
	 * assert if error is displayed on not entering text in decision box
	 * 
	 * @param error
	 */
	public void assertDecisionCommentsMandatory(String error) {
		Assert.assertTrue(reiDriver.WaitFor().WaitForElementToBePresent(dangerAlert).getText().equalsIgnoreCase(error));
	}

	/**
	 * assert download pdf option not displayed inside menu dropdown for program
	 * detail page
	 */
	public void assertDownloadPDFDisabled() {
		Assert.assertTrue(isOptionsDownloadPDFDisabled());
	}

	/**
	 * assert take snapshot option not displayed inside menu dropdown for program
	 * detail page
	 * 
	 * @param option
	 */
	public void assertTakeSnapshotDisabled(String option) {
		Assert.assertTrue(isTakeSnapshotDisabled(option));
	}

	/**
	 * assert prompt dialog box displayed on button click
	 * 
	 */
	public void assertPromptDialogBoxDisplayed() {
		Assert.assertTrue(isPromptBoxDisplayed());
	}

	/**
	 * assert true if header button inside detail page as per name is not displayed
	 * 
	 * @param buttonName
	 */
	public void assertHeaderButtonsNotDisplayed(String buttonName) {
		Assert.assertTrue(isHeaderButtonDisplayed(buttonName));
	}

	/**
	 * Assert specific approve radio button text
	 * 
	 * @param radioButtonName
	 */
	public void assertApproveRadioButtonText(String radioButtonName) {
		Assert.assertTrue(isApprovalRadioButtonTextChanged(radioButtonName));
	}

	/*********
	 * "Local Methods with complete functionality - private"
	 *****************/

	/**
	 * validate if tile is displayed
	 * 
	 * @param titleName
	 * @return
	 */
	private boolean isTitleDisplayed(String titleName) {
		clickLeftPanelHeader();
		try {
			if (getLeftPanelHeader(titleName).isDisplayed()) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			return false;
		}
	}

	/**
	 * validate if options are not displayed in top right parallel line bar
	 * 
	 * @param option1
	 * @param option2
	 * @return: true if it is not displayed
	 */
	private boolean isTopRightParallelLinesBarSpecificOptionsDisabled(String option1, String option2) {
		boolean flag = false;
		try {
			if (getItemFromTopRightHeaderBarsWithoutWaitTime(option1).isDisplayed()) {
				flag = false;
			}
		} catch (Exception e) {
			flag = true;
		}

		try {
			if (getItemFromTopRightHeaderBarsWithoutWaitTime(option2).isDisplayed()) {
				flag = false;
			}
		} catch (Exception e) {
			flag = true;
		}

		return flag;
	}

	/**
	 * validate if quick dearch is displayed or not
	 * 
	 * @return: true if it is not displayed
	 */
	private boolean isQuickSearchDisabled() {
		boolean flag = false;
		try {
			if (reiDriver.findMyElement().getElement(searchInput).isDisplayed()) {
				flag = false;
			}
		} catch (Exception e) {
			flag = true;
		}
		return flag;
	}

	/**
	 * Boolean status of advance filter option from program flex table
	 * 
	 * @param status
	 */
	private Boolean isAdvanceFilterDisabled() {
		boolean flag = false;
		try {
			if (getAdvanceFilterItem().isDisplayed()) {
				flag = false;
			}
		} catch (org.openqa.selenium.NoSuchElementException e) {
			flag = true;
		}
		return flag;
	}

	/**
	 * Boolean status of menu icon from program flex table
	 * 
	 * @param status
	 */
	private Boolean isMenuIconDisabled() {
		boolean flag = false;
		try {
			if (getMenuIcon().isDisplayed()) {
				flag = false;
			}
		} catch (org.openqa.selenium.NoSuchElementException e) {
			flag = true;
		}
		return flag;
	}

	/**
	 * 
	 * @return: true if select record check box eneabled
	 */
	private boolean isSelectRecordCheckBox() {
		boolean flag = false;
		try {
			for (WebElement element : getCompleteTableRow()) {
				if (element.findElement(selectRecordCheckBox).isDisplayed()) {
					flag = true;
					break;
				}
			}
		} catch (Exception e) {

		}
		return flag;
	}

	/**
	 * 
	 * @return true if element is not displayed
	 */
	private Boolean isFlexTableRowsTotalDisabled() {
		boolean flag = true;
		try {
			if (getCompleteTableRow().stream().anyMatch(item -> item.findElement(totalRowsCalc).isDisplayed())) {
				flag = false;
			}
		} catch (org.openqa.selenium.NoSuchElementException e) {
		}
		return flag;
	}

	/**
	 * 
	 * @return true if element is not displayed
	 */
	private Boolean isFlexTableRowsCountDisabled() {
		boolean flag = true;
		try {
			if (getCompleteTableRow().stream().anyMatch(item -> item.findElement(totalRowCount).isDisplayed())) {
				flag = false;
			}
		} catch (org.openqa.selenium.NoSuchElementException e) {
		}
		return flag;
	}

	/**
	 * access last row label name
	 * 
	 * @return
	 */
	public WebElement getLastRowLabelContent() {
		return reiDriver.WaitFor().WaitForElementToBePresent(flexTablelastRowNameAsTotal);
	}

	/**
	 * 
	 * @return false if element is not displayed
	 */
	private Boolean isFlexTableColumnHeaderName(String titleName) {
		boolean flag = false;
		try {
			if (getSpecificElementFromTableHeader(titleName).isDisplayed()
					|| getSpecificElementFromTableHeader(titleName).isEnabled()) {
				flag = true;
			}
		} catch (org.openqa.selenium.NoSuchElementException e) {
			flag = false;
		}
		return flag;
	}

	/**
	 * Boolean status of Edit icon opens in another tab
	 * 
	 * @return
	 */
	private Boolean isNewTabOpensForEdit() {
		ArrayList<String> tabHandles = new ArrayList<String>(reiDriver.switchTo().getWindowsHandlers());
		boolean myNewTabFound = false;
		if (tabHandles.size() > 1)
			myNewTabFound = true;
		return myNewTabFound;
	}

	/**
	 * return true if statusName is not displayed
	 * 
	 * @param statusName
	 * @return
	 */
	private Boolean isStatusCategoryDisabled(String statusName) {
		boolean flag = true;
		try {
			if (getCompleteTableRow().stream()
					.anyMatch(item -> item.findElement(flexTableStatusColumn(statusName)).isDisplayed())) {
				flag = false;
			}
		} catch (org.openqa.selenium.NoSuchElementException e) {

		}
		return flag;
	}

	/**
	 * return true if suggested over view header and title are displayed
	 * 
	 * @param overViewTitleName
	 * @param overViewHeaderName
	 * @return
	 */
	private boolean isOverViewTitleWithHeaderDisplayed(String overViewHeaderName, String overViewTitleName) {
		boolean flag = false;
		if ((reiDriver.findMyElement().getElement(overViewHeader).getText().contains(overViewHeaderName))
				&& (reiDriver.findMyElement().getElement(overViewTitle).getText().contains(overViewTitleName))) {
			flag = true;
		}
		return flag;
	}

	/**
	 * return true if text is displayed
	 * 
	 * @param text
	 * @return
	 */
	private boolean isPageInstructionTextDisplayed(String text) {
		boolean flag = false;
		if (reiDriver.findMyElement().getElement(pageInstructionText).getText().equalsIgnoreCase(text)) {
			flag = true;
		}
		return flag;
	}

	/**
	 * return true if over view header is displayed
	 * 
	 * @param overViewHeaderName
	 * @return
	 */
	private boolean isOverViewHeaderDisplayed(String overViewHeaderName) {
		boolean flag = false;
		if ((reiDriver.findMyElement().getElement(overViewHeader).getText().contains(overViewHeaderName))) {
			flag = true;
		}
		return flag;
	}

	/**
	 * return true if any specific top right hand button is not displayed
	 * 
	 * @param buttonName
	 * @return
	 */
	private boolean isTopRightHeaderButtonDisplayed(String buttonName) {
		boolean flag = true;
		try {
			if (reiDriver.findMyElement()
					.getElement(By.xpath(
							"//div[@class='panel-heading']//div[contains(@class,'header-buttons')]//button[@title='"
									+ buttonName + "']"))
					.isDisplayed()) {
				flag = false;
			}
		} catch (org.openqa.selenium.NoSuchElementException e) {

		}
		return flag;
	}

	private boolean isApprovalDecisionRadioButtonDisplayed(String radioButtonName) {
		boolean flag = true;
		try {
			if (getApprovalDecisionPannel(radioButtonName).isDisplayed()) {
				flag = false;
			}
		} catch (org.openqa.selenium.NoSuchElementException e) {

		}
		return flag;
	}

	/**
	 * get radio button specific to Approval decision
	 * 
	 * @param radioButtonName
	 * @return
	 */
	private WebElement getApprovalDecisionPannel(String radioButtonName) {
		return reiDriver.findMyElement()
				.getElement(By.xpath("//div/span/input[@name='myRadio' and @value='" + radioButtonName + "']"));
	}

	/**
	 * return true if specific radio name appears at a specific sequence
	 * 
	 * @param radioName
	 * @param sequenceNumber
	 * @return
	 */
	private Boolean isApprovalDecisionRadioSequence(String radioName, int sequenceNumber) {
		if (reiDriver.findMyElement().getElements(approvalDecisionPannel).get(sequenceNumber).getAttribute("value")
				.contains(radioName)) {
			return true;
		} else
			return false;
	}

	/**
	 * validate if options are not displayed in Detail page
	 * 
	 * @param option
	 * @return: true if it is not displayed
	 */
	private boolean isOptionsDownloadPDFDisabled() {
		boolean flag = false;
		try {
			if (getPDFOptionForVerification().getAttribute("style").toLowerCase().contains("display: none")) {
				flag = true;
			}
		} catch (Exception e) {
			flag = false;
		}
		return flag;
	}

	/**
	 * get pdf download item from top right bar inside menu without waiting for
	 * presence.
	 * 
	 * @return
	 */
	public WebElement getPDFOptionForVerification() {
		return reiDriver.findMyElement()
				.getElement(By.cssSelector(".dropdown.open>.dropdown-menu-right>li:nth-child(8)"));
	}

	/**
	 * validate if options are not displayed in Detail page
	 * 
	 * @param option
	 * @return: true if it is not displayed
	 */
	private boolean isTakeSnapshotDisabled(String option) {
		boolean flag = false;
		try {
			if (getTakeSnapshotOptionForVerification(option).getAttribute("style").toLowerCase()
					.contains("display: none")) {
				flag = true;
			}
		} catch (Exception e) {
			flag = false;
		}
		return flag;
	}

	/**
	 * get take snapshot item from top right bar inside menu without waiting for
	 * presence.
	 * 
	 * @param headerItem
	 * @return
	 */
	public WebElement getTakeSnapshotOptionForVerification(String headerItem) {
		return reiDriver.findMyElement()
				.getElement(By.xpath("//div[@id='headerButtonsPanel']//ul/li//a[@title='" + headerItem + "']"));
	}

	/**
	 * validate if prompt dialog box is displayed on click of submit for approval
	 * button
	 *
	 * @return: true if it is not displayed
	 */
	private boolean isPromptBoxDisplayed() {
		boolean flag = false;
		try {
			// reiDriver.WaitFor().makeThreadSleep(3000);
			if (getPromptBoxForVerification().isDisplayed()) {
				flag = true;
			}
		} catch (Exception e) {
			flag = false;
		}
		return flag;
	}

	/**
	 * get prompt box details
	 * 
	 * @return
	 */
	public WebElement getPromptBoxForVerification() {
		return reiDriver.WaitFor().WaitForElementToBePresent(
				By.xpath("//div[@class='modal-dialog modal-sm']/div[@class='modal-content']"));
	}

	/**
	 * return true if any header button is not displayed
	 * 
	 * @param buttonName
	 * @return
	 */
	private boolean isHeaderButtonDisplayed(String buttonName) {
		boolean flag = true;
		try {
			if (reiDriver.findMyElement()
					.getElement(By.xpath("//div[@id='headerButtonsPanel']//*[@title='" + buttonName + "']"))
					.isDisplayed()) {
				flag = false;
			}
		} catch (org.openqa.selenium.NoSuchElementException e) {

		}
		return flag;
	}

	/**
	 * validate if radio button text is changed
	 * 
	 * @param radioButtonName
	 * @return
	 */
	private boolean isApprovalRadioButtonTextChanged(String radioButtonName) {
		boolean flag = false;
		try {
			if (getApprovedText(radioButtonName).getAttribute("innerText").equals(radioButtonName)) {
				flag = true;
			}
		} catch (org.openqa.selenium.NoSuchElementException e) {
		}
		return flag;
	}

	/**
	 * get specific Approved text
	 * 
	 * @param radioButtonName
	 * @return
	 */
	private WebElement getApprovedText(String radioButtonName) {
		return reiDriver.findMyElement().getElement(By.xpath(
				"//div/span/input[@name='myRadio' and @value='Approve']//ancestor::span[@class='approval-actions ng-scope ng-binding']"));
	}
}
