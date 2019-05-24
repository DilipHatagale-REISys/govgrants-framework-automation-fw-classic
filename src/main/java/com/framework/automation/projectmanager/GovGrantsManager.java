package com.framework.automation.projectmanager;

import com.automation.rei.handlers.GovGrantsHandler;
import eyethink.automation.bots.controller.Controller;
import eyethink.automation.bots.controller.CoreHandlers;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.testng.Assert;

import java.awt.*;
import java.io.File;
import java.util.List;

/**
 * for Rei Systems
 * 
 * @author Handles generic/common methods and WebElements of the project.
 * 
 */
public class GovGrantsManager extends ProjectWebServices {
	public String standardPassword = "Automation@12345";
	public String defaultComment = "Automation testing";
	public WebElement recordElement;
	public final By navigationLogo, searchInput, rightHeaderBars, egmsHeader, completeTableRow, sideBarHeadersList,
			advanceFilterButton, menuIcon, selectRecordCheckBox, totalRowsCalc, flexTablelastRowNameAsTotal,
			pendingTasksTableRef, dangerAlert, confirmationBoxMessage, selectDropdown, allPhases, chartsContainer,
			containerFluid_PageWrapperList, reachOutToTmpActiveGrantsGrid;

	/**
	 * Super Constructor
	 * 
	 * @param controller
	 * @param reiDriver
	 */
	public GovGrantsManager(Controller controller, CoreHandlers reiDriver, GovGrantsHandler govgrants) {
		super(controller, reiDriver, govgrants);
		navigationLogo = By.cssSelector("div#holdon-overlay>div>div>div>img.nav-logo");
		searchInput = By.cssSelector("div>div.quick-search>div>input");
		rightHeaderBars = By.xpath("//div[@class='panel-heading']//div[contains(@class,'header-bars')]");
		egmsHeader = By.xpath("//div[@class='navbar-header']/span[text()='Enterprise Grants Management System']");
		completeTableRow = By.xpath(
				"//div[@class='panel-heading']/following-sibling::div[contains(@class,'panel-body')]//div/table/tbody/tr");
		sideBarHeadersList = By.xpath(
				"//div[@id='sidebar-wrapper']//div[contains(@class,'customSidebar ')]//a/span/following-sibling::span");
		selectRecordCheckBox = By.xpath("//input[@aria-label='Select Record']");
		advanceFilterButton = By
				.xpath(".//*[@id='toggleFlexTablePrograms']//button/span[contains(text(),'Advance Filter')]");
		menuIcon = By.xpath(
				"//div[@class='panel-heading']//div[contains(@class,'header-bars')]//a[@title='Menu']//span[contains(@class,'fa fa-bars')]");
		totalRowsCalc = By.xpath("//td/b/span[contains(@ng-bind,'calculateTotalRowValues')]");
		flexTablelastRowNameAsTotal = By.xpath("//td/b/span[contains(@ng-bind-html,'TotalRowLabel')]");
		pendingTasksTableRef = By
				.xpath("//div[@class='table-responsive']/table/thead/tr/th/a/span/span[contains(text(),'Ref. ID')]");
		dangerAlert = By.cssSelector("div.alert-danger");
		confirmationBoxMessage = By.xpath("//div[@class='modal-dialog']//div[contains(@class, 'bootbox-body')]");
		selectDropdown = By.xpath(
				"//div/span/input[@name='myRadio' and @value='Approve']/../../following-sibling::div//span[@class='select2-chosen']");
		allPhases = By.xpath("//div/ul[@class='nav navbar-nav']/li/a");
		chartsContainer = By.cssSelector("div#charts span[id*='chartPageId'] div[class*='chartcontainer']");
		containerFluid_PageWrapperList = By.cssSelector("div#page-content-wrapper>div.container-fluid>div>div>div");
		reachOutToTmpActiveGrantsGrid = By.xpath("//*[@id='TmpGrantorActiveAwardsGridFlexToggle']");

	}

	/******* "Key Methods with complete functionality - Public" *****************/
	/**
	 * click on navigation bar item inside app. e.g; planning,announcements etc
	 * 
	 * @param tabName
	 */
	public void clickPhasesNaveBar(String tabName) {
		govgrants.mainPage().clickMainMenuBar(tabName);
	}

	/**
	 * click on navigation bar item on main admin homepage.
	 * 
	 * @param tabName
	 */
	public void clickAdminNavBar(String tabName, String appName) {
		reiDriver.WaitFor().makeThreadSleep(500);
		govgrants.mainPage().clickAdminNavBar(tabName);
		govgrants.mainPage().waitForEgmsHeader();
		govgrants.mainPage().setUpCustomAppDropDown(appName);
	}

	/**
	 * waits for navigation logo to get disappeared
	 * 
	 */
	public void waitForNavigationLogo() {
		try {
			if (reiDriver.is().isDispalyed(navigationLogo)) {
				reiDriver.WaitFor().WaitForElementToDisapear(navigationLogo);
			}
		} catch (Exception e) {

		}
	}

	/**
	 * click on any button on modal content
	 */
	public void clickModalContentSpecificButton(String buttonName) {
		govgrants.modal().clickModalContentSpecificButton(buttonName);
		govgrants.mainPage().waitForNavigationLogoToDisappear();
	}

	/**
	 * 
	 * @return: List of all side bar headers.
	 */
	public List<WebElement> getSideBarHeadersList() {
		return reiDriver.findMyElement().getElements(sideBarHeadersList);
	}

	/**
	 * 
	 * @return: List of all Accordian headers.
	 */
	public List<WebElement> accordianHeadersList(String headerName) {
		return govgrants.sideBar().getSideBarSubHeaders(headerName);
	}

	/**
	 * access on side bar sub header
	 * 
	 * @param sideBarCategory
	 * @param accordianSubHeader
	 * @return
	 */
	public WebElement getSideBarAccordianHeader(String sideBarCategory, String accordianSubHeader) {
		return govgrants.sideBar().getSideBarSubHeader(sideBarCategory, accordianSubHeader);
	}

	/**
	 * access side bar sub header detail
	 * 
	 * @param sideBarCategory
	 * @param accordianSubHeaderDetail
	 * @return
	 */
	public WebElement getSideBarAccordianSubHeaderContent(String sideBarCategory, String accordianSubHeaderDetail) {
		return govgrants.sideBar().getSideBarContent(sideBarCategory, accordianSubHeaderDetail);
	}

	/**
	 * click on flex table icons. Inside click on any tab with flex table.Reach out
	 * to any panel header
	 * 
	 * @param pannelTitleName
	 * @return
	 */
	public WebElement getFlexGridPanels(String pannelTitleName) {
		return reiDriver.WaitFor().WaitForElementToBePresent(
				By.xpath("//div[@class='panel-heading']//div[contains(@class,'panel-title')]//*[text()='"
						+ pannelTitleName + "']"));
	}

	/**
	 * get any button on right header inside planning etc.
	 * 
	 * @param buttonName
	 */
	public void getRightHeaderButton(String buttonName) {
		govgrants.pageDetails().clickAnyTopRightButton(buttonName);
	}

	/**
	 * get any item from top right bar inside phases
	 * 
	 * @param headerItem
	 * @return
	 */
	public WebElement getItemFromTopRightHeaderBars(String headerItem) {
		return govgrants.pageDetails().getMenuItemFromParallelLinesDropDown(headerItem);
	}

	/**
	 * click any button on right header inside detail page
	 * 
	 * @param buttonName
	 * @return
	 */
	public void clickRightHeaderButtonInsideDetailPage(String buttonName) {
		govgrants.pageDetails().clickAnyTopRightButton(buttonName);
		if (buttonName.equalsIgnoreCase("Submit For Approval")) {
			try {
				reiDriver.WaitFor().WaitForAlert();
				reiDriver.switchTo().acceptAlert();
			} catch (Exception e) {
			}
		}
	}

	/**
	 * get any element from title table bar except Action
	 * 
	 * @param titleName
	 * @return
	 */
	public WebElement getSpecificElementFromTableHeader(String titleName) {
		return govgrants.flexTable().getSpecificElementFromTableHeader(titleName);
	}

	/**
	 * get complete rows
	 * 
	 * @return
	 */
	public List<WebElement> getCompleteTableRow() {
		reiDriver.WaitFor().WaitForElementToBePresent(completeTableRow);
		return govgrants.flexTable().getCompleteTableRow();
	}

	/**
	 * click on main Accordian header
	 * 
	 * @param headerName
	 */
	public void clickAccordianHeader(String headerName) {
		govgrants.sideBar().getSideBarHeader(headerName).click();
	}

	/**
	 * click on sub accordian header
	 * 
	 * @param AccordianHeader
	 * @param subHeaderName
	 */
	public void clickAccordianSubHeader(String AccordianHeader, String subHeaderName) {
		govgrants.sideBar().getSideBarSubHeader(AccordianHeader, subHeaderName).click();
		getSideBarAccordianHeader(AccordianHeader, subHeaderName).click();
	}

	/**
	 * Assert for page title
	 * 
	 * @param pageTitle
	 */
	public void assertPageTitle(String pageTitle) {
		Assert.assertEquals(reiDriver.get().getPageTitle(), pageTitle);
	}

	/**
	 * return locator for status column
	 * 
	 * @param statusName
	 * @return
	 */
	public By flexTableStatusColumn(String statusName) {
		return govgrants.flexTable().getFlexTableColumn(statusName);
	}

	/**
	 * click on right header bars
	 */
	public void clickRightHeaderBars(String title) {
		try {
			reiDriver.JavaScript().scrollElementToPageDetailCenter(reachOutToTmpActiveGrantsGrid);
		} catch (Exception e) {
		}
		govgrants.phasePannel().clickParallelMenuBars(title);
	}

	/**
	 * get specific quick search
	 * 
	 * @param category
	 * @return
	 */
	public By getSpecificQuickSearch(String category) {
		By quickSearch = null;
		switch (category) {
		case "Program Performance Mgmt Grid View":
			quickSearch = By.cssSelector(
					"div#toggleFGridProgramPerformanceMgmtGridView>div input[aria-label='Quick Search Field']");
			break;
		}
		return quickSearch;
	}

	/**
	 * click and select any value from double arrow drop down
	 * 
	 * @param dropDownOption
	 */
	public void clickAndSelectOptionFromLeftDoubleArrowDropDown(String dropDownOption) {
		govgrants.phasePannel().clickDoubleArrowDropDownAndSelectItem(dropDownOption);
	}

	public void clearCookies() {
		reiDriver.eatCookies().deleteAllCookies();
	}

	/**
	 * click row level action item based on program role ,icon name
	 * 
	 * @param programRole
	 * @param iconName
	 */
	public void clickRowLevelActionIconsInsideSubTab(String iconName, String programRole) {
		govgrants.flexTable().clickTableActionIcons(iconName, programRole);
	}

	/**
	 * 
	 * @param phaseName
	 * @return phase from home page task summary
	 */
	public By getSpecificPhaseInTaskSummaryByPhase(String phaseName) {
		return By.xpath("//div[@id='taskSummaryDiv']//*[text()='Task Summary By Phase']/../..//span[text()='"
				+ phaseName + "']");
	}

	/**
	 * Assert true if any part of the content matches with current url
	 * 
	 * @param content
	 */
	public void assertCurrentURL(String content) {
		Assert.assertTrue(isCurrentURL(content));
	}

	/**
	 * click on menu of charts
	 * 
	 * @param chartName
	 */
	public void clickChartMenuIcon(String chartName) {
		govgrants.charts().clickChartMenuIcon(chartName);
	}

	/**
	 * select specific value from specific chart
	 * 
	 * @param chartName
	 * @param valueToSelect
	 */
	public void selectAnyItemFromChartsMenu(String chartName, String valueToSelect) {
		govgrants.charts().selectAnyItemFromChartsMenu(chartName, valueToSelect);
	}

	/**
	 * check title of any modal
	 * 
	 * @param titleName
	 * @return
	 */
	public boolean isTitleOfModal(String titleName) {
		return reiDriver.WaitFor()
				.WaitForElementToBePresent(By.xpath("//*[@class='modal-title ng-binding'][text()='" + titleName + "']"))
				.isDisplayed();
	}

	/**
	 * save file using robot class
	 * 
	 * @throws AWTException
	 */
	public void saveFile() throws AWTException {
		reiDriver.switchTo().switchToWindowHandler(1);
		reiDriver.WaitFor().makeThreadSleep(20000);
		reiDriver.RobotActions().ctrl_Save();
		reiDriver.WaitFor().makeThreadSleep(2000);
		reiDriver.RobotActions().Robot_Enter();
		reiDriver.WaitFor().makeThreadSleep(20000);
	}

	/**
	 * Rename the file and change it from temp to pdf. Read from pdf file
	 * 
	 * @return
	 */
	public String readPDF(int pageNumber, String fileName) {
		File file = new File(System.getProperty("user.dir") + "\\target");
		File[] directory = reiDriver.file().getCompleteFilesListOnLocalDirectory(file.getAbsolutePath());
		for (File files : directory) {
			if (files.getName().endsWith(".tmp")) {
				new File(files.getAbsolutePath().toString())
						.renameTo(new File(file.getAbsolutePath() + "\\" + fileName + ".pdf"));
				break;
			}
		}
		return reiDriver.file().adobeReader().readFromAdobeFileOnLocalAtUserDirectory(
				file.getAbsolutePath().toString() + "\\" + fileName + ".pdf", pageNumber);
	}

	/**
	 * Rename the file and change it from .xls to .html Read from html file
	 * 
	 * @return
	 */
	public List<String> readXLS(String fileName) {
		reiDriver.WaitFor().makeThreadSleep(10000);
		File file = new File(System.getProperty("user.dir") + "\\target");
		File[] directory = reiDriver.file().getCompleteFilesListOnLocalDirectory(file.getAbsolutePath());
		for (File files : directory) {
			if (files.getName().endsWith(".xls")) {
				new File(files.getAbsolutePath().toString())
						.renameTo(new File(file.getAbsolutePath() + "\\" + fileName + ".html"));
				break;
			}
		}
		return reiDriver.file().readAnyFile(file.getAbsolutePath() + "\\" + fileName + ".html");

	}

	/**
	 * Record column content of table
	 * @param tableId
	 * @paran columnName
	 */
	public void recordWebElement(String columnName, String tableId){
		recordElement= govgrants.flexTable().getSpecificTableColumn(columnName, tableId);
	}

	/******* "Local Methods with Limited functionality " **********/

	/**
	 * match the current url content with provided content
	 * 
	 * @param content
	 * @return true if any part is matched
	 */
	private boolean isCurrentURL(String content) {
		boolean flag = false;
		if (reiDriver.get().getCurretnURL().contains(content)) {
			flag = true;
		}
		return flag;
	}

	/**
	 * get sub tab inside detail each main detail page like overview etc.
	 * 
	 * @param SubTabName
	 */
	public WebElement getSubTabsInsideMainDetailPage(String SubTabName) {
		return reiDriver.findMyElement()
				.getElement(By.xpath("//div[@id='myTabs']/ul/li/a[@name='" + SubTabName + "']"));
	}

	/**
	 * get list of sub tab inside main detail page like overview etc.
	 */
	public List<WebElement> getListSubTabsInsideMainDetailPage() {
		return reiDriver.findMyElement().getElements(By.xpath("//div[@id='myTabs']/ul/li/a"));
	}

	/**
	 * get list of page block inside detail page like overview etc.
	 */
	public List<WebElement> getListPageBlockInsideMainDetailPage() {
		return reiDriver.findMyElement()
				.getElements(By.xpath("//div[@class='tab-pane fade active in']//div[@class='panel-heading']"));
	}

	/**
	 * get BootBox confirmation message box
	 */
	public WebElement getBootBoxConfirmationText() {
		return reiDriver.findMyElement().getElement(By.xpath("//div[@class='bootbox-body']"));
	}
}