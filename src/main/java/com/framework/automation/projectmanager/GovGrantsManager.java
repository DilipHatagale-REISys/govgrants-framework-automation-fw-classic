package com.framework.automation.projectmanager;

import com.helperPackage.handlers.govgrants;
import com.helperPackage.objects.Elements;
import com.helperPackage.register.I;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

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
        govgrants.perform().mainPage().clickMainMenuBar(tabName);
    }

    /**
     * click on navigation bar item on main admin homepage.
     *
     * @param tabName
     */
    public void clickAdminNavBar(String tabName, String appName) {
        I.amPerforming().waitFor().makeThreadSleep(500);
        govgrants.perform().mainPage().clickAdminNavBar(tabName);
        govgrants.perform().mainPage().waitForEgmsHeader();
        govgrants.perform().mainPage().setUpCustomAppDropDown(appName);
    }

    /**
     * @return: List of all side bar headers.
     */
    public List<Elements> getSideBarHeadersList() {
        return I.amPerforming().getElementReference().forListOfElements().of(sideBarHeadersList);
    }

    /**
     * @return: List of all Accordian headers.
     */
    public List<Elements> accordianHeadersList(String headerName) {
        return govgrants.perform().sideBar().getSideBarSubHeaders(headerName);
    }

    /**
     * access on side bar sub header
     *
     * @param sideBarCategory
     * @param accordianSubHeader
     * @return
     */
    public WebElement getSideBarAccordianHeader(String sideBarCategory, String accordianSubHeader) {
        return govgrants.perform().sideBar().getSideBarSubHeader(sideBarCategory, accordianSubHeader);
    }

    /**
     * click on flex table icons. Inside click on any tab with flex table.Reach out
     * to any panel header
     *
     * @param pannelTitleName
     * @return
     */
    public WebElement getFlexGridPanels(String pannelTitleName) {
        return I.amPerforming().getElementReference().of(By.xpath("//div[@class='panel-heading']//div[contains(@class,'panel-title')]//*[text()='"
                + pannelTitleName + "']"));
    }

    /**
     * get any button on right header inside planning etc.
     *
     * @param buttonName
     */
    public void getRightHeaderButton(String buttonName) {
        I.amPerforming().click().on(govgrants.perform().pageDetails().getAnyTopRightButton(buttonName));
        try {
            if (I.amPerforming().checkToSee().IsElementPresentQuick(By.xpath("//div[contains(@class, 'modal') and contains(@class, 'bootbox')]//div[contains(@class, 'modal-content')]"))) {
                WebElement popup = I.amPerforming().getElementReference().of(By.xpath("//div[contains(@class, 'modal') and contains(@class, 'bootbox')]//div[contains(@class, 'modal-content')]"));
                I.amPerforming().click().on(I.amPerforming().getElementReference().ofNested(popup, By.xpath("//div[contains(@class, 'modal-content')]//button[text()='Yes' or text()='Continue' or text()='Ok']")));
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
        return govgrants.perform().pageDetails().getMenuItemFromParallelLinesDropDown(headerItem);
    }

    /**
     * get complete rows
     *
     * @return
     */
    public List<Elements> getCompleteTableRow() {
        I.amPerforming().getElementReference().of(completeTableRow);
        return govgrants.perform().flexTable().getCompleteTableRow();
    }

    /**
     * click on sub accordian header
     *
     * @param AccordianHeader
     * @param subHeaderName
     */
    public void clickAccordianSubHeader(String AccordianHeader, String subHeaderName) {
        I.amPerforming().click().on(govgrants.perform().sideBar().getSideBarSubHeader(AccordianHeader, subHeaderName));
        I.amPerforming().click().on(getSideBarAccordianHeader(AccordianHeader, subHeaderName));
    }

    /**
     * Assert for page title
     *
     * @param pageTitle
     */
    public void assertPageTitle(String pageTitle) {
        Assert.assertEquals(I.amPerforming().browserOperationsTo().getPageTitle(), pageTitle);
    }

    /**
     * return locator for status column
     *
     * @param statusName
     * @return
     */
    public By flexTableStatusColumn(String statusName) {
        return govgrants.perform().flexTable().getFlexTableColumn(statusName);
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
        govgrants.perform().phasePanel().clickDoubleArrowDropDownAndSelectItem(dropDownOption);
    }

    /**
     * click row level action item based on program role ,icon name
     *
     * @param programRole
     * @param iconName
     */
    public void clickRowLevelActionIconsInsideSubTab(String iconName, String programRole) {
        govgrants.perform().flexTable().clickTableActionIcons(iconName, programRole);
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
     * click on menu of charts
     *
     * @param chartName
     */
    public void clickChartMenuIcon(String chartName, String iconTitle) {
        govgrants.perform().charts().clickChartMenuIcon(chartName, iconTitle);
    }

    /**
     * select specific value from specific chart
     *
     * @param chartName
     * @param valueToSelect
     */
    public void selectAnyItemFromChartsMenu(String chartName, String valueToSelect) {
        govgrants.perform().charts().selectAnyItemFromChartsMenu(chartName, valueToSelect);
    }

    /**
     * click on specific link of Task Summary  chart
     *
     * @param linkName
     * @param chartName
     */
    public void clickSpecificLinkOnTaskSummary(String linkName, String chartName) {
        govgrants.perform().charts().clickOnExpectedLinkInsideTaskSummary(linkName, chartName);
    }

    /**
     * check title of any modal
     *
     * @param titleName
     * @return
     */
    public boolean isTitleOfModal(String titleName) {
        return I.amPerforming().checkToSee().isDisplayed(By.xpath("//*[@class='modal-title ng-binding'][text()='" + titleName + "']"));
    }

    /**
     * Record column content of table
     *
     * @param tableId
     * @paran columnName
     */
    public void recordWebElement(String columnName, String tableId) {
        recordElement = govgrants.perform().flexTable().getSpecificTableColumn(columnName, tableId);
    }

    /**
     * perform click on page navigation arrow
     *
     * @param flexTableId
     * @param NextPrevious
     */
    public void performClickOnPaginationArrow(String NextPrevious, String flexTableId) {
        govgrants.perform().flexTable().flexTablePagination(flexTableId, NextPrevious);
    }

    /**
     * perform click table header column with table id and title name
     *
     * @param tableId
     * @param titleName
     */
    public void performClickOnSpecificTableColumnHeader(String tableId, String titleName) {
        I.amPerforming().click().on(govgrants.perform().flexTable().getSpecificElementFromTableHeader(tableId, titleName));
    }

    /******* "Local Methods with Limited functionality " **********/

    /**
     * get sub tab inside detail each main detail page like overview etc.
     *
     * @param SubTabName
     */
    public WebElement getSubTabsInsideMainDetailPage(String SubTabName) {
        I.amPerforming().getElementReference().of(By.xpath("//div[@id='myTabs']/ul/li/a[@name='" + SubTabName + "'] | //div[@id='myTabs']//ul//span[text()='" + SubTabName + "']"));
        return I.amPerforming().getElementReference().of(By.xpath("//div[@id='myTabs']/ul/li/a[@name='" + SubTabName + "'] | //div[@id='myTabs']//ul//span[text()='" + SubTabName + "']"));
    }

    /**
     * get list of page block and form sections inside detail page like overview page block and Section 1 in dynamic forms etc.
     */
    public List<Elements> getListPageBlockInsideMainDetailPage() {
        I.amPerforming().getElementReference().of(By.xpath("//div[@class='tab-pane fade active in']//div[@class='panel-heading'] |" +
                "//div[@class='tableBackground']//div[@class='panel-heading']"));
        return I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//div[@class='tab-pane fade active in']//div[@class='panel-heading'] | //div[@class='tableBackground']//div[@class='panel-heading']"));
    }

    /**
     * get BootBox confirmation message box
     */
    public WebElement getBootBoxConfirmationText() {
        return I.amPerforming().getElementReference().of(By.xpath("//div[@class='bootbox-body']"));
    }

    /**
     * @param columnValue
     * @param tableId
     * @return true if hyperlink is displayed at value inside table/modal
     */
    public Boolean isHyperlinkIsDisplayedAtColumnValueInsideEnhancedGrid(String columnValue, String tableId) {
        return I.amPerforming().checkToSee().isDisplayed(By.xpath("//div[@id='" + tableId + "']//span[text()='" + columnValue + "'] | //div[@id='" + tableId + "']//a[text()='" + columnValue + "']"));
    }
}