package com.framework.automation.steps;

import com.framework.automation.pageobject.DynamicFormPage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class DynamicFormSteps {
    DynamicFormPage dynamicFormPage;

    public DynamicFormSteps() {
        dynamicFormPage = new DynamicFormPage();
    }

    @When("^I enter value as \"([^\"]*)\" into field \"([^\"]*)\" of type \"([^\"]*)\" at dynamic forms layout$")
    public void enterValueIntoFieldAtDynamicFormsLayout(String enterValue, String fieldName ,String fieldType) {
        dynamicFormPage.enterValueIntoAllFieldTypeAtDynamicForms(enterValue, fieldName, fieldType);
    }

    @When("^I hovering mouse on help text icon at \"([^\"]*)\" inside dynamic form$")
    public void hoveringMouseOnHelpTextIconInsideDynamicForm(String sectionName) {
        dynamicFormPage.getHelpTextAtSectionInsideDynamicForm(sectionName);
    }

    @And("^I click on \"([^\"]*)\" button at page instruction$")
    public void clickOnButtonAtPageInstruction(String buttonName) {
        dynamicFormPage.clickOnButtonAtPageInstruction(buttonName);
    }

    @Then("^I see for \"([^\"]*)\" field value is \"([^\"]*)\" inside dynamic form$")
    public void fieldValueInsideDynamicForm(String fieldName, String fieldValue) {
        dynamicFormPage.assertFieldValueInsideDynamicForm(fieldName, fieldValue);
    }

    @Then("^I see \"([^\"]*)\" inside \"([^\"]*)\" at dynamic form$")
    public void iSeeInsideAtDynamicForm(String fieldName, String sectionName) {
        dynamicFormPage.assertFieldsDisplayedInExpectedSectionAtDynamicForm(fieldName, sectionName);
    }

    @Then("^I see section as \"([^\"]*)\" inside dynamic form layout$")
    public void assertSectionDisplayedAInsideDynamicForm(String sectionName) {
        dynamicFormPage.assertSectionDisplayedInsideDynamicFormLayout(sectionName);
    }

    @Then("I see the instruction text is as follows :")
    public void verifyCompleteInstructionText(String expectedInstructionText) {
        dynamicFormPage.assertTextMatches(expectedInstructionText);
    }
}
