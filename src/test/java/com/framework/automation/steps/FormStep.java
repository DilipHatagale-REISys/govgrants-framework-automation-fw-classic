package com.framework.automation.steps;

import com.framework.automation.pageobject.FormPage;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class FormStep {
	FormPage formPage;

	public FormStep() {
		this.formPage = new FormPage();
	}


	@When("I select {string} from dropdown at forms")
	public void iSelectFromDropdownAtForms(String options) {
		formPage.selectValueFromDropdownAtFormLayout(options);
	}

	@Then("^I see Business Form section is not displayed$")
	public void assertBusinessFormSection() {
		formPage.assertBusinessFormVisibility();
	}

	@Then("^I see \"([^\"]*)\" action item is not displayed inside business form$")
	public void assertPreviewActionItem(String Item) {
		formPage.assertPreviewActionVisibility(Item);
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