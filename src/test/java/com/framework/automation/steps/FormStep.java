package com.framework.automation.steps;

import com.framework.automation.pageobject.FormPage;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class FormStep {
    FormPage formPage;

    public FormStep() {
        this.formPage = new FormPage();
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

    @Then("I see radio buttons for {string} field inside form")
    public void iSeeCheckboxesForFieldInsideForm(String fieldName) {
        formPage.assertRadioCheckboxesAtFieldsUnderForm(fieldName);
    }

    @Then("^I (softly see|softly do not see) dropdown with selected value as \"([^\"]*)\" at form layout$")
    public void iSeeDropdownWithSelectedValueAsAtFormLayout(String usage, String formName) {
        formPage.assertFormDisplayedInsideDropdownAtFormLayout(usage, formName);
    }
}