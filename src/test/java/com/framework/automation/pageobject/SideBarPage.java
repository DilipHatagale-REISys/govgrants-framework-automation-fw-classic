package com.framework.automation.pageobject;

import com.automation.rei.handlers.govgrants;
import com.framework.automation.projectmanager.GovGrantsManager;
import com.testingblaze.objects.Elements;
import com.testingblaze.register.I;
import org.junit.Assert;

import java.util.ArrayList;

public class SideBarPage extends GovGrantsManager {

    /******* "Key Methods with complete functionality - public" *****************/

    /**
     * assert if header is on correct location in side bar
     *
     * @param headerName
     * @param sequenceNumber
     */
    public void assertSideBarHeaderSequence(String headerName, int sequenceNumber) {
        Assert.assertTrue(isHeaderSequence(headerName, sequenceNumber));
    }

    /**
     * assert if Task menu is disabled from side bar
     *
     * @param headerName
     */
    public void assertRemovalOfSideBarHeader(String headerName) {
        Assert.assertFalse(isTaskMenuDisabled(headerName));
    }

    /**
     * @param subTabName
     * @param mainTabName
     */
    public void assertnewSubHeaderContentLabel(String subTabName, String mainTabName) {
        Assert.assertEquals(getSideBarAccordianSubHeaderContent(mainTabName, subTabName).getText(), subTabName);
    }

    /**
     * @param accordianHeaderName
     * @param number
     * @param headerName
     */
    public void assertAccordianHeaderSequence(String accordianHeaderName, int number, String headerName) {
        Assert.assertTrue(isAccordianHeaderSequence(accordianHeaderName, number, headerName));
    }

    /**
     * @param subTabName:  Accordion header
     * @param mainTabName: Changed Accordion header label/Name
     */
    public void assertnewAccordionHeaderLabel(String subTabName, String mainTabName) {
        Assert.assertEquals(getSideBarAccordianHeader(mainTabName, subTabName).getText(), subTabName);
    }

    /**
     * @param accordianHeaderName
     * @param number
     * @param headerName
     */
    public void assertAccordianContentSequence(String accordianHeaderName, int number, String headerName) {
        Assert.assertTrue(isAccordianContentSequence(accordianHeaderName, number, headerName));
    }

    /**
     * assert if accordion content open in new tab or not
     *
     * @param Pagetitle
     */
    public void assertAccordionContentWithNewTab(String Pagetitle) {
        Assert.assertTrue(isNewTabOpens(Pagetitle));
    }

    /**
     * assert if accordion sub header is displayed
     *
     * @param sideBarCategory
     * @param accordianSubHeaderDetail
     */
    public void assertSubHeaderContentDisplayed(String sideBarCategory, String accordianSubHeaderDetail) {
        Assert.assertTrue(isSideBarAccordionSubHeaderDisplayed(sideBarCategory, accordianSubHeaderDetail));
    }

    /**
     * assert if accordion sub header is not displayed
     *
     * @param sideBarCategory
     * @param accordianSubHeaderDetail
     */
    public void assertSubHeaderContentNotDisplayed(String sideBarCategory, String accordianSubHeaderDetail) {
        Assert.assertFalse(isSideBarAccordionSubHeaderDisplayed(sideBarCategory, accordianSubHeaderDetail));
    }

    /*********
     * "Local Methods with Limited functionality - Private"
     *****************/

    /**
     * @param headerName:     Header name in sidebar
     * @param sequenceNumber: item number in side bar
     * @return
     */
    private Boolean isHeaderSequence(String headerName, int sequenceNumber) {
        if (getSideBarHeadersList().get(sequenceNumber).getText().contains(headerName)) {
            return true;
        } else
            return false;
    }

    /**
     * Boolean status of Task menu from sidebar
     *
     * @param headerName
     */
    private Boolean isTaskMenuDisabled(String headerName) {
        for (Elements we : getSideBarHeadersList()) {
            if (we.getText().equalsIgnoreCase(headerName)) {
                return true;
            }
        }
        return false;
    }

    /**
     * validate the sequence of accordian headers appearing
     *
     * @param accordianHeaderName
     * @param number
     * @param headerName
     * @return
     */
    private Boolean isAccordianHeaderSequence(String accordianHeaderName, int number, String headerName) {
        if (accordianHeadersList(headerName).get(number).getText().contains(accordianHeaderName)) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * Boolean status of Accordion Content sequence from sidebar
     *
     * @param accordianHeaderName
     * @param headerName
     */
    private Boolean isAccordianContentSequence(String accordianHeaderName, int number, String headerName) {
        if (govgrants.perform().sideBar().getSideBarContents(headerName).get(number).getText().contains(accordianHeaderName)) {
            return true;
        } else
            return false;
    }

    /**
     * Boolean status of Accordion Content opens in another tab
     *
     * @param pageTitle:
     * @return
     */
    private Boolean isNewTabOpens(String pageTitle) {
        ArrayList<String> tabHandles = new ArrayList<String>(I.amPerforming().switchTo().getWindowsHandlers());
        boolean myNewTabFound = false;
        for (int index = 0; index < tabHandles.size(); index++) {
            I.amPerforming().switchTo().windowHandler(index);
            I.amPerforming().waitFor().makeThreadSleep(2000);
            if (I.amPerforming().actionToGet().pageTitle().equalsIgnoreCase(pageTitle)) {
                myNewTabFound = true;
                break;
            }
        }
        return myNewTabFound;
    }

    /**
     * @param sideBarCategory
     * @param accordianSubHeaderDetail
     * @return true if accordion sub header is displayed
     */
    private boolean isSideBarAccordionSubHeaderDisplayed(String sideBarCategory, String accordianSubHeaderDetail) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(getSideBarAccordianSubHeaderContent(sideBarCategory, accordianSubHeaderDetail))) {
                flag = true;
            }
        } catch (Exception e) {

        }
        return flag;
    }
}
