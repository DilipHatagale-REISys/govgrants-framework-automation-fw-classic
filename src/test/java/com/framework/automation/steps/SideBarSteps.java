package com.framework.automation.steps;

import com.framework.automation.pageobject.SideBarPage;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class SideBarSteps {
	SideBarPage sidebarPage;

	public SideBarSteps() {
		sidebarPage = new SideBarPage();
	}

	@When("^I click on  \"([^\"]*)\" inside \"([^\"]*)\" in side bar sub menu$")
	public void clickSideBarSubMenu(String subTabName, String mainTabName) {
		sidebarPage.clickAccordianSubHeader(mainTabName, subTabName);
	}

	@Then("^i see \"([^\"]*)\" shown at number \"([^\"]*)\" in sideBar$")
	public void assertSequenceOfAccordianSideBarHeader(String headerName, String sequenceNumber) {
		sidebarPage.assertSideBarHeaderSequence(headerName, Integer.parseInt(sequenceNumber));
	}

	@Then("^I see \"([^\"]*)\" as disabled from sidebar$")
	public void assertRemovalOfSideBarHeader(String headerName) {
		sidebarPage.assertRemovalOfSideBarHeader(headerName);
	}

	@Then("^I see changed label as \"([^\"]*)\" inside \"([^\"]*)\" in side bar sub menu$")
	public void assertRenameSubHeaderContentName(String subTabName, String mainTabName) {
		sidebarPage.assertnewSubHeaderContentLabel(subTabName, mainTabName);
	}

	@Then("^i see \"([^\"]*)\" shown at number \"([^\"]*)\" inside \"([^\"]*)\"$")
	public void assertSequenceOfAccordianHeader(String accordianHeaderName, String number, String headerName) {
		sidebarPage.assertAccordianHeaderSequence(accordianHeaderName, Integer.parseInt(number), headerName);
	}

	@Then("^I see changed label as \"([^\"]*)\" inside \"([^\"]*)\" in side accordion header menu$")
	public void assertRenameAccordionHeaderLabelName(String subTabName, String mainTabName) {
		sidebarPage.assertnewAccordionHeaderLabel(subTabName, mainTabName);
	}

	@Then("^I see \"([^\"]*)\" shown at number \"([^\"]*)\" inside \"([^\"]*)\"$")
	public void assertSequenceOfAccordianContent(String accordianHeaderName, String number, String headerName) {
		sidebarPage.assertAccordianContentSequence(accordianHeaderName, Integer.parseInt(number), headerName);
	}

	@Then("^I see \"([^\"]*)\" in new tab$")
	public void assertNewTabOpensForAccordionContent(String pageTitle) {
		sidebarPage.assertAccordionContentWithNewTab(pageTitle);
	}

	@Then("^I see \"([^\"]*)\" inside \"([^\"]*)\" is displayed$")
	public void assertSubHeaderContentNameDisplayed(String sideBarCategory, String accordianSubHeaderDetail) {
		sidebarPage.assertSubHeaderContentDisplayed(sideBarCategory, accordianSubHeaderDetail);
	}
	
	@Then("^I see \"([^\"]*)\" inside \"([^\"]*)\" is not displayed$")
	public void assertSubHeaderContentNameNotDisplayed(String sideBarCategory, String accordianSubHeaderDetail) {
		sidebarPage.assertSubHeaderContentNotDisplayed(sideBarCategory, accordianSubHeaderDetail);
	}

	@Then("^I see sidebar sub menu has light grey background colour$")
	public void assertSidebarSubMenuHasBackgroundColour() {
		sidebarPage.asserSidebarBackgroundColor();
	}

	@Then("^I see sidebar scroll has blue colour$")
	public void assertSidebarScrollHasBlueColour() {
		sidebarPage.assertSidebarScrollHasBlueColour();
	}
}