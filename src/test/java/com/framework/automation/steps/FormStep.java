package com.framework.automation.steps;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.pageobject.FormPage;

import cucumber.api.java.en.Then;

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
}
