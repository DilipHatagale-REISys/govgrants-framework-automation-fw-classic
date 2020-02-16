package com.framework.automation.steps;

import com.framework.automation.pageobject.ChartsPage;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class ChartsSteps {
	ChartsPage chartsPage;

	public ChartsSteps() {
		chartsPage = new ChartsPage();
	}

	@When("^I click on menu icon of chart \"([^\"]*)\"$")
	public void clickChartMenuIcon(String chartName) {
		chartsPage.clickChartMenuIcon(chartName);
	}

	@When("^I select \"([^\"]*)\" from chart menu of chart \"([^\"]*)\"$")
	public void selectValueFromChartMenu(String valueToSelect, String chartName) {
		chartsPage.selectAnyItemFromChartsMenu(chartName, valueToSelect);
	}

	@When("^I navigate to \"([^\"]*)\" content inside \"([^\"]*)\" charts$")
	public void performClickOnTaskSummaryLinks(String linkName, String chartName) {
		chartsPage.clickSpecificLinkOnTaskSummary(linkName, chartName);
	}

	@When("^I hovering mouse on enhanced charts id \"([^\"]*)\" and charts type \"([^\"]*)\"$")
	public void getStepProgressStatusContent(String chartId, String chartsType) {
		chartsPage.getHoveringOnEnhancedCharts(chartId, chartsType);
	}

	@Then("^I see \"([^\"]*)\" displayed in modal$")
	public void assertModalTitle(String titleName) {
		chartsPage.isTitleOfModal(titleName);
	}

	@Then("^I see \"([^\"]*)\" displayed as chart title$")
	public void assertDisplayedChartTitle(String title) {
		chartsPage.assertChartTitleDisplayed(title);
	}

	@Then("^I (see|do not see) chart legends are displayed for chart/enhanced Charts \"([^\"]*)\"$")
	public void assertChartLegendsNotDisplayed(String usage,String chartName) {
		chartsPage.assertChartLegendNotDisplayed(usage, chartName);
	}

	@Then("^I see \"([^\"]*)\" for chart \"([^\"]*)\"$")
	public void assertSpecificTextForChart(String label, String chartName) {
		chartsPage.assertCorrectTextDisplayed(label, chartName);
	}

	@Then("^I see \"([^\"]*)\" for chart \"([^\"]*)\" comes only once$")
	public void assertSpecificTextRenderedOnceForChart(String text, String chartName) {
		chartsPage.assertExpectedTextDisplayedForOnce(text, chartName);
	}

	@Then("^I see \"([^\"]*)\" charts displayed$")
	public void assertNoOfCharts(String number) {
		chartsPage.assertExpectedNoOfChartsDisplayed(Integer.parseInt(number));
	}

	@Then("I (see|do not see|softly see|softly do not see) charts with id \"([^\"]*)\" displayed$")
	public void assertChartDisplayed(String usage, String chartId) {
		chartsPage.assertVisibilityOfAnyCharts(usage, chartId);
	}

	@Then("I see charts \"([^\"]*)\" with type as \"([^\"]*)\"$")
	public void assertChartsType(String chartId, String chartType) {
		chartsPage.assertExpectedChartsType(chartId, chartType);
	}

	@Then("^I (see|softly see) \"([^\"]*)\" shown inside enhanced charts on hover$")
	public void assertMiniPageLayoutTextOnHover(String usage, String text) {
		chartsPage.assertTextDisplayedOnEnhacedChartsHover(usage, text);
	}
}