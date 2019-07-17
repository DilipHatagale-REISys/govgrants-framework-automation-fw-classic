package com.framework.automation.steps;

import com.automation.rei.handlers.GovGrantsHandler;
import com.framework.automation.pageobject.FormPage;
import io.cucumber.java.en.*;
import eyethink.automation.bots.controller.Controller;
import eyethink.automation.bots.controller.CoreHandlers;

public class FormStep {
	FormPage formPage;

	public FormStep(Controller controller, CoreHandlers handler, GovGrantsHandler govgrants) {
		formPage = new FormPage(controller, handler, govgrants);
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

	@Then("^I see \"([^\"]*)\" of action item inside form page layout is not displayed$")
	public void assertEditActionButtonAtFormDetailPage(String actionButtonName) {
		formPage.assertEditActionButtonVisibility(actionButtonName);
	}

	@Then("^I see \"([^\"]*)\" inside Form Version$")
	public void assertVersionNoAtFormDetailPage(String versionNo) {
		formPage.assertVersionNoInsideForm(versionNo);
	}
}