package com.framework.automation.pageobject;

import com.helperPackage.handlers.govgrants;
import com.framework.automation.projectmanager.GovGrantsManager;
import com.helperPackage.actionsfactory.api.ByUsing;
import com.helperPackage.objects.Elements;
import com.helperPackage.register.I;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.util.ArrayList;
import java.util.List;

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
    public void assertRemovalOfSideBarHeader(String usage, String headerName) {
        if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isTaskMenuDisabled(headerName));
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isTaskMenuDisabled(headerName)).isTrue();
        }
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
        Assert.assertTrue(isIconDisplayedAtAccordionHeader(iconCssValue, accodionHeaderName));
    }

    /**
     * assert if expected searched record id is displayed inside autosuggestion dropdown at global search
     *
     * @param recordId
     * @author - ashwini.mahore
     */
    public void assertRecordInAutoSuggestedDropdownAtGlobalSearch(String recordId) {
        I.amPerforming().assertionsTo().assertThat(isExpectedRecordIdDisplayedInAutoSuggestedDropdownAtGlobalSearch(recordId));
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
     * @return true if expected color displayed at sidebar sub menu background
     */
    private boolean isSidebarBackgroundColorChanged() {
        boolean flag = false;
        WebElement getSidebarSubMenu = I.amPerforming().getElementReference().of(By.xpath("//span[text()='Pending']/ancestor::li[contains(@class,'subMenuLink')]"));
        try {
            if (getSidebarSubMenu.getCssValue("background").contains("rgb(242, 245, 249)") || getSidebarSubMenu.getCssValue("background-color").contains("rgba(242, 245, 249, 1)")) {
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
     * @param iconCssValue
     * @param accodionHeaderName
     * @return true if icon is displayed at accordion header menu inside sidebar
     * @author - ashwini.mahore
     */
    private boolean isIconDisplayedAtAccordionHeader(String iconCssValue, String accodionHeaderName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//span[text()='" + accodionHeaderName + "']/preceding-sibling::span//i[@class='" + iconCssValue + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @param recordId
     * @return true if expected searched record id is displayed inside autosuggestion dropdown at global search
     * @author - ashwini.mahore
     */
    private boolean isExpectedRecordIdDisplayedInAutoSuggestedDropdownAtGlobalSearch(String recordId) {
        boolean flag = false;
        List<Elements> getListOfRecordsFromDropdown = I.amPerforming().getElementReference().forListOfElements().of(ByUsing.xpath("//ul[contains(@class,'dropdown-menu')]//span[contains(@class,'sidebar-search-type-ahead-cls')]"));
        try {
            if (getListOfRecordsFromDropdown.contains(recordId)) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void clickOnPlusMinusIcon(String uiType, String button) {
        if (uiType.equalsIgnoreCase("plus")) {
            I.amPerforming().click().on(ByUsing.xpath("//li[not(contains(@class,'clicked'))]//span[text()='" + button + "']"));
        } else {
            I.amPerforming().click().on(ByUsing.xpath("//li[contains(@class,'clicked')]//span[text()='" + button + "']//ancestor::a"));
        }
    }

    public void assertIfSubMenuDisplayedOnSide(String usage, String mainMenu, String subMenu) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isSubMenuDisplayedOnSideBar(mainMenu, subMenu));
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isSubMenuDisplayedOnSideBar(mainMenu, subMenu)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isSubMenuDisplayedOnSideBar(mainMenu, subMenu));
        } else if (usage.equalsIgnoreCase("softly do not see")) {
            I.amPerforming().assertionsTo().assertThat(isSubMenuDisplayedOnSideBar(mainMenu, subMenu)).isFalse();
        }
    }

    private boolean isSubMenuDisplayedOnSideBar(String mainMenu, String subMenu) {
        boolean flag = false;
        if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//span[text()='" + mainMenu + "']//ancestor::li[contains(@class,'componentTitle ng-scope clicked')]//span[@class='subMenu ng-binding']/following-sibling::span[text()='" + subMenu + "']"))) {
            flag = true;
        }
        return flag;
    }

    public void assertLableDisplayedOnGlobalSearchDropDown(String usage, List<String> label) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(seeBelowLabelDisplayedOnDropDown(label)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(seeBelowLabelDisplayedOnDropDown(label)).isFalse();
        }
    }

    private boolean seeBelowLabelDisplayedOnDropDown(List<String> label) {
        boolean flag = false;
        I.amPerforming().click().on(ByUsing.xpath("//select[@id='selectSearchId']"));
        try {
            List<Elements> elements = I.amPerforming().getElementReference().forListOfElements().of(ByUsing.xpath("//select[@id='selectSearchId']//option"));

            for (Elements element : elements) {
                System.out.println("list of all webelements " + element.getText());
            }

            List<String> buttonlist = new ArrayList<String>();
            for (int i = 0; i < elements.size(); i++) {
                buttonlist.add(elements.get(i).getText().trim());
            }
            if (buttonlist.containsAll(label)) {
                flag = true;
            }
        } catch (Exception e) {
            //unhandled exception
        }
        return flag;
    }
}
