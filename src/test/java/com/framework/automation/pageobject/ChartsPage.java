package com.framework.automation.pageobject;

import com.framework.automation.projectmanager.GovGrantsManager;
import eyethink.automation.bots.Register.EyeThink;
import org.junit.Assert;
import org.openqa.selenium.By;

public class ChartsPage extends GovGrantsManager {
    /******* "Variables and Locators" *****************/


    /******* "Key Methods with complete functionality - public" *****************/
    /**
     * It will return the enhanced charts which will take parameter as charts id and charts type (means class attribute which will differentiate the multiple charts)
     *
     * @param chartId
     * @param chartsType
     * @return
     */
    public By enhancedCharts(String chartId, String chartsType) {
        return By.xpath("//div[@id='" + chartId + "']//*[local-name()='path'][contains(@class,'" + chartsType + "')]");
    }

    /**
     * perform mouse hover on enhanced charts
     *
     * @param chartId
     * @param chartsType
     */
    public void getHoveringOnEnhancedCharts(String chartId, String chartsType) {
        EyeThink.core().scroll().moveToElement(enhancedCharts(chartId, chartsType), false);
    }

    public void assertChartTitleDisplayed(String title) {
        Assert.assertTrue(isChartTitleDisplayed(title));
    }

    /**
     * If correct text is displayed in enhanced charts for Y-Axix level on hover
     *
     * @param usage
     * @param text
     */
    public void assertTextDisplayedOnEnhacedChartsHover(String usage, String text) {
        By textInsideEnhancedChartHover = By.xpath("//div[contains(@class,'highcharts-label highcharts-tooltip')]//td[contains(text(),'" + text + "')]");
        EyeThink.core().WaitFor().makeThreadSleep(2000);
        if (usage.contains("softly")) {
            EyeThink.core().assertion()
                    .assertThat(
                            EyeThink.core().is().isDisplayed(textInsideEnhancedChartHover)).isTrue();
        } else {
            Assert.assertTrue(
                    EyeThink.core().is().isDisplayed(textInsideEnhancedChartHover));
        }
    }

    /**
     * @param chartName
     */
    public void assertChartLegendNotDisplayed(String usage, String chartName) {
        if (usage.contains("not")) {
            Assert.assertFalse(isChartLegendNotDisplayed(chartName));
        } else {
            Assert.assertTrue(isChartLegendNotDisplayed(chartName));
        }
    }

    /**
     * If correct text is displayed in xhart. like xaxis label and prefix
     *
     * @param title
     * @param chartName
     */
    public void assertCorrectTextDisplayed(String title, String chartName) {
        Assert.assertTrue(EyeThink.core().get().text(By.xpath("//div[@id='" + chartName
                + "Id']//*[contains(@class,'highcharts-container')]//*[contains(text(),'" + title + "')]")).contains(title));
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

    /**
     * assert true/false if expected charts/enhaced grid charts displayed/not displayed
     */
    public void assertVisibilityOfAnyCharts(String usage, String chartId) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isExpectedChartsDisplayed(chartId));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isExpectedChartsDisplayed(chartId));
        } else if (usage.equalsIgnoreCase("softly see")) {
            EyeThink.core().assertion().assertThat(isExpectedChartsDisplayed(chartId)).isTrue();
        } else if (usage.equalsIgnoreCase("softly do not see")) {
            EyeThink.core().assertion().assertThat(isExpectedChartsDisplayed(chartId)).isFalse();
        }
    }

    /**
     * assert true/false if expected charts/enhaced charts type is displayed
     */
    public void assertExpectedChartsType(String chartId, String chartType) {
        Assert.assertTrue(isExpectedChartsTypeDisplayed(chartId, chartType));
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
            if (EyeThink.core().is().isDisplayed(By.cssSelector("div#charts [title='" + title + "']"))) {
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
        boolean flag = false;
        try {
            if (EyeThink.core().is().isDisplayed(By.cssSelector("div#" + title + "Id .highcharts-legend"))) {
                flag = true;
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
        textCount = EyeThink.core().elementReference().listOfElements().of(By.xpath("//div[@id='" + chartName + "Id']//*[contains(@class,'highcharts-container')]//*[contains(text(),'" + title + "')]")).size();
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
        chartCount = EyeThink.core().elementReference().listOfElements().of(By.xpath("//div[@id='charts']//div[@class='ng-scope' and not(@ng-controller) and not(@ng-if)]")).size();
        try {
            if (chartCount == number) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * validate if any charts/enhanced charts is displayed at Any phase
     *
     * @return: true if it is displayed
     */
    private boolean isExpectedChartsDisplayed(String chartsId) {
        boolean flag = false;
        try {
            if (EyeThink.core().is().isDisplayed(By.xpath("//div[@id='" + chartsId + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
            flag = false;
        }
        return flag;
    }

    /**
     * validate if any charts/enhanced charts is displayed at Any phase
     *
     * @return: true if it is displayed
     */
    private boolean isExpectedChartsTypeDisplayed(String chartId, String chartsType) {
        boolean flag = false;
        try {
            if (EyeThink.core().is().isDisplayed(enhancedCharts(chartId, chartsType))) {
                flag = true;
            }
        } catch (Exception e) {
            flag = false;
        }
        return flag;
    }
}