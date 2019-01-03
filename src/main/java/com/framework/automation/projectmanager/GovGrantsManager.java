package com.framework.automation.projectmanager;

import java.awt.AWTException;
import java.io.File;
import java.io.IOException;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.testng.Assert;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.CoreHandlers;
import com.automation.rei.handlers.GovGrantsHandler;

/**
 * for Rei Systems
 * 
 * @author Handles generic/common methods and WebElements of the project.
 * 
 */
public class GovGrantsManager extends ProjectWebServices {

	public CoreHandlers reiDriver;
	public Controller controller;
	public GovGrantsHandler govgrants;
	public String standardPassword = "Automation@12345";
	public String defaultComment = "Automation testing";
	public String defaultQaUrl = "https://ggptest5-dev-ed.my.salesforce.com";
	private int urlOpeningNumber = 0;
	private final String completeTableRowString;
	public final By navigationLogo, loginDropDown, searchInput, rightHeaderBars, topRightDropDown, egmsHeader,
			secondTopRightFilter, completeTableHeader, completeTableRow, sideBarHeadersList, advanceFilterButton,
			menuIcon, selectRecordCheckBox, totalRowsCalc, totalRowCount, flexTablelastRowNameAsTotal,
			editIconForProgramFlexTable, pendingTasksTableRef, dangerAlert, confirmationBoxMessage, selectDropdown,
			specificUserInsideDropdown, quickSearchButton, doubleArrowDropDown, navProfile_CurrentApp, saveButton,
			allPhases, chartsContainer, containerFluid_PageWrapperList, reachOutToEnhancedGridCollapse;

	/**
	 * Super Constructor
	 * 
	 * @param controller
	 * @param reiDriver
	 */
	public GovGrantsManager(Controller controller, CoreHandlers reiDriver, GovGrantsHandler govgrants) {
		this.controller = controller;
		this.reiDriver = reiDriver;
		this.govgrants = govgrants;
		navigationLogo = By.cssSelector("div#holdon-overlay>div>div>div>img.nav-logo");
		searchInput = By.cssSelector("div>div.quick-search>div>input");
		rightHeaderBars = By.xpath("//div[@class='panel-heading']//div[contains(@class,'header-bars')]");
		doubleArrowDropDown = By
				.cssSelector("div[class*='panel-title'] div#dropdownListView span[class*='fa fa-angle-double-down']");
		loginDropDown = By.xpath("//div/ul/li[@class='dropdown userDropdown']");
		topRightDropDown = By.cssSelector("div>ul>li.dropdown.appDropdown>a");
		egmsHeader = By.xpath("//div[@class='navbar-header']/span[text()='Enterprise Grants Management System']");
		secondTopRightFilter = By.xpath("//div[contains(@class,'panel-body')]//div/button");
		completeTableHeader = By.xpath(
				"//div[@class='panel-heading']/following-sibling::div[contains(@class,'panel-body')]//div/table/thead/tr");
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
		totalRowCount = By.xpath("//span[@ng-bind='totalRecords']");
		flexTablelastRowNameAsTotal = By.xpath("//td/b/span[contains(@ng-bind-html,'TotalRowLabel')]");
		editIconForProgramFlexTable = By.xpath("//a[contains(@title,'Edit')]");
		pendingTasksTableRef = By
				.xpath("//div[@class='table-responsive']/table/thead/tr/th/a/span/span[contains(text(),'Ref. ID')]");
		dangerAlert = By.cssSelector("div.alert-danger");
		confirmationBoxMessage = By.xpath("//div[@class='modal-dialog']//div[contains(@class, 'bootbox-body')]");
		selectDropdown = By.xpath(
				"//div/span/input[@name='myRadio' and @value='Approve']/../../following-sibling::div//span[@class='select2-chosen']");
		specificUserInsideDropdown = By.xpath("//div[@id='select2-drop']//ul//li/div[@class='select2-result-label']");
		quickSearchButton = By.cssSelector("div.input-group-btn>a>i.fa.fa-search");
		completeTableRowString = "//div[@class='panel-heading']/following-sibling::div[contains(@class,'panel-body')]//div/table/tbody/tr";
		navProfile_CurrentApp = By.cssSelector("div#myNavbarProfile>ul>li>a>span");
		saveButton = By.xpath("//input[ @value='Save' and @type='submit']");
		allPhases = By.xpath("//div/ul[@class='nav navbar-nav']/li/a");
		chartsContainer = By.cssSelector("div#charts span[id*='chartPageId'] div[class*='chartcontainer']");
		containerFluid_PageWrapperList = By.cssSelector("div#page-content-wrapper>div.container-fluid>div>div>div");
		reachOutToEnhancedGridCollapse = By.xpath(
				"//div[@class='panel-heading']//div[contains(@class,'panel-title')]//*[text()='Budget Category ']");

	}

	/******* "Key Methods with complete functionality - Public" *****************/

	/**
	 * navigate to a url
	 * 
	 * @param env Name
	 * @throws IOException
	 */
	public void navigateToURL(String envName) throws IOException {
		urlOpeningNumber++;
		if (urlOpeningNumber > 0) {
			System.out.println("entered navigation");
			System.err.println("current url" + reiDriver.get().getCurretnURL());
			clearCookies();
			reiDriver.get().getRefresh();
		}
		reiDriver.get().openURL(new UsersAndURL().navigateToAnyUrl(envName.toUpperCase()));
	}

	/**
	 * click on navigation bar item inside app. e.g; planning,announcements etc
	 * 
	 * @param menuItem
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
			if (reiDriver.is().elementDispalyed(navigationLogo)) {
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
		return govgrants.sideBar().getSideBarSubHeaderContent(sideBarCategory, accordianSubHeaderDetail);
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
		govgrants.pageDetails().clickAnyTopRightButtonWithoutSwitching(buttonName);
		reiDriver.switchTo().acceptAlert();
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
	 * @param advancefilter .........................need to check
	 * @return
	 */
	public WebElement getAdvanceFilterItem() {
		return reiDriver.findMyElement().getElement(advanceFilterButton);
	}

	/**
	 * @param menuicon
	 * @return
	 */
	public WebElement getMenuIcon() {
		return reiDriver.findMyElement().getElement(menuIcon);
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
	 * click flex table item based on program name/subject , status and iconName
	 * 
	 * @param programSubject
	 * @param statusName
	 * @param iconName
	 */
	public void clickTableActionIconsForSpecificSubject(String iconName, String statusName, String programSubject) {
		govgrants.mainPage().waitForNavigationLogoToDisappear();
		govgrants.flexTable().clickTableActionIcons(iconName, programSubject, statusName);
	}

	/**
	 * click flex table item based on program name/subject , status and iconName
	 * without processing any operation on modal/confirmation box
	 * 
	 * @param programSubject
	 * @param statusName
	 * @param iconName
	 */
	public void clickTableActionIconsForSpecificSubjectWithoutProcessing(String iconName, String statusName,
			String programSubject) {
		govgrants.mainPage().waitForNavigationLogoToDisappear();
		reiDriver.findMyElement()
				.getElement(govgrants.flexTable().getTableActionIcon(iconName, programSubject, statusName)).click();
	}

	/**
	 * click on right header bars
	 */
	public void clickRightHeaderBars(String title) {
		try {
			reiDriver.JavaScript().scrollElementToPageDetailCenter(reachOutToEnhancedGridCollapse);
		} catch (Exception e) {
		}
		govgrants.phasePannel().clickParallelMenuBars(title);
	}

	/**
	 * perform complete quick search in flex
	 * 
	 * @return
	 */
	public void performQuickSearch(String searchTerm) {
		govgrants.quickSearch().performQuickSearch(searchTerm);
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
		reiDriver.WaitFor().makeThreadSleep(10000);
		reiDriver.RobotActions().ctrl_Save();
		reiDriver.WaitFor().makeThreadSleep(1000);
		reiDriver.RobotActions().Robot_Enter();
		reiDriver.WaitFor().makeThreadSleep(10000);
	}

	/**
	 * Rename the file and change it from temp to pdf. Read from pdf file
	 * 
	 * @return
	 */
	public String readPDF(int pageNumber, String fileName) {
		File directory = reiDriver.get()
				.getCompleteFilesListOnLocalDirectory(System.getProperty("user.dir") + "\\target");
		for (File file : directory.listFiles()) {
			if (file.getName().endsWith(".tmp")) {
				new File(file.getAbsolutePath().toString())
						.renameTo(new File(directory.getAbsolutePath().toString() + "\\" + fileName + ".pdf"));
				break;
			}
		}
		return reiDriver.adobeReader().readFromAdobeFileOnLocalAtUserDirectory(
				directory.getAbsolutePath().toString() + "\\" + fileName + ".pdf", pageNumber);
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
	 * @param tabName
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
				.getElements(By.xpath("//div[@class='tab-pane active']//div[@class='panel-heading']"));
	}
}
