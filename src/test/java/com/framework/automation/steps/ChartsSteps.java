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

	@Then("^I see \"([^\"]*)\" displayed in modal$")
	public void assertModalTitle(String titleName) {
		chartsPage.isTitleOfModal(titleName);
	}

	@Then("^I see \"([^\"]*)\" displayed as chart title$")
	public void assertDisplayedChartTitle(String title) {
		chartsPage.assertChartTitleDisplayed(title);
	}

	@Then("^I see chart legends are not displayed for chart \"([^\"]*)\"$")
	public void assertChartLegendsNotDisplayed(String chartName) {
		chartsPage.assertChartLegendNotDisplayed(chartName);
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
}