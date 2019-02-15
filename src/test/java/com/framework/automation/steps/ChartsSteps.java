package com.framework.automation.steps;

import com.automation.rei.handlers.GovGrantsHandler;
import com.framework.automation.pageobject.ChartsPage;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import eyethink.automation.bots.controller.Controller;
import eyethink.automation.bots.controller.CoreHandlers;

public class ChartsSteps {
	ChartsPage chartsPage;

	public ChartsSteps(Controller controller, CoreHandlers handler, GovGrantsHandler govgrants) {
		chartsPage = new ChartsPage(controller, handler, govgrants);
	}

	@When("^I click on menu icon of chart \"([^\"]*)\"$")
	public void clickChartMenuIcon(String chartName) {
		chartsPage.clickChartMenuIcon(chartName);
	}

	@When("^I select \"([^\"]*)\" from chart menu of chart \"([^\"]*)\"$")
	public void selectValueFromChartMenu(String valueToSelect, String chartName) {
		chartsPage.selectAnyItemFromChartsMenu(chartName, valueToSelect);
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
}