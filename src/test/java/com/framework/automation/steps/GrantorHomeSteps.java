package com.framework.automation.steps;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.pageobject.GrantorHomePage;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class GrantorHomeSteps {
	GrantorHomePage grantorHomePage;

	public GrantorHomeSteps(Controller controller, Handlers handler) {
		grantorHomePage = new GrantorHomePage(controller, handler);
	}

	@When("^I click on  \"([^\"]*)\" inside \"([^\"]*)\" in side bar sub menu$")
	public void clickSideBarSubMenu(String subTabName, String mainTabName) {
		grantorHomePage.clickAccordianSubHeader(mainTabName, subTabName);
	}

	@Then("^I see changed label as \"([^\"]*)\" inside \"([^\"]*)\" in side bar sub menu$")
	public void assertRenameSubHeaderContentName(String subTabName, String mainTabName) {
		grantorHomePage.assertnewSubHeaderContentLabel(subTabName, mainTabName);
	}

	@Then("^i see \"([^\"]*)\" shown at number \"([^\"]*)\" in sideBar$")
	public void assertSequenceOfAccordianSideBarHeader(String headerName, String sequenceNumber) {
		grantorHomePage.assertSideBarHeaderSequence(headerName, Integer.parseInt(sequenceNumber));
	}

	@Then("^I see \"([^\"]*)\" as disabled from sidebar$")
	public void assertRemovalOfSideBarHeader(String headerName) {
		grantorHomePage.assertRemovalOfSideBarHeader(headerName);
	}

	@Then("^i see \"([^\"]*)\" shown at number \"([^\"]*)\" inside \"([^\"]*)\"$")
	public void assertSequenceOfAccordianHeader(String accordianHeaderName, String number, String headerName) {
		grantorHomePage.assertAccordianHeaderSequence(accordianHeaderName, Integer.parseInt(number), headerName);
	}

	@Then("^I see changed label as \"([^\"]*)\" inside \"([^\"]*)\" in side accordion header menu$")
	public void assertRenameAccordionHeaderLabelName(String subTabName, String mainTabName) {
		grantorHomePage.assertnewAccordionHeaderLabel(subTabName, mainTabName);
	}

}
