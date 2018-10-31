package com.framework.automation.pageobject;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.testng.Assert;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.GovGrantsHandler;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.projectmanager.GovGrantsManager;

public class PageLayoutPage extends GovGrantsManager {

	/******* "Variables and Locators" *****************/

	private final By overViewHeader, overViewTitle, pageInstructionText, headerInstructionText, headerOverviewTab,
			headerInstructionTextForPageBlock, rolesAndResponsibilitiesFlexTableTitle, monitoringFlexGridTitle;

	/**
	 * Constructor to handle dependency injection and framework library
	 */
	public PageLayoutPage(Controller controller, Handlers reiDriver, GovGrantsHandler govgrants) {
		super(controller, reiDriver, govgrants);
		overViewHeader = By.cssSelector("h2.panel-title>div>span.customLabelstyle");
		overViewTitle = By.cssSelector("h2.panel-title>div>span.overview-title");
		pageInstructionText = By.cssSelector("div.article>div");
		headerInstructionText = By.cssSelector("div.tabheaderinstruction");
		headerOverviewTab = By.xpath("//div[@class='panel-body']//span[contains(text(),'ID')]");
		headerInstructionTextForPageBlock = By.xpath("//div//span[contains(text(),'Header for Automation')]");
		rolesAndResponsibilitiesFlexTableTitle = By.xpath(
				"//div[@class='panel-heading']//div[contains(@class,'panel-title')]//a//span[contains(text(),'Roles And Responsibilities')]");
		monitoringFlexGridTitle = By.xpath(
				"//div[@class='panel-heading']//div[contains(@class,'panel-title')]//a[@title='Monitoring Schedule For All Active Grants']");
	}

	/******* "Key Methods with complete functionality - public" *****************/

	/**
	 * click on the sub tab after clicking flex table icon
	 * 
	 * @param subTab
	 */
	public void clickSubTab(String subTab) {
		reiDriver.WaitFor().WaitForElementToBePresent(By.xpath("//div[@id='myTabs']/ul/li/a[@name='" + subTab + "']"))
				.click();
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
	 * assert true if header button inside edit detail page as per name is displayed
	 * 
	 * @param buttonName
	 */
	public void assertHeaderButtonsDisplayed(String buttonName) {
		Assert.assertTrue(isHeaderButtonDisplayed(buttonName));
	}

	/**
	 * assert true if sub tab inside detail page as per name is not displayed
	 * 
	 * @param subTabName
	 */
	public void assertSubTabButtonsNotDisplayed(String subTabName) {
		Assert.assertTrue(isSubTabButtonDisplayed(subTabName));
	}

	/**
	 * 
	 * @param subTabName
	 * @param number
	 */
	public void assertSortingOfSubTab(String subTabName, int number) {
		Assert.assertTrue(isSubTabSequence(subTabName, number));
	}

	/**
	 * assert true if correct header instruction text is displayed
	 */
	public void assertHeaderInstructionText(String headerText) {
		Assert.assertTrue(isHeaderInstructionTextDisplayed(headerText));
	}

	/**
	 * assert true if changed title of sub tab inside detail page as per name is
	 * displayed
	 * 
	 * @param subTabName
	 */
	public void assertChangedTitleOfSubTab(String subTabName) {
		Assert.assertTrue(isChangedSubTabTitleDisplayed(subTabName));
	}

	/**
	 * assert true if changed icon css of sub tab inside detail page as per name is
	 * displayed
	 * 
	 * @param subTabName
	 */
	public void assertSubTabIconDisplayed(String subTabName) {
		Assert.assertTrue(reiDriver.WaitFor()
				.WaitForElementToBePresent(By.xpath(
						"//div[@id='myTabs']/ul/li/a[@name='" + subTabName + "']//i[contains(@class,'fa-pencil')]"))
				.isDisplayed());
	}

	/**
	 * assert true if header overview tab inside detail page is displayed
	 */
	public void assertHeaderOverviewTabDisplayed() {
		Assert.assertTrue(isHeaderOviewTabDisplayed());
	}

	/**
	 * assert if changed page block title is displayed
	 * 
	 * @param titleName
	 */
	public void assertChangedPageBlockTitleDisplayed(String titleName) {
		Assert.assertTrue(isPageBlockTitleDisplayed(titleName));
	}

	/**
	 * assert if page block is not displayed
	 * 
	 * @param titleName
	 */
	public void assertPageBlockIsNotDisplayed(String titleName) {
		Assert.assertFalse(isPageBlockTitleDisplayed(titleName));
	}

	/**
	 * 
	 * @param pageBlockName
	 * @param number
	 */
	public void assertSortingOfPageBlock(String pageBlockName, int number) {
		Assert.assertTrue(isPageBlockSequence(pageBlockName, number));
	}

	/**
	 * assert true if correct header instruction text is displayed at page block
	 */
	public void assertHeaderInstructionTextAtPageBlock(String headerText) {
		Assert.assertTrue(isHeaderInstructionTextDisplayedAtPageBlock(headerText));
	}

	/**
	 * 
	 * @param titleName
	 * @param number
	 */
	public void assertNumberOfElementsInsidePageBlock(String titleName, int number) {
		Assert.assertTrue(isExpectedNumberOfElementPresent(titleName, number));
	}

	/**
	 * assert changed flex table is displayed at page block
	 * 
	 */
	public void assertCorrectFlexTableDisplayedAtPageBlock() {
		Assert.assertTrue(isChangedFlexTableTitleDisplayedAtPageBlock());
	}

	/**
	 * assert changed flex grid is displayed at page block
	 * 
	 */
	public void assertCorrectFlexGridDisplayedAtPageBlock() {
		Assert.assertTrue(isChangedFlexGridTitleDisplayedAtPageBlock());
	}

	/**
	 * assert if specific action icon is not displayed inside attachment
	 * 
	 * @param actionIcon
	 */
	public void assertActionIconNotDisplayedInsideAttachment(String pageBlockName) {
		Assert.assertTrue(isActionIconNotDisplayedInsideAttachment(pageBlockName));
	}

	/**
	 * assert if specific action icon is not visible inside attachment
	 * 
	 * @param pageBlockName
	 */
	public void assertActionIconNotVisibleInsideAttachment(String pageBlockName) {
		Assert.assertFalse(isActionIconNotDisplayedInsideAttachment(pageBlockName));
	}

	/*********
	 * "Local Methods with complete functionality - private"
	 *****************/

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
	private WebElement getTakeSnapshotOptionForVerification(String headerItem) {
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
			if (getPromptBoxForVerification().isDisplayed() || getPromptBoxForVerification().isEnabled()) {
				flag = true;
			}
		} catch (Exception e) {
			System.out.println(e);
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
	 * return true if any header button is not displayed
	 * 
	 * @param buttonName
	 * @return
	 */
	private boolean isSubTabButtonDisplayed(String subTabName) {
		boolean flag = true;
		try {
			if (getSubTabsInsideMainDetailPage(subTabName).isDisplayed()) {
				flag = false;
			}
		} catch (org.openqa.selenium.NoSuchElementException e) {

		}
		return flag;
	}

	/**
	 * Boolean status of Sub tab sorting order
	 * 
	 * @param status
	 */
	private Boolean isSubTabSequence(String subTabName, int number) {
		if (getListSubTabsInsideMainDetailPage().get(number).getText().contains(subTabName)) {
			return true;
		} else
			return false;
	}

	/**
	 * return true if text is displayed
	 * 
	 * @param text
	 * @return
	 */
	private boolean isHeaderInstructionTextDisplayed(String headerText) {
		boolean flag = false;
		if (reiDriver.findMyElement().getElement(headerInstructionText).getText().equalsIgnoreCase(headerText)) {
			flag = true;
		}
		return flag;
	}

	/**
	 * return true if changed tile of sub tab is displayed
	 * 
	 * @param subTabName
	 * @return
	 */
	private boolean isChangedSubTabTitleDisplayed(String subTabName) {
		boolean flag = false;
		try {
			if (getSubTabsInsideMainDetailPage(subTabName).isDisplayed()) {
				flag = true;
			}
		} catch (org.openqa.selenium.NoSuchElementException e) {

		}
		return flag;
	}

	/**
	 * return true if header overview tab is displayed
	 * 
	 * @return
	 */
	private boolean isHeaderOviewTabDisplayed() {
		boolean flag = false;
		try {
			if (reiDriver.findMyElement().getElement(headerOverviewTab).isDisplayed()) {
				flag = true;
			}
		} catch (Exception e) {
		}
		return flag;
	}

	/**
	 * 
	 * @param titleName
	 * @return true if page block title is displayed
	 */
	private boolean isPageBlockTitleDisplayed(String titleName) {
		boolean flag = false;
		try {
			if (reiDriver.findMyElement().getElement(By.xpath("//h3//a[contains(text(),'" + titleName + "')]"))
					.isDisplayed()) {
				flag = true;
			}
		} catch (Exception e) {

		}
		return flag;
	}

	/**
	 * Boolean status of page block sorting order
	 * 
	 * @param status
	 */
	private Boolean isPageBlockSequence(String pageBlockName, int number) {
		if (getListPageBlockInsideMainDetailPage().get(number).getText().contains(pageBlockName)) {
			return true;
		} else
			return false;
	}

	/**
	 * return true if text is displayed
	 * 
	 * @param text
	 * @return
	 */
	private boolean isHeaderInstructionTextDisplayedAtPageBlock(String headerText) {
		boolean flag = false;
		if (reiDriver.findMyElement().getElement(headerInstructionTextForPageBlock).getText()
				.equalsIgnoreCase(headerText)) {
			flag = true;
		}
		return flag;
	}

	/**
	 * Boolean status of no of elements inside page block row
	 * 
	 * @param status
	 */
	private Boolean isExpectedNumberOfElementPresent(String titleName, int number) {
		boolean flag = false;
		List<WebElement> firstRowElements = reiDriver.WaitFor()
				.WaitForElementListToBePresent(By.xpath("//h3//a[contains(text(),'" + titleName
						+ "')]/ancestor::div[2]/following-sibling::div[contains(@id,'toggleBlock')]/div[1]/div"));
		if (firstRowElements.size() == number) {
			flag = true;
		} else {
			flag = false;
		}
		return flag;
	}

	/**
	 * validate if flex table title is displayed with respective title at page block
	 * 
	 * @return
	 */
	private boolean isChangedFlexTableTitleDisplayedAtPageBlock() {
		reiDriver.JavaScript().scrollElementToPageDetailCenter(rolesAndResponsibilitiesFlexTableTitle);
		try {
			if (reiDriver.findMyElement().getElement(rolesAndResponsibilitiesFlexTableTitle).isDisplayed()) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			return false;
		}
	}

	/**
	 * validate if changed flex grid is displayed with respective title at page
	 * block
	 * 
	 * @return
	 */
	private boolean isChangedFlexGridTitleDisplayedAtPageBlock() {
		reiDriver.JavaScript().scrollElementToPageDetailCenter(monitoringFlexGridTitle);
		try {
			if (reiDriver.findMyElement().getElement(monitoringFlexGridTitle).isDisplayed()) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			return false;
		}
	}

	/**
	 * Boolean status of action item inside attachment page block row
	 * 
	 * @param status
	 */
	private boolean isActionIconNotDisplayedInsideAttachment(String pageBlockName) {
		boolean flag = false;
		try {
			if (getListAttachmentTableSpecificColumnActions(pageBlockName).size() > 0) {
				flag = true;
			}
		} catch (Exception e) {
			flag = false;
		}
		return flag;
	}

	/**
	 * get list of element in attachment table action
	 * 
	 * @param headerName
	 * @return
	 */
	private List<WebElement> getListAttachmentTableSpecificColumnActions(String pageBlockName) {
		return reiDriver.findMyElement().getElements(By.xpath("//div[@class='panel-heading']//a[@title='"
				+ pageBlockName
				+ "']/../../../following-sibling::div[contains(@class,'panel-body')]//table/tbody/tr/td//a/span[contains(@class,'fa fa-pencil disable-action')]"));
	}
}
