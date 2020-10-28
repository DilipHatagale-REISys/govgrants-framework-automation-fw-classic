package com.framework.automation.pageobject;

import com.automation.rei.handlers.govgrants;
import com.framework.automation.projectmanager.GovGrantsManager;
import com.testingblaze.objects.Elements;
import com.testingblaze.register.I;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

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
        Assert.assertEquals(govgrants.perform().sideBar().getSideBarAccordianSubHeaderContent(mainTabName, subTabName).getText(), subTabName);
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
     * assert sidebar background color
     */
    public void asserSidebarBackgroundColor() {
        Assert.assertTrue(isSidebarBackgroundColorChanged());
    }

    /**
     * assert sidebar scroll color at grantor App
     */
    public void assertSidebarScrollHasBlueColour() {
        Assert.assertTrue(isSidebarScrollHasBlueColour());
    }

    /**
     * assert if icon is displayed at accordion header menu inside sidebar
     *
     * @param iconCssValue
     * @param accodionHeaderName
     * @author - ashwini.mahore
     */
    public void assertIconDisplayedAtAccordionHeader(String iconCssValue, String accodionHeaderName) {
        Assert.assertTrue(isIconDisplayedAtAccordionHeader(iconCssValue,accodionHeaderName ));
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
            if (I.amPerforming().browserOperationsTo().getPageTitle().equalsIgnoreCase(pageTitle)) {
                myNewTabFound = true;
                break;
            }
        }
        return myNewTabFound;
    }

    /**
     * @return true if expected color displayed at sidebar sub menu background
     */
    private boolean isSidebarBackgroundColorChanged() {
        boolean flag = false;
        WebElement getSidebarSubMenu = I.amPerforming().getElementReference().of(By.xpath("//span[text()='Pending']/ancestor::li[contains(@class,'subMenuLink')]"));
        try {
            if (getSidebarSubMenu.getCssValue("background-color").contains("rgb(242, 245, 249)") || getSidebarSubMenu.getCssValue("background-color").contains("rgba(242, 245, 249, 1)")) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @return true if expected color displayed at sidebar scrollbar at grantor app
     */
    private boolean isSidebarScrollHasBlueColour() {
        boolean flag = false;
        WebElement getSidebarScrollBar = I.amPerforming().getElementReference().of(By.xpath("//div[@id='sidebar-wrapper']"));
        try {
            if (getSidebarScrollBar.getAttribute("class").contains("sidebar-wrapper")) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @return true if icon is displayed at accordion header menu inside sidebar
     *
     * @param iconCssValue
     * @param accodionHeaderName
     * @author - ashwini.mahore
     */
    private boolean isIconDisplayedAtAccordionHeader(String iconCssValue, String accodionHeaderName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//span[text()='"+accodionHeaderName+"']/preceding-sibling::span//i[@class='"+iconCssValue+"']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }
}
