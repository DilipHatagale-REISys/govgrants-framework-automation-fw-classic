package com.framework.automation.steps;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.pageobject.FormPage;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class FormStep {
	FormPage formPage;

	public FormStep(Controller controller, Handlers handler) {
		formPage = new FormPage(controller, handler);
	}

	@Then("^I see Business Form section is not displayed$")
	public void assertBusinessFormSection() {
		formPage.assertBusinessFormVisibility();
	}

	@Then("^I see \"([^\"]*)\" action item is not displayed inside business form$")
	public void assertPreviewActionItem(String Item) {
		formPage.assertPreviewActionVisibility(Item);
	}

	@Then("^I do not see \"([^\"]*)\" on page \"([^\"]*)\" of \"([^\"]*)\" pdf file$")
	public void assertTExtNotDisplayed(String text, String pageNumber, String fileName) {
		formPage.assertTextNotDisplayedInPDF(text, Integer.parseInt(pageNumber), fileName);
	}

	@When("^I click on \"([^\"]*)\" icon of form \"([^\"]*)\" program in flex table$")
	public void clickAnyIconInFlexTable(String iconName, String programSubject) {
		formPage.clickFormActionIconsForSpecificSubject(programSubject, iconName);
	}

	@Then("^I see changed label as \"([^\"]*)\" of action item inside form page layout$")
	public void assertRenameSubHeaderContentName(String actionButtonName) {
		formPage.assertChangedButtonLabelDisplayed(actionButtonName);
	}
}
