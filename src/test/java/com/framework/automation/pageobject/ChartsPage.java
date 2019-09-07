package com.framework.automation.pageobject;

import com.framework.automation.projectmanager.GovGrantsManager;
import eyethink.automation.bots.Register.EyeThink;
import org.junit.Assert;
import org.openqa.selenium.By;

public class ChartsPage extends GovGrantsManager {
    /******* "Variables and Locators" *****************/


    /******* "Key Methods with complete functionality - public" *****************/

    public void assertChartTitleDisplayed(String title) {
        Assert.assertTrue(isChartTitleDisplayed(title));
    }

    /**
     * @param chartName
     */
    public void assertChartLegendNotDisplayed(String chartName) {
        Assert.assertTrue(isChartLegendNotDisplayed(chartName));
    }

    /**
     * If correct text is displayed in xhart. like xaxis label and prefix
     *
     * @param title
     * @param chartName
     */
    public void assertCorrectTextDisplayed(String title, String chartName) {
        Assert.assertTrue(EyeThink.core().elementReference().onWeb(By.xpath("//div[@id='" + chartName
                + "Id']//*[contains(@class,'highcharts-container')]//*[contains(text(),'" + title + "')]"))
                .getText().contains(title));
    }

    /**
     * If count of text is displayed only once in chart
     *
     * @param text
     * @param chartName
     */
    public void assertExpectedTextDisplayedForOnce(String text, String chartName) {
        Assert.assertTrue(isExpectedTextComesOnlyOnceInChart(text, chartName));
    }

    /**
     * If size of charts is equal to expected size
     *
     * @param number
     */
    public void assertExpectedNoOfChartsDisplayed(int number) {
        Assert.assertTrue(isExpectedNoOfChartsDisplayed(number));
    }

    /********* "Local Methods with complete functionality - private" ******/

    /**
     * If correct chart title is displayed
     *
     * @param title
     * @return true
     */
    private boolean isChartTitleDisplayed(String title) {
        boolean flag = false;
        try {
            if (EyeThink.core().is().onWeb().isDisplayed(By.cssSelector("div#charts [title='" + title + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * If chart legends not displayed
     *
     * @param title
     * @return true
     */
    private boolean isChartLegendNotDisplayed(String title) {
        boolean flag = true;
        try {
            if (EyeThink.core().is().onWeb().isDisplayed(By.cssSelector("div#" + title + "Id .highcharts-legend"))) {
                flag = false;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * return true if expected text is present only once in chart
     *
     * @param title
     * @return true
     */
    private boolean isExpectedTextComesOnlyOnceInChart(String title, String chartName) {
        boolean flag = false;
        int textCount = 0;
        textCount = EyeThink.core().elementReference().listOfElements().onWeb(By.xpath("//div[@id='" + chartName + "Id']//*[contains(@class,'highcharts-container')]//*[contains(text(),'" + title + "')]")).size();
        try {
            if (textCount == 1) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * return true if expected no of charts is displayed
     *
     * @param number
     * @return
     */
    private boolean isExpectedNoOfChartsDisplayed(int number) {
        boolean flag = false;
        int chartCount = 0;
        chartCount = EyeThink.core().elementReference().listOfElements().onWeb(By.xpath("//div[@id='charts']//div[@class='ng-scope' and not(@ng-controller)]")).size();
        try {
            if (chartCount == number) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }
}