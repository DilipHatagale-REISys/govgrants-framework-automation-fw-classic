package com.framework.automation.projectmanager;

import java.io.IOException;
import java.util.List;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.testng.Assert;

import com.automation.rei.controller.Controller;
import com.automation.rei.exception.ReiFrameworkCustomException;
import com.automation.rei.handlers.Handlers;

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
    public final By navigationLogo, loginDropDown, searchInput, rightHeaderBars, leftPanelHeader, topRightDropDown,
            egmsHeader, secondTopRightFilter, completeTableHeader, completeTableRow, sideBarHeadersList,
            advanceFilterButton, menuIcon, selectRecordCheckBox, totalRowsCalc, totalRowCount,
            flexTablelastRowNameAsTotal, editIconForProgramFlexTable, pendingTasks, pendingTasksTableRef, submitButton,
            dangerAlert;

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
        leftPanelHeader = By.xpath("//div[contains(@class,'panel-title')]//div[@id='dropdownListView']");
        loginDropDown = By.xpath("//div/ul/li[@class='dropdown userDropdown']");
        topRightDropDown = By.xpath("//div/ul/li[@class='dropdown appDropdown']");
        egmsHeader = By.xpath("//div[@class='navbar-header']/span[text()='Enterprise Grants Management System']");
        secondTopRightFilter = By.xpath("//div[contains(@class,'panel-body')]//div/button");
        completeTableHeader = By.xpath(
                "//div[@class='panel-heading']/following-sibling::div[contains(@class,'panel-body')]//div/table/thead/tr");
        completeTableRow = By.xpath(
                "//div[@class='panel-heading']/following-sibling::div[contains(@class,'panel-body')]//div/table/tbody/tr");
        sideBarHeadersList = By.xpath(
                "//div[@id='sidebar-wrapper']//div[contains(@class,'panel-sidebar')]//span[contains(@class,'sidebar-label')]");
        selectRecordCheckBox = By.xpath("//input[@aria-label='Select Record']");
        advanceFilterButton = By
                .xpath(".//*[@id='toggleFlexTablePrograms']//button/span[contains(text(),'Advance Filter')]");
        menuIcon = By.xpath(
                "//div[@class='panel-heading']//div[contains(@class,'header-bars')]//a[@title='Menu']//span[contains(@class,'fa fa-bars')]");
        totalRowsCalc = By.xpath("//td/b/span[contains(@ng-bind,'calculateTotalRowValues')]");
        totalRowCount = By.xpath("//span[@ng-bind='totalRecords']");
        flexTablelastRowNameAsTotal = By.xpath("//td/b/span[contains(@ng-bind-html,'TotalRowLabel')]");
        editIconForProgramFlexTable = By.xpath("//a[contains(@title,'Edit')]");
        pendingTasks = By.xpath(" //div/ul/li/a[text()='Pending Tasks']");
        pendingTasksTableRef = By
                .xpath("//div[@class='table-responsive']/table/thead/tr/th/a/span/span[contains(text(),'Ref. ID')]");
        submitButton = By.xpath("//input[@type='button' and @value='Submit']");
        dangerAlert = By.cssSelector("div.alert-danger");
    }

    /******* "Key Methods with complete functionality - Public" *****************/

    /**
     * navigate to a url
     * 
     * @param urlName
     * @throws IOException
     */
    public void navigateToURL(String urlName) throws IOException {
        reiDriver.get().navigateToUrl(new UsersAndURL().navigateToAnyUrl(urlName));
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
    public void clickAdminNavBar(String tabName) {
        try {
            reiDriver.WaitFor().WaitForElementToBePresent(By.xpath("//nav/ul/li/a[@title='" + tabName + "']")).click();
        } catch (Exception e) {
            reiDriver.JavaScript().clickByJS(By.xpath("//nav/ul/li/a[@title='" + tabName + "']"));
        }
    }

    /**
     * generic method to click on pending tasks need to improve method by removing
     * thread sleep and manage using explicit wait
     */
    public void clickPendingTasksLink() {
        reiDriver.findMyElement().getElement(pendingTasks).click();
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
     * @throws ReiFrameworkCustomException
     */
    public void waitForNavigationLogo() throws ReiFrameworkCustomException {
        try {
            if (reiDriver.is().elementDispalyed(navigationLogo)) {
                reiDriver.WaitFor().WaitForElementToDisapear(navigationLogo);
            }
        } catch (Exception e) {
            throw new ReiFrameworkCustomException("Unable to find logo " + e);
        }
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
        return reiDriver.findMyElement()
                .getElements(By.xpath("//div[@id='sidebar-wrapper']//div/p/span[contains(text(),'" + headerName
                        + "')]/../../following-sibling::div//div//b/a"));
    }

    /**
     * 
     * @return: List of all Accordian content.
     */
    public List<WebElement> accordianContentList(String headerName) {
        return reiDriver.findMyElement()
                .getElements(By.xpath("//div[@id='sidebar-wrapper']//div/p/span[contains(text(),'" + headerName
                        + "')]/../../following-sibling::div//div//ul//li/a"));
    }

    /**
     * Access category in left side pane. Also can collapse and Expand side bar item
     * 
     * @param sideBarCategory
     * @return
     */
    public WebElement getSideBarHeader(String sideBarCategory) {
        return reiDriver.WaitFor().WaitForElementToBePresent(
                By.xpath("//div[@id='sidebar-wrapper']//div/p/span[contains(text(),'" + sideBarCategory + "')]"));
    }

    /**
     * access on side bar sub header
     * 
     * @param sideBarCategory
     * @param accordianSubHeader
     * @return
     */
    public WebElement getSideBarAccordianHeader(String sideBarCategory, String accordianSubHeader) {
        return reiDriver.WaitFor().WaitForElementToBePresent(
                By.xpath("//div[@id='sidebar-wrapper']//div/p/span[contains(text(),'" + sideBarCategory
                        + "')]/../../following-sibling::div//div//b[text()='" + accordianSubHeader + "']"));
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
                .WaitForElementToBePresent(By.xpath("//div[@id='sidebar-wrapper']//div/p/span[contains(text(),'"
                        + sideBarCategory + "')]/../../following-sibling::div//div/ul/li/a[text()='"
                        + accordianSubHeaderDetail + "']"));
    }

    /**
     * click on top right drop down. As a grantee etc.
     */
    public void clickTopRightDropDown() {
        reiDriver.WaitFor().WaitForElementToBePresent(topRightDropDown).click();
    }

    /**
     * click on logout menu.
     */
    public void clickLoginDropDown() {
        reiDriver.WaitFor().WaitForElementToBePresent(loginDropDown).click();
    }

    /**
     * get the top right drop down items. grntee etc
     * 
     * @param dropDownItem
     * @return
     */
    public WebElement getTopRightDropDown(String dropDownItem) {
        return reiDriver.WaitFor().WaitForElementToBePresent(
                By.xpath("//div/ul/li[@class='dropdown appDropdown']/ul/li/a[@title='" + dropDownItem + "']"));
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
     * click on left panel header
     */
    public void clickLeftPanelHeader() {
        reiDriver.WaitFor().WaitForElementToBePresent(leftPanelHeader).click();
    }

    /**
     * select item from panel header - left
     * 
     * @param leftPanelItem
     * @return
     */
    public WebElement getLeftPanelHeader(String leftPanelItem) {
        return reiDriver.WaitFor().WaitForElementToBePresent(By.xpath(
                "//div[@class='panel-heading']//div[contains(@class,'panel-title')]//div[@id='dropdownListView']/ul/li/a[@title='"
                        + leftPanelItem + "']"));
    }

    

    /**
     * get any button on right header
     * 
     * @param buttonName
     * @return
     */
    public WebElement getRightHeaderButton(String buttonName) {
        return reiDriver.WaitFor().WaitForElementToBePresent(
                By.xpath("//div[@class='panel-heading']//div[contains(@class,'header-buttons')]//button[@title='"
                        + buttonName + "']"));
    }

    /**
     * get any item from top right bar inside phases
     * 
     * @param headerItem
     * @return
     */
    public WebElement getItemFromTopRightHeaderBars(String headerItem) {
        return reiDriver.WaitFor().WaitForElementToBePresent(
                By.xpath("//div[@class='panel-heading']//div[contains(@class,'header-bars')]//span/ul/li//a[@title='"
                        + headerItem + "']"));
    }

    /**
     * get any item from top right bar inside phases without waiting for presence.
     * 
     * @param headerItem
     * @return
     */
    public WebElement getItemFromTopRightHeaderBarsWithoutWaitTime(String headerItem) {
        return reiDriver.findMyElement().getElement(
                By.xpath("//div[@class='panel-heading']//div[contains(@class,'header-bars')]//span/ul/li//a[@title='"
                        + headerItem + "']"));
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
     * access side bar header detail
     * 
     * @param sideBarCategory
     * @param accordianSubHeaderDetail
     * @return
     */
    public WebElement getSideBarAccordionHeaderContent(String sideBarCategory, String accordianHeaderDetail) {
        return reiDriver.WaitFor().WaitForElementToBePresent(
                By.xpath("//div[@id='sidebar-wrapper']//div/p/span[contains(text(),'" + sideBarCategory
                        + "')]/../../following-sibling::div/div//b[text()='" + accordianHeaderDetail + "']"));
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
     * Click any icon in the flex table
     * 
     * @param statusName
     * @param iconName
     */
    public void clickTableIcons(String statusName, String iconName) {
        for (WebElement element : getCompleteTableRow()) {
            element.findElement(By.xpath("//td//span[@title='" + statusName
                    + "']/../../../following-sibling::td//span//a[@title='" + iconName + "']")).click();
            break;
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
    public List<WebElement> getStartButtonInPendingTasks(String programSubject, String programType,
            String titleInLocator) {
        int whileHandler = 0;
        By startButton = By.xpath("//div/table/tbody/tr/td/span/span/span[text()='" + programType
                + "']/following::span/span/span[text()='" + programSubject
                + "']/following::td/div/span/span/span/span/a[@title='" + titleInLocator + "']");
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
     * click Submit
     */
    public void clickSubmitButton() {
        reiDriver.WaitFor().WaitForElementToBePresent(submitButton).click();
    }
    
    
    /******* "Local Methods with Limited functionality - Private" **********/

}
