package com.framework.automation.steps;

import com.framework.automation.pageobject.DynamicFormPage;
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

    @Then("^I see for \"([^\"]*)\" field value is \"([^\"]*)\" inside dynamic form$")
    public void fieldValueInsideDynamicForm(String fieldName, String fieldValue) {
        dynamicFormPage.assertFieldValueInsideDynamicForm(fieldName, fieldValue);
    }

    @Then("^I see \"([^\"]*)\" inside \"([^\"]*)\" at dynamic form$")
    public void iSeeInsideAtDynamicForm(String fieldName, String sectionName) {
        dynamicFormPage.assertFieldsDisplayedInExpectedSectionAtDynamicForm(fieldName, sectionName);
    }
}
