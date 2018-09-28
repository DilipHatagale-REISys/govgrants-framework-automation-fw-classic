package com.framework.automation.projectmanager;

import java.awt.AWTException;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Collections;
import java.util.List;
import java.util.Set;

import org.openqa.selenium.By;
import org.openqa.selenium.Cookie;
import org.openqa.selenium.WebElement;
import org.testng.Assert;
import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.cucumber.listener.Reporter;
import com.itextpdf.text.pdf.PdfReader;
import com.itextpdf.text.pdf.parser.PdfTextExtractor;


/**
 * for Rei Systems
 * 
 * @author Handles generic/common methods and WebElements of the project.
 * 
 */
public class GovGrantsManager extends ProjectWebServices {
    public Handlers reiDriver;
    public Controller controller;
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
            allPhases, chartsContainer, containerFluid_PageWrapperList;

    /**
     * Super Constructor
     * 
     * @param controller
     * @param reiDriver
     */
    public GovGrantsManager(Controller controller, Handlers reiDriver) {
        this.controller = controller;
        this.reiDriver = reiDriver;
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
                "//div/span/input[@name='myRadio' and @value='Approve']//ancestor::span//div[@id='s2id_autogen13']");
        specificUserInsideDropdown = By.xpath("//div[@id='select2-drop']//ul//li/div[@class='select2-result-label']");
        quickSearchButton = By.cssSelector("div.input-group-btn>a>i.fa.fa-search");
        completeTableRowString = "//div[@class='panel-heading']/following-sibling::div[contains(@class,'panel-body')]//div/table/tbody/tr";
        navProfile_CurrentApp = By.cssSelector("div#myNavbarProfile>ul>li>a>span");
        saveButton = By.xpath("//input[ @value='Save' and @type='submit']");
        allPhases = By.xpath("//div/ul[@class='nav navbar-nav']/li/a");
        chartsContainer = By.cssSelector("div#charts span[id*='chartPageId'] div[class*='chartcontainer']");
        containerFluid_PageWrapperList = By.cssSelector("div#page-content-wrapper>div.container-fluid>div>div>div");
    }

    /******* "Key Methods with complete functionality - Public" *****************/

    /**
     * navigate to a url
     * 
     * @param env
     *            Name
     * @throws IOException
     */
    public void navigateToURL(String envName) throws IOException {
        urlOpeningNumber++;
        if (urlOpeningNumber > 0) {
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
        try {
            reiDriver.WaitFor().WaitForElementToBePresent(
                    By.xpath("//div/ul[@class='nav navbar-nav']/li/a[@title='" + tabName + "']")).click();
        } catch (Exception e) {
            reiDriver.JavaScript()
                    .clickByJS(By.xpath("//div/ul[@class='nav navbar-nav']/li/a[@title='" + tabName + "']"));
        }
    }

    /**
     * click on navigation bar item on main admin homepage.
     * 
     * @param tabName
     */
    public void clickAdminNavBar(String tabName, String appName) {
        reiDriver.WaitFor().makeThreadSleep(500);
        try {
            reiDriver.WaitFor().WaitForElementToBePresent(By.xpath("//nav/ul/li/a[@title='" + tabName + "']")).click();
        } catch (Exception e) {
            reiDriver.JavaScript().clickByJS(By.xpath("//nav/ul/li/a[@title='" + tabName + "']"));
        }
        waitForEgmsHeader();
        setUpCustomAppDropDown(appName);
    }

    /**
     * wait for the EGMS header in Gov Grants
     */
    public void waitForEgmsHeader() {
        try {
            reiDriver.WaitFor().WaitForElementToBePresent(egmsHeader);
        } catch (Exception e) {

        }
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
        reiDriver.WaitFor()
                .WaitForElementClickAble(By.xpath("//div[@class='modal-footer']/button[text()='" + buttonName + "']"))
                .click();
        waitForNavigationLogo();
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
        return reiDriver.findMyElement().getElements(By.xpath(
                "//div[@id='sidebar-wrapper']//div/ul/li//span[text()='" + headerName + "']/../../ul/li/a/span"));

    }

    /**
     * 
     * @return: List of all Accordian content.
     */
    public List<WebElement> accordianContentList(String headerName) {
        return reiDriver.findMyElement().getElements(By.xpath(
                "//div[@id='sidebar-wrapper']//div/ul/li//span[text()='" + headerName + "']/../../ul/li/ul//a/span"));

    }

    /**
     * Access category in left side pane. Also can collapse and Expand side bar item
     * 
     * @param sideBarCategory
     * @return
     */
    public WebElement getSideBarHeader(String sideBarCategory) {
        return reiDriver.WaitFor().WaitForElementToBePresent(
                By.xpath("//div[@id='sidebar-wrapper']//div/ul/li//span[text()='" + sideBarCategory + "']"));
    }

    /**
     * access on side bar sub header
     * 
     * @param sideBarCategory
     * @param accordianSubHeader
     * @return
     */
    public WebElement getSideBarAccordianHeader(String sideBarCategory, String accordianSubHeader) {
        return reiDriver.WaitFor()
                .WaitForElementToBePresent(By.xpath("//div[@id='sidebar-wrapper']//div/ul/li//span[text()='"
                        + sideBarCategory + "']/../../ul/li//span[text()='" + accordianSubHeader + "']"));
    }

    /**
     * access side bar sub header detail
     * 
     * @param sideBarCategory
     * @param accordianSubHeaderDetail
     * @return
     */
    public WebElement getSideBarAccordianSubHeaderContent(String sideBarCategory, String accordianSubHeaderDetail) {
        return reiDriver.WaitFor()
                .WaitForElementToBePresent(By.xpath("//div[@id='sidebar-wrapper']//div/ul/li//span[text()='"
                        + sideBarCategory + "']/../../ul//span[text()='" + accordianSubHeaderDetail + "']"));
    }

    /**
     * click on logout menu.
     */
    public void clickLoginDropDown() {
        reiDriver.WaitFor().WaitForElementToBePresent(loginDropDown).click();
    }

    /**
     * click on top right drop down. As a grantee etc.
     */
    public void clickTopRightDropDown() {
        try {
            reiDriver.WaitFor().WaitForElementToBePresent(topRightDropDown).click();
        } catch (Exception e) {
            reiDriver.WaitFor().WaitForWebElementToBeVisible(reiDriver.findMyElement().getElement(topRightDropDown))
                    .click();
        }
    }

    /**
     * get the top right drop down items. grntee etc
     * 
     * @param dropDownItem
     * @return
     */
    public WebElement getTopRightDropDown(String dropDownItem) {
        return reiDriver.WaitFor().WaitForElementToBePresent(
                By.xpath("//div/ul/li[@class='dropdown appDropdown open']/ul/li/a[@title='" + dropDownItem + "']"));
    }

    /**
     * access items in logout menu items
     * 
     * @param loginMenuItem
     * @return
     */
    public WebElement getLoginDropDown(String loginMenuItem) {
        return reiDriver.WaitFor().WaitForElementToBePresent(
                By.xpath("//div/ul/li[@class='dropdown userDropdown']/ul/li/a[@title='" + loginMenuItem + "']"));
    }

    /**
     * genric method to click on the double arrow dropdown
     */
    public void clickLeftPanelHeader() {
        try {
            reiDriver.WaitFor().makeThreadSleep(2000);
            reiDriver.WaitFor().WaitForWebElementToBeVisible(reiDriver.findMyElement().getElement(doubleArrowDropDown))
                    .click();
        } catch (Exception e) {
            reiDriver.WaitFor().makeThreadSleep(3000);
            reiDriver.JavaScript().clickByJS(doubleArrowDropDown);
        }
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
                By.xpath("//div[@class='panel-heading']//div[contains(@class,'panel-title')]/a[text()='"
                        + pannelTitleName + "']"));
    }

    /**
     * select item from double arrow dropdown
     * 
     * @param leftPanelItem
     * @return
     */
    public WebElement getLeftPanelHeader(String dropdownoption) {
        return reiDriver.WaitFor().FluentWaitForClick(By.xpath(
                "//div[@class='panel-heading']//div[contains(@class,'panel-title')]//div[@id='dropdownListView']/ul/li/a[@title='"
                        + dropdownoption + "']"));
    }

    /**
     * get any button on right header inside planning etc.
     * 
     * @param buttonName
     * @return
     */
    public WebElement getRightHeaderButton(String buttonName) {
        return reiDriver.WaitFor().WaitForElementToBePresent(
                By.xpath("//div[contains(@class,'panel-heading')]//button[@title='" + buttonName + "']"));
    }

    
    /**
    * get any item from top right bar inside phases 
    * 
    * @param headerItem
    * @return
    */
   public WebElement getItemFromTopRightHeaderBars(String headerItem) {
       return reiDriver.WaitFor().WaitForElementToBePresent(
                   By.xpath("//*[@title='Menu']/following-sibling::ul//li//span[text()='"+headerItem+"']"));
       /*
        * reiDriver.WaitFor().WaitForElementToBePresent( By.xpath(
        * "//div[@class='panel-heading']//div[contains(@class,'header-bars')]//span/ul/li//a[@title='"
        * + headerItem + "']"));
        */
   }

   /**
    * get any item from top right bar inside phases 
    * @param headerItem
    * @return
    */
    public WebElement getItemFromTopRightHeaderBarsWithoutWaitTime(String headerItem) {
        return reiDriver.findMyElement().getElement(
                By.xpath("//*[@title='Menu']/following-sibling::ul//li//span[text()='"+headerItem+"']"));
    }

    /**
     * click any button on right header inside detail page
     * 
     * @param buttonName
     * @return
     */
    public void clickRightHeaderButtonInsideDetailPage(String buttonName) {
        try {
            reiDriver.WaitFor().WaitForElementToBePresent(
                    By.xpath("//div[@id='headerButtonsPanel']//*[@title='" + buttonName + "']")).click();
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (buttonName.equalsIgnoreCase("Submit For Approval")) {
            try {
                reiDriver.WaitFor().WaitForAlert();
                reiDriver.switchTo().acceptAlert();
            } catch (Exception e) {
            }
        }
    }

    /**
     * generic search input box
     * 
     * @return
     */
    public WebElement getSearchInput() {
        return reiDriver.WaitFor().WaitForElementToBePresent(searchInput);
    }

    /**
     * get filter icon
     * 
     * @return
     */
    public WebElement getSecondTopRightFiler() {
        return reiDriver.WaitFor().WaitForElementToBePresent(secondTopRightFilter);
    }

    /**
     * fetch the complete header of table
     * 
     * @return
     */
    public List<WebElement> getCompleteTableHeader() {
        reiDriver.WaitFor().WaitForElementToBePresent(completeTableHeader);
        return reiDriver.findMyElement().getElements(completeTableHeader);
    }

    /**
     * get any element from title table bar except Action
     * 
     * @param titleName
     * @return
     */
    public WebElement getSpecificElementFromTableHeader(String titleName) {
        return reiDriver.WaitFor().WaitForElementToBePresent(By.xpath(
                "//div[@class='panel-heading']/following-sibling::div[contains(@class,'panel-body')]//div/table/thead/tr/th//span[@title='"
                        + titleName + "' or text()='" + titleName + "']"));
    }

    /**
     * get complete rows
     * 
     * @return
     */
    public List<WebElement> getCompleteTableRow() {
        reiDriver.WaitFor().WaitForElementToBePresent(completeTableRow);
        return reiDriver.findMyElement().getElements(completeTableRow);
    }

    /**
     * click on main Accordian header
     * 
     * @param headerName
     */
    public void clickAccordianHeader(String headerName) {
        getSideBarHeader(headerName).click();
    }

    /**
     * click on sub accordian header
     * 
     * @param AccordianHeader
     * @param subHeaderName
     */
    public void clickAccordianSubHeader(String AccordianHeader, String subHeaderName) {
        getSideBarAccordianHeader(AccordianHeader, subHeaderName).click();
    }

    /**
     * click on sub header content
     * 
     * @param AccordianHeader
     * @param subHeaderContentName
     */
    public void clickAccordiansubHeaderContent(String AccordianHeader, String subHeaderContentName) {
        getSideBarAccordianSubHeaderContent(AccordianHeader, subHeaderContentName).click();
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
     * @param advancefilter
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
        return By.xpath("//td//span[@title='" + statusName + "']");
    }

    /**
     * Click any icon in the flex table like Edit etc.
     * 
     * @param statusName
     * @param iconName
     */
    public void clickTableIcons(String statusName, String iconName) {
        reiDriver.WaitFor().WaitForElementToBePresent(By.xpath("//td//span[@title='" + statusName
                + "']/../../../following-sibling::td//span//a[@title='" + iconName + "']")).click();
    }

    /**
     * click flex table item based on program name/subject , status and icon name
     * 
     * @param programSubject
     * @param statusName
     * @param iconName
     */
    public void clickTableActionIconsForSpecificSubject(String programSubject, String statusName, String iconName) {
        try {
            reiDriver.WaitFor()
                    .WaitForElementToBePresent(By.xpath(completeTableRowString + "//td//span[@title='" + programSubject
                            + "']/../../../following-sibling::td//span[@title='" + statusName
                            + "']/../../../following-sibling::td//span//a[@title='" + iconName + "']//i"))
                    .click();

        } catch (Exception e) {
            reiDriver.WaitFor().makeThreadSleep(1000);
            reiDriver.JavaScript()
                    .clickByJS(By.xpath(completeTableRowString + "//td//span[@title='" + programSubject
                            + "']/../../../following-sibling::td//span[@title='" + statusName
                            + "']/../../../following-sibling::td//span//a[@title='" + iconName + "']//i"));
        }

    }

    /**
     * click on right header bars
     */
    public void clickRightHeaderBars() {
        reiDriver.WaitFor().WaitForElementToBePresent(rightHeaderBars).click();
    }

    /**
     * get exact start button for pending tasks assigned to me
     */
    public List<WebElement> getStartButtonInPendingTasks(String programSubject, String titleInLocator) {
        int whileHandler = 0;
        By startButton = By.xpath("//div/table/tbody/tr/td/span/span/span[text()='" + programSubject
                + "']//following::td/div/span/span/span/span/a[@title='" + titleInLocator + "']");
        List<WebElement> approvalStartButtonTable = reiDriver.findMyElement().getElements(startButton);
        int approvalStartButtonTableSize = approvalStartButtonTable.size();
        while (approvalStartButtonTableSize == 0) {
            whileHandler++;
            if (whileHandler == 10) {
                break;
            }
            reiDriver.get().getRefresh();
            reiDriver.WaitFor().WaitForElementToBePresent(pendingTasksTableRef);
            approvalStartButtonTable = reiDriver.findMyElement().getElements(startButton);
            approvalStartButtonTableSize = approvalStartButtonTable.size();
        }
        return approvalStartButtonTable;
    }

    /**
     * perform complete quick search in flex
     * 
     * @return
     */
    public void performQuickSearch(String searchTerm) {
        try {
            reiDriver.JavaScript().scrollpageToSpecificElement(searchInput);
            reiDriver.WaitFor().WaitForElementToBePresent(searchInput);
            reiDriver.textInput().enterText(searchInput, searchTerm);
            reiDriver.WaitFor().WaitForElementToBePresent(quickSearchButton).click();
        } catch (Exception e) {
            reiDriver.WaitFor().WaitForElementToBePresent(searchInput);
            reiDriver.JavaScript().InputJS(searchInput, searchTerm);
            reiDriver.JavaScript().clickByJS(quickSearchButton);
        }

    }

    /**
     * click on sub tab inside table icons. click view and then on new page click on
     * the tab like overview etc.
     * 
     * @param tabName
     */
    public void clickSubTabsInsideTableView(String tabName) {
        reiDriver.WaitFor().WaitForElementToBePresent(By.xpath("//div[@id='myTabs']/ul/li/a[@name='" + tabName + "']"))
                .click();
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
        clickLeftPanelHeader();
        getLeftPanelHeader(dropDownOption).click();
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
    public void clickRowLevelActionIconsInsideSubTab(String programRole, String iconName) {
        reiDriver.WaitFor().WaitForElementToBePresent(By.xpath("//td//span[@title='" + programRole
                + "']/../../../following-sibling::td//span//a[@title='" + iconName + "']")).click();
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
        reiDriver.WaitFor()
                .WaitForElementToBePresent(By.xpath(
                        "//div[@class='chartTitle']/a[@title='" + chartName + "']/../..//a[@data-toggle='dropdown']"))
                .click();
    }

    /**
     * select specific value from specific chart
     * 
     * @param chartName
     * @param valueToSelect
     */
    public void selectAnyItemFromChartsMenu(String chartName, String valueToSelect) {
        reiDriver.WaitFor()
                .WaitForWebElementToBeVisible(
                        reiDriver.WaitFor().WaitForElementToBePresent(By.xpath("//div[@class='chartTitle']/a[@title='"
                                + chartName + "']/../..//li//a[@title='" + valueToSelect + "']")))
                .click();
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
     * @throws AWTException
     */
    public void saveFile() throws AWTException {
       reiDriver.switchTo().switchToWindowHandler(1);  
       reiDriver.WaitFor().makeThreadSleep(10000);
       reiDriver.RobotActions().ctrl_Save();
       reiDriver.WaitFor().makeThreadSleep(1000);
       reiDriver.RobotActions().Robot_Enter();
       reiDriver.WaitFor().makeThreadSleep(5000);
            }
    
    /**
     * Rename the file and change it from temp to pdf. Read from pdf file
     * @return
     */
    public String readPDF() {
        File directory=reiDriver.get().getCompleteFilesListOnLocalDirectory(System.getProperty("user.dir")+"\\target");
        for (File file : directory.listFiles()) {
            if (file.getName().endsWith(".tmp")) {
                new File(file.getAbsolutePath().toString()).renameTo(new File(directory.getAbsolutePath().toString()+"\\govgrants.pdf"));
                break;
            } 
        }       
        return reiDriver.adobeReader().readFromAdobeFileOnLocalAtUserDirectory(directory.getAbsolutePath().toString()+"\\govgrants.pdf", 4);
    }

    /******* "Local Methods with Limited functionality " **********/

    /**
     * handles custom app. selects if current app on page is not desired one
     * 
     * @param appName
     */
    private void setUpCustomAppDropDown(String appName) {
        reiDriver.WaitFor().makeThreadSleep(200);
        if (!isAppDisplayed(appName)) {
            reiDriver.WaitFor().makeThreadSleep(200);
            clickTopRightDropDown();
            reiDriver.WaitFor().makeThreadSleep(500);
            getTopRightDropDown(appName).click();
        }
    }

    private boolean isAppDisplayed(String appName) {
        boolean isAppPresent;
        try {
            isAppPresent = reiDriver.WaitFor()
                    .WaitForWebElementToBeVisible(reiDriver.findMyElement().getElement(navProfile_CurrentApp)).getText()
                    .equalsIgnoreCase(appName);
        } catch (Exception e) {
            reiDriver.get().getRefresh();
            isAppPresent = reiDriver.WaitFor()
                    .WaitForWebElementToBeVisible(reiDriver.findMyElement().getElement(navProfile_CurrentApp)).getText()
                    .equalsIgnoreCase(appName);
        }
        return isAppPresent;
    }

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
}