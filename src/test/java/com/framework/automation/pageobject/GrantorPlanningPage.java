package com.framework.automation.pageobject;

import org.testng.Assert;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.projectmanager.GovGrantsManager;

public class GrantorPlanningPage extends GovGrantsManager {

    /******* "Variables and Locators" *****************/

    /**
     * Constructor to handle dependency injection and framework library
     */
    public GrantorPlanningPage(Controller controller, Handlers reiDriver) {
        super(controller, reiDriver);
    }

    /******* "Key Methods with complete functionality - public" *****************/

    /**
     * assert correct title name of table is displayed
     * @param titleName
     */
    public void assertCorrectFlexTableTitleDisplayed(String titleName) {
        Assert.assertTrue(isTitleDisplayed(titleName));
    }

    /**
     * assert two specific items are not displayed in top righ parallel lines bar
     * @param option1
     * @param option2
     */
    public void assertTopRightParallelLinesBarSpecificOptionsDisabled(String option1, String option2) {
        Assert.assertTrue(isTopRightParallelLinesBarSpecificOptionsDisabled(option1, option2));
    }

    /********
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
     * @return
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
}
