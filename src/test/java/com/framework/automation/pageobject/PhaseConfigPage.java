package com.framework.automation.pageobject;

import com.framework.automation.projectmanager.GovGrantsManager;
import eyethink.automation.bots.Register.EyeThink;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.time.LocalDateTime;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PhaseConfigPage extends GovGrantsManager {
    public final By customAppDropdown;

    /******* "Variables and Locators" *****************/

    /**
     * Constructor to handle dependency injection and framework library
     */
    public PhaseConfigPage() {
        customAppDropdown = By.xpath("//div/ul/li[contains(@class,'dropdown appDropdown')]");
    }

    /******* "Key Methods with complete functionality - public" *****************/

    /**
     * click on global search all
     */
    public void clickOnGlobalSearchAll() {
        EyeThink.core().findMyElement().getElement(By.xpath("//select[@id='selectSearchId']")).click();
    }

    /**
     * click on global search box only
     */
    public void clickOnGlobalSearchTextBox() {
        By searchInput = By.cssSelector("div.input-group>input#isTypeNotAhead");
        EyeThink.core().findMyElement().getElement(searchInput).click();
    }

    /**
     * perform search on global search box
     */
    public void clickOnSearchForGlobalSearchBox() {
        By quickSearchButton = By.cssSelector("div.input-group>a>i.fa.fa-search");
        EyeThink.core().findMyElement().getElement(quickSearchButton).click();
    }

    /**
     * click on description field and enter value and then perform Save
     */
    public void enterCompleteFieldValues(String value1, String value2, String orderType) {
        if (!"onlyDescription".equals(orderType)) {
            EyeThink.core().textInput().enterText(By.xpath("//*[contains(@placeholder,'Title')]"), value1);
        }
        EyeThink.core().textInput().enterText(By.xpath("//*[contains(@placeholder,'Description')]"), value2);
    }

    /**
     * click on CustomApp Select dropdown inside grantor Home/Planning main page
     */
    public void clickOnCustomAppSelectDropdown() {
        EyeThink.core().findMyElement().getElement(customAppDropdown).click();
    }

    /**
     * assert if a specific phase tab is not displayed
     *
     * @param phaseName
     */
    public void assertSpecificPhaseNotDisplayed(String phaseName) {
        Assert.assertTrue(isPhaseNotDisplayed(phaseName));
    }

    /**
     * assert if a specific phase tab is displayed
     *
     * @param phaseName
     */
    public void assertSpecificPhaseDisplayed(String phaseName) {
        Assert.assertTrue(isPhaseDisplayed(phaseName));
    }

    /**
     * assert if specific phase appears at a specific position
     *
     * @param phaseName
     * @param sequenceNumber
     */
    public void assertSequenceOfPhase(String phaseName, int sequenceNumber) {
        Assert.assertTrue(isPhaseSequence(phaseName, sequenceNumber));
    }

    /**
     * assert number of charts displayed
     *
     * @param numberOfCharts
     */
    public void assertNumberOfChartsDisplayed(int numberOfCharts) {
        Assert.assertEquals(numberOfCharts, EyeThink.core().findMyElement().getElements(chartsContainer).size());
    }

    /**
     * assert position of charts on page
     *
     * @param position
     */
    public void assertPostionOfChartsDisplayed(String position) {
        switch (position.toUpperCase()) {
            case "BOTTOM":
                Assert.assertTrue(isChartsGridAtCorrectPosition(
                        EyeThink.core().findMyElement().getElements(containerFluid_PageWrapperList).size()));
                break;
        }
    }

    /**
     * Assert if specific phase is not displayed in task summary on home page
     *
     * @param phaseName
     */
    public void assertPhaseNotDisplayedInTaskSummaryByPhase(String phaseName) {
        EyeThink.core().WaitFor().makeThreadSleep(1000);
        Assert.assertTrue(isPhaseNotDisplayedInTaskSummary(phaseName));
    }

    public void assertPhaseBookIconDisplayed(String phaseName) {
        Assert.assertTrue(EyeThink.core().findMyElement().getElement(By.xpath(
                "//div/ul[@class='nav navbar-nav']/li/a[@title='" + phaseName + "']//i[contains(@class,'fa-book')]"))
                .isDisplayed());
    }

    /**
     * assert if phase tab planning is getting highlighted or not
     */
    public void assertTabHighlightedInsideNewTab(String phaseName) {
        Assert.assertTrue(isParticularTabHighlighted(phaseName));
    }

    /**
     * assert if changed label search item is present in global search All option in
     * sidebar of phase planning
     *
     * @param searchItem
     */
    public void assertChangedLabelOfSearchedItemsInGlobalSearchAll(String searchItem) {
        String searchLocator = "//select[@id='selectSearchId']//option[text()='" + searchItem + "']";
        Assert.assertTrue(EyeThink.core().findMyElement().getElement(By.xpath(searchLocator)).isDisplayed());
    }

    /**
     * assert if particular search item is present in global search All option in
     * sidebar of phase planning
     *
     * @param searchItem
     */
    public void assertSearchedItemIsNotDisplayedInGlobalSearchAll(String searchItem) {
        Assert.assertTrue(isSearchedItemNotPresentInGlobalSearchAll(searchItem));
    }

    /**
     * Assert true for not showing passed objectType related entities in Recently
     * Viewed option which is present in sidebar of phase Planning
     *
     * @param acronym = program or announcement or related entity
     */
    public void assertThatObjectIsNotShowingInRecentlyViewedSideBarOption(String acronym) {
        Assert.assertTrue(isObjectNotShowingInRecentlyViewedSideBar(acronym));
    }

    /**
     * Assert true if only program related records displayed inside table
     */
    public void assertTableContainsOnlyProgramRecords(String recordIdText) {
        Assert.assertTrue(isProgramRecordsPresentInsideTable(recordIdText));
    }

    /**
     * assert if custom App is displayed inside custom app dropdown list
     *
     * @param dropDownValue
     */
    public void assertCustomAppValueInsideDropdownDisplayed(String dropDownValue) {
        Assert.assertTrue(isSpecificCustomAppDisplayed(dropDownValue));
    }

    /**
     * assert if custom App is not displayed inside custom app dropdown list
     *
     * @param dropDownValue
     */
    public void assertCustomAppValueInsideDropdownNotDisplayed(String dropDownValue) {
        Assert.assertFalse(isSpecificCustomAppDisplayed(dropDownValue));
    }

    /**
     * get item from custom App Dropdown
     *
     * @param dropDownValue
     * @return
     */
    public WebElement getCustomAppFromCustomAppDropdown(String dropDownValue) {
        return EyeThink.core().findMyElement().getElement(By
                .xpath("//div/ul/li[contains(@class,'dropdown appDropdown')]/ul/li/a[@title='" + dropDownValue + "']"));
    }

    /**
     * get the top right drop down items. grntee etc
     *
     * @param dropDownItem
     * @return
     */
    public List<WebElement> getAppDropDownItem(String dropDownItem) {
        By appDropDown = By
                .xpath("//div/ul/li[contains(@class,'dropdown appDropdown')]/ul/li/a");
        return EyeThink.core().findMyElement().getElements(appDropDown);
    }

    /**
     * Assert contrast color of complete page for custom app as a grantor
     *
     * @param contrastValue
     */
    public void assertContrastColourForCustomAppAsaGrantor(String contrastValue) {
        Assert.assertFalse(isContrastColorIsDisplayedForCustomAppAsaGrantor(contrastValue));
    }

    /**
     * assert if specific options appears at a specific position for custom App
     *
     * @param option
     * @param sequenceNumber
     */
    public void assertSequenceOfSpecificOptionsOfCustomApp(String option, int sequenceNumber) {
        Assert.assertTrue(isCustomAppOptionsSequenceAaExpected(option, sequenceNumber));
    }

    /**
     * Assert custom app is not displayed
     */
    public void assertCustomAppOnPage() {
        Assert.assertTrue(isCustomAppDisplayedOnPage());
    }

    /**
     * assert program name  colour inside calender tab of my workspace is displayed
     *
     * @param colorName
     */
    public void assertProgramColourInsideCalenderDisplayed(String colorName) {
        Assert.assertTrue(isChangedProgramColorIsDisplayed(colorName));
    }

    /**
     * assert program name  colour inside calender tab of my workspace is displayed
     */
    public void assertProgramIsDisplayedInsideCalender() {
        Assert.assertFalse(isProgramDisplayedAtCalender());
    }

    /**
     * assert sticky notes text
     */
    public void assertStickyNotesText(String stickyTitle, String text) {
        Assert.assertTrue(isTextPresentOnStickyNote(stickyTitle, text));
    }

    /**
     * assert sticky notes text
     */
    public void assertStickyNotesTextNotDisplayed(String stickyTitle, String text) {
        Assert.assertFalse(isTextPresentOnStickyNote(stickyTitle, text));
    }

    /**
     * assert sticky notes date
     */
    public void assertStickyNotesCurrentDate() {
        Assert.assertTrue(isCurrentDateDisplayedOnStickyNote());
    }

    /**
     * assert pop up alert box for global search
     */
    public void assertAlertPopUpBoxDisplayed() {

        Assert.assertFalse(EyeThink.core().switchTo().popupPresent());
    }

    /**
     * assert govgrants logo and name
     */
    public void assertGovGrantsLogoAndNAme(String logo, String logoName) {
        Assert.assertTrue(isGovGrantsLogoAndNameDisplayedOnPage(logo, logoName));
    }

    /********* "Local Methods with complete functionality - private" *********/

    /**
     * @param phaseName
     * @return true if phase is no displayed
     */
    private boolean isPhaseNotDisplayed(String phaseName) {
        boolean flag = true;
        try {
            if (EyeThink.core().findMyElement()
                    .getElement(By.xpath("//div/ul[@class='nav navbar-nav']/li/a[@title='" + phaseName + "']"))
                    .isDisplayed()) {
                flag = false;
            }
        } catch (Exception e) {

        }
        return flag;
    }

    /**
     * @param phaseName
     * @return true if phase is displayed
     */
    private boolean isPhaseDisplayed(String phaseName) {
        boolean flag = false;
        try {
            if (EyeThink.core().findMyElement()
                    .getElement(By.xpath("//div/ul[@class='nav navbar-nav']/li/a[@title='" + phaseName + "']"))
                    .isDisplayed()) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * check the sequence of the phases
     *
     * @param phaseName
     * @param sequenceNumber
     * @return true/false
     */
    private boolean isPhaseSequence(String phaseName, int sequenceNumber) {
        if (EyeThink.core().findMyElement().getElements(allPhases).get(sequenceNumber).getAttribute("title")
                .contains(phaseName)) {
            return true;
        } else
            return false;
    }

    /**
     * is position of charts grid true
     *
     * @param positionNumber
     * @return
     */
    private boolean isChartsGridAtCorrectPosition(int positionNumber) {
        boolean flag = false;
        try {
            if (EyeThink.core().findMyElement().getElement(By.cssSelector("div#page-content-wrapper>div.container-fluid>div>div>div:nth-of-type("
                    + positionNumber + ") div#charts"))
                    .isEnabled()) {
                flag = true;
            }
        } catch (Exception e) {

        }
        return flag;
    }

    /**
     * is specific phase not displayed in task summary on homepage
     *
     * @param phaseName
     * @return
     */
    private boolean isPhaseNotDisplayedInTaskSummary(String phaseName) {
        boolean flag = true;
        try {
            if (EyeThink.core().findMyElement().getElement(getSpecificPhaseInTaskSummaryByPhase(phaseName)).isDisplayed()) {
                flag = false;
            }
        } catch (Exception e) {

        }
        return flag;
    }

    /**
     * Boolean status for planning phase getting highlighted or not inside new tab
     *
     * @return
     */
    private Boolean isParticularTabHighlighted(String phaseName) {
        boolean flag = false;
        EyeThink.core().switchTo().getWindowsHandlers();
        if (EyeThink.core().findMyElement().getElement(By.xpath("//div/ul[@class='nav navbar-nav']/li[contains(@class,'ng-scope active')]/a[@title='"
                + phaseName + "']"))
                .isDisplayed()) {
            flag = true;
        }
        return flag;
    }

    /**
     * Boolean status for global search items for planning phase is displayed or not
     *
     * @return
     */
    private boolean isSearchedItemNotPresentInGlobalSearchAll(String searchItem) {
        boolean flag = true;
        try {
            if (EyeThink.core().findMyElement().getElement(By.xpath("//select[@id='selectSearchId']//option[text()='" + searchItem + "']"))
                    .isDisplayed()) {
                flag = false;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * Boolean true if the given object type such as program or announcement or any
     * other relating entity is not present in Recently Viewed Side Bar option
     *
     * @param acronym this could be program or announcement or other relating entity
     * @return true or false
     */
    private boolean isObjectNotShowingInRecentlyViewedSideBar(String acronym) {
        boolean flag = true;
        try {
            if (EyeThink.core().findMyElement().getElement(By.xpath(
                    ".//span[text()='Recently Viewed']/parent::a/following-sibling::ul//li//span[starts-with(text(),'"
                            + acronym + "')]"))
                    .isDisplayed()) {
                flag = false;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * return true if specific custom App displayed
     *
     * @param dropDownValue
     * @return
     */
    private boolean isSpecificCustomAppDisplayed(String dropDownValue) {
        boolean flag = false;
        try {
            if (getCustomAppFromCustomAppDropdown(dropDownValue).getAttribute("innerText").trim()
                    .equalsIgnoreCase(dropDownValue)) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {

        }
        return flag;
    }

    /**
     * return true if contrast color on page is not displayed
     *
     * @param contrastValue
     * @return
     */
    private boolean isContrastColorIsDisplayedForCustomAppAsaGrantor(String contrastValue) {
        boolean flag = false;
        List<WebElement> list = EyeThink.core().findMyElement().getElements(By.xpath("//body//span/link"));
        int links = list.size();
        for (int i = 0; i < links; i++) {
            if (list.get(i).getAttribute("href").contains(contrastValue))
                flag = true;
        }
        return flag;
    }

    /**
     * return true if custom app is not displayed
     */
    private boolean isCustomAppDisplayedOnPage() {
        boolean flag = false;
        try {
            if (EyeThink.core().findMyElement().getElement(customAppDropdown).isDisplayed()) ;
            flag = true;
        } catch (org.openqa.selenium.NoSuchElementException e) {

        }
        return flag;
    }

    /**
     * check the sequence of custom app options
     *
     * @param dropDownItem
     * @param sequenceNumber
     * @return true/false
     */
    private boolean isCustomAppOptionsSequenceAaExpected(String dropDownItem, int sequenceNumber) {
        if (getAppDropDownItem(dropDownItem).get(sequenceNumber).getAttribute("title").contains(dropDownItem)) {
            return true;
        } else
            return false;
    }

    /**
     * @return true if changed color of program is displayed inside My workspace
     */
    private Boolean isChangedProgramColorIsDisplayed(String colorName) {
        boolean flag = false;
        List<WebElement> programColor = EyeThink.core().findMyElement().getElements(By.xpath("//table/tbody/tr/td//a//span[contains(text(),'PG')]//ancestor::a"));
        for (int i = 0; i < programColor.size(); i++) {
            switch (colorName.toUpperCase()) {
                case "RED":
                    if (programColor.get(i).getCssValue("background-color").contains("rgba(255, 0, 0, 1)")
                            || programColor.get(i).getCssValue("color").contains("rgb(255, 0, 0)")
                            || programColor.get(i).getAttribute("style").contains("rgb(255, 0, 0)")) {
                        flag = true;
                    }
                    break;
                case "BLUE":
                    if (programColor.get(i).getCssValue("background-color").contains("rgba(11, 11, 160, 1)")
                            || programColor.get(i).getCssValue("color").contains("rgba(11, 11, 160)")
                            || programColor.get(i).getAttribute("style").contains("rgb(11, 11, 160)")) {
                        flag = true;
                    }
                    break;
                case "GREEN":
                    if (programColor.get(i).getCssValue("background-color").contains("rgba(59, 161, 11, 1")
                            || programColor.get(i).getCssValue("color").contains("rgb(59, 161, 11")
                            || programColor.get(i).getAttribute("style").contains("rgb(59, 161, 11)")) {
                        flag = true;
                    }
                    break;
            }
        }
        return flag;
    }

    /**
     * @return true if changed color of program is displayed inside My workspace
     */
    private Boolean isProgramDisplayedAtCalender() {
        boolean flag = false;
        List<WebElement> programColor = EyeThink.core().findMyElement().getElements(By.xpath("//table/tbody/tr/td//a//span[contains(text(),'PG')]"));
        for (int i = 0; i < programColor.size(); i++) {
            if (programColor.get(i).getText().contentEquals("PG")) {
                return true;
            }
        }
        return flag;
    }

    /**
     * @return true if expected text is displayed on sticky note
     */
    private Boolean isTextPresentOnStickyNote(String stickyTitle, String text) {
        boolean flag = false;
        try {
            if (EyeThink.core().findMyElement().getElement(By.xpath("//a[contains(@aria-label,'" + stickyTitle + "')]/textarea")).getAttribute("value").equalsIgnoreCase(text)) {
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    /**
     * @return true if expected current date is displayed on sticky note
     */
    private Boolean isCurrentDateDisplayedOnStickyNote() {
        WebElement stickyDate = EyeThink.core().findMyElement().getElement(By.xpath("//div[contains(@class,'dateFieldNotes ng-binding')]"));
        String sDate = stickyDate.getText().split(" ")[0];
        String currentDate = EyeThink.core().get().getCurrentDate_MMDDYYYY();
        boolean flag = false;
        if (sDate.equals(currentDate)) {
            flag = true;
        }
        return flag;
    }

    /**
     * return true if product logo and its name is displayed
     *
     * @param logo
     * @param logoName
     */
    private boolean isGovGrantsLogoAndNameDisplayedOnPage(String logo, String logoName) {
        boolean flag = false;
        try {
            if (EyeThink.core().findMyElement().getElement(By.xpath("//img[@alt='" + logo + "']/../following-sibling::span[text()='" + logoName + "']")).isDisplayed())
                ;
            flag = true;
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * Boolean true if Program related records present only inside pending tasks table
     *
     * @return
     */
    private boolean isProgramRecordsPresentInsideTable(String recordIdText) {
        List<WebElement> recordList = EyeThink.core().findMyElement().getElements(By.xpath("//table/tbody/tr//td//span[contains(text(),'" + recordIdText + "')]"));
        boolean flag = false;
        try {
            if (recordList.size() > 0) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }


    public void assertTaskCount(String tabName, String tableID) {
        String finalCount = EyeThink.core().findMyElement().getElement(By.xpath("//div[@class='container-fluid']//li//span[text()='" + tabName + "']/../..//span[contains(@ng-bind,'taskCount')]")).getText();
        Assert.assertEquals(findTaskCount(tabName, tableID), finalCount);
    }

    /**
     * @param tabName - Main tab name
     * @param tableID - pending task table ID
     * @return - count of total records available in pending task
     * @author - Mahadev.hanme
     */
    public String findTaskCount(String tabName, String tableID) {
        EyeThink.saas().mainPage().clickMainMenuBar(tabName);
        String pendingTaskCount = "";
        EyeThink.saas().sideBar().clickSideBarContent("My Tasks", "Pending");
        try {
            pendingTaskCount = totalRecordsCount(tableID);
            Pattern p = Pattern.compile("\\d+");
            Matcher m = p.matcher(pendingTaskCount);
            if (m.find())
                pendingTaskCount = m.group(0);
        } catch (Exception e) {
            pendingTaskCount = "0";
        }

        EyeThink.saas().mainPage().clickMainMenuBar("HOME");
        return pendingTaskCount;
    }

    /* handles to veify total records present in flex table */
    public String totalRecordsCount(String tableId) {
        return (EyeThink.core().findMyElement().getElement(By.xpath("//div[@id='" + tableId + "']//following-sibling::span[contains(text(),'Total Records')]"))).getText();
    }


}