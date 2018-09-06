package com.framework.automation.pageobject;

import java.util.ArrayList;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.testng.Assert;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.projectmanager.GovGrantsManager;

public class FlexTablePage extends GovGrantsManager {
    /******* "Variables and Locators" *****************/

    /**
     * Constructor to handle dependency injection and framework library
     */
    public FlexTablePage(Controller controller, Handlers reiDriver) {
        super(controller, reiDriver);

    }

    /******* "Key Methods with complete functionality - public" *****************/

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
        try {
            reiDriver.JavaScript().scrollpageJS("PageDown", 0, 0);
        } catch (Exception e) {

        }
        Assert.assertTrue(isFlexTableRowsTotalDisabled());
    }

    /**
     * assert true if total row calculation is disabled
     */
    public void assertFlexTabelRowCountDisabled() {
        try {
            reiDriver.JavaScript().scrollpageJS("PageDown", 0, 0);
        } catch (Exception e) {

        }
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
     * return true if specific status category is not displayed
     * 
     * @param statusName
     */
    public void assertFlexTableStatusDisabled(String statusName) {
        Assert.assertTrue(isStatusCategoryDisabled(statusName));
    }

    /**
     * assert if Edit icon open in new tab or not
     */
    public void assertEditWithNewTab() {
        Assert.assertTrue(isNewTabOpensForEdit());
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
     * validate if quick search is displayed or not
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

}
