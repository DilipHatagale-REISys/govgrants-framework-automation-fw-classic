package com.framework.automation.projectmanager;

import eyethink.automation.bots.Register.EyeThink;
import eyethink.automation.bots.objects.Elements;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.awt.*;
import java.io.File;
import java.util.List;

/**
 * for Rei Systems
 *
 * @author Handles generic/common methods and WebElements of the project.
 */
public class GovGrantsManager extends ProjectWebServices {
    public String standardPassword = "Automation@12345";
    public String defaultComment = "Automation testing";
    public static WebElement recordElement;
    public final By navigationLogo, searchInput, rightHeaderBars, egmsHeader, completeTableRow, sideBarHeadersList,
            advanceFilterButton, menuIcon, selectRecordCheckBox, totalRowsCalc, flexTablelastRowNameAsTotal,
            pendingTasksTableRef, dangerAlert, confirmationBoxMessage, selectDropdown, allPhases, chartsContainer,
            containerFluid_PageWrapperList, reachOutToTmpActiveGrantsGrid;

    public GovGrantsManager() {
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
        confirmationBoxMessage = By.xpath("//div[contains(@class,'modal-dialog')]//div[contains(@class, 'bootbox-body')]");
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
        EyeThink.saas().mainPage().clickMainMenuBar(tabName);
    }

    /**
     * click on navigation bar item on main admin homepage.
     *
     * @param tabName
     */
    public void clickAdminNavBar(String tabName, String appName) {
        EyeThink.core().WaitFor().makeThreadSleep(500);
        EyeThink.saas().mainPage().clickAdminNavBar(tabName);
        EyeThink.saas().mainPage().waitForEgmsHeader();
        EyeThink.saas().mainPage().setUpCustomAppDropDown(appName);
    }

    /**
     * @return: List of all side bar headers.
     */
    public List<Elements> getSideBarHeadersList() {
        return EyeThink.core().elementReference().listOfElements().onWeb(sideBarHeadersList);
    }

    /**
     * @return: List of all Accordian headers.
     */
    public List<Elements> accordianHeadersList(String headerName) {
        return EyeThink.saas().sideBar().getSideBarSubHeaders(headerName);
    }

    /**
     * access on side bar sub header
     *
     * @param sideBarCategory
     * @param accordianSubHeader
     * @return
     */
    public WebElement getSideBarAccordianHeader(String sideBarCategory, String accordianSubHeader) {
        return EyeThink.saas().sideBar().getSideBarSubHeader(sideBarCategory, accordianSubHeader);
    }

    /**
     * access side bar sub header detail
     *
     * @param sideBarCategory
     * @param accordianSubHeaderDetail
     * @return
     */
    public WebElement getSideBarAccordianSubHeaderContent(String sideBarCategory, String accordianSubHeaderDetail) {
        return EyeThink.saas().sideBar().getSideBarContent(sideBarCategory, accordianSubHeaderDetail);
    }

    /**
     * click on flex table icons. Inside click on any tab with flex table.Reach out
     * to any panel header
     *
     * @param pannelTitleName
     * @return
     */
    public WebElement getFlexGridPanels(String pannelTitleName) {
        return EyeThink.core().elementReference().onWeb(By.xpath("//div[@class='panel-heading']//div[contains(@class,'panel-title')]//*[text()='"
                + pannelTitleName + "']"));
    }

    /**
     * get any button on right header inside planning etc.
     *
     * @param buttonName
     */
    public void getRightHeaderButton(String buttonName) {
        EyeThink.core().click().onWeb(EyeThink.saas().pageDetails().getAnyTopRightButton(buttonName));
        try {
            if (EyeThink.core().is().onWeb().IsElementPresentQuick(By.xpath("//div[contains(@class, 'modal') and contains(@class, 'bootbox')]//div[contains(@class, 'modal-content')]"))) {
                WebElement popup = EyeThink.core().elementReference().onWeb(By.xpath("//div[contains(@class, 'modal') and contains(@class, 'bootbox')]//div[contains(@class, 'modal-content')]"));
                EyeThink.core().click().onWeb(EyeThink.core().elementReference().onWebNested(popup, By.xpath("//div[contains(@class, 'modal-content')]//button[text()='Yes' or text()='Continue' or text()='Ok']")));
            }
        } catch (Exception var3) {
        }
    }

    /**
     * get any item from top right bar inside phases
     *
     * @param headerItem
     * @return
     */
    public WebElement getItemFromTopRightHeaderBars(String headerItem) {
        return EyeThink.saas().pageDetails().getMenuItemFromParallelLinesDropDown(headerItem);
    }

    /**
     * get any element from title table bar except Action
     *
     * @param titleName
     * @return
     */
    public WebElement getSpecificElementFromTableHeader(String titleName) {
        return EyeThink.saas().flexTable().getSpecificElementFromTableHeader(titleName);
    }

    /**
     * get complete rows
     *
     * @return
     */
    public List<Elements> getCompleteTableRow() {
        EyeThink.core().elementReference().onWeb(completeTableRow);
        return EyeThink.saas().flexTable().getCompleteTableRow();
    }

    /**
     * click on sub accordian header
     *
     * @param AccordianHeader
     * @param subHeaderName
     */
    public void clickAccordianSubHeader(String AccordianHeader, String subHeaderName) {
        EyeThink.core().click().onWeb(EyeThink.saas().sideBar().getSideBarSubHeader(AccordianHeader, subHeaderName));
        EyeThink.core().click().onWeb(getSideBarAccordianHeader(AccordianHeader, subHeaderName));
    }

    /**
     * Assert for page title
     *
     * @param pageTitle
     */
    public void assertPageTitle(String pageTitle) {
        Assert.assertEquals(EyeThink.core().get().pageTitle(), pageTitle);
    }

    /**
     * return locator for status column
     *
     * @param statusName
     * @return
     */
    public By flexTableStatusColumn(String statusName) {
        return EyeThink.saas().flexTable().getFlexTableColumn(statusName);
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
        EyeThink.saas().phasePanel().clickDoubleArrowDropDownAndSelectItem(dropDownOption);
    }

    /**
     * click row level action item based on program role ,icon name
     *
     * @param programRole
     * @param iconName
     */
    public void clickRowLevelActionIconsInsideSubTab(String iconName, String programRole) {
        EyeThink.saas().flexTable().clickTableActionIcons(iconName, programRole);
    }

    /**
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
        EyeThink.saas().charts().clickChartMenuIcon(chartName);
    }

    /**
     * select specific value from specific chart
     *
     * @param chartName
     * @param valueToSelect
     */
    public void selectAnyItemFromChartsMenu(String chartName, String valueToSelect) {
        EyeThink.saas().charts().selectAnyItemFromChartsMenu(chartName, valueToSelect);
    }

    /**
     * click on specific link of Task Summary  chart
     *
     * @param linkName
     * @param chartName
     */
    public void clickSpecificLinkOnTaskSummary(String linkName, String chartName) {
        EyeThink.saas().charts().clickOnExpectedLinkInsideTaskSummary(linkName, chartName);
    }

    /**
     * check title of any modal
     *
     * @param titleName
     * @return
     */
    public boolean isTitleOfModal(String titleName) {
        return EyeThink.core().is().onWeb().isDisplayed(By.xpath("//*[@class='modal-title ng-binding'][text()='" + titleName + "']"));
    }

    /**
     * Rename the file and change it from .xls to .html Read from html file
     *
     * @return
     */
    public List<String> readXLSAndCSV(String fileName) {
        String extensionType = "";
        EyeThink.core().WaitFor().makeThreadSleep(10000);
        File file = new File(System.getProperty("user.dir") + "\\target");
        File[] directory = EyeThink.core().file().getCompleteFilesListOnLocalDirectory(file.getAbsolutePath());
        for (File files : directory) {
            if (files.getName().endsWith(".xls")) {
                new File(files.getAbsolutePath().toString())
                        .renameTo(new File(file.getAbsolutePath() + "\\" + fileName.toString() + ".xls"));
                extensionType = ".xls";
                break;
            } else if (files.getName().endsWith(".csv")) {
                new File(files.getAbsolutePath().toString())
                        .renameTo(new File(file.getAbsolutePath() + "\\" + fileName + ".csv"));
                extensionType = ".csv";
                break;
            }
        }
        return EyeThink.core().file().readAnyFile(file.getAbsolutePath() + "\\" + fileName + extensionType);

    }

    /**
     * Record column content of table
     *
     * @param tableId
     * @paran columnName
     */
    public void recordWebElement(String columnName, String tableId) {
        recordElement = EyeThink.saas().flexTable().getSpecificTableColumn(columnName, tableId);
    }

    /**
     * perform click on page navigation arrow
     *
     * @param flexTableId
     * @param NextPrevious
     */
    public void performClickOnPaginationArrow(String flexTableId, String NextPrevious) {
        EyeThink.saas().flexTable().flexTablePagination(flexTableId, NextPrevious);
    }

    /**
     * perform click table header column with table id and title name
     *
     * @param tableId
     * @param titleName
     */
    public void performClickOnSpecificTableColumnHeader(String tableId, String titleName) {
        EyeThink.core().click().onWeb(EyeThink.saas().flexTable().getSpecificElementFromTableHeader(tableId, titleName));
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
        if (EyeThink.core().get().curretnURL().contains(content)) {
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
        EyeThink.core().elementReference().onWeb(By.xpath("//div[@id='myTabs']/ul/li/a[@name='" + SubTabName + "']"));
        return EyeThink.core().elementReference().onWeb(By.xpath("//div[@id='myTabs']/ul/li/a[@name='" + SubTabName + "']"));
    }

    /**
     * get list of sub tab inside main detail page like overview etc.
     */
    public List<Elements> getListSubTabsInsideMainDetailPage() {
        EyeThink.core().elementReference().onWeb(By.xpath("//div[@id='myTabs']/ul/li/a"));
        return EyeThink.core().elementReference().listOfElements().onWeb(By.xpath("//div[@id='myTabs']/ul/li/a"));
    }

    /**
     * get list of page block inside detail page like overview etc.
     */
    public List<Elements> getListPageBlockInsideMainDetailPage() {
        EyeThink.core().elementReference().onWeb(By.xpath("//div[@class='tab-pane fade active in']//div[@class='panel-heading']"));
        return EyeThink.core().elementReference().listOfElements().onWeb(By.xpath("//div[@class='tab-pane fade active in']//div[@class='panel-heading']"));
    }

    /**
     * get BootBox confirmation message box
     */
    public WebElement getBootBoxConfirmationText() {
        return EyeThink.core().elementReference().onWeb(By.xpath("//div[@class='bootbox-body']"));
    }
}