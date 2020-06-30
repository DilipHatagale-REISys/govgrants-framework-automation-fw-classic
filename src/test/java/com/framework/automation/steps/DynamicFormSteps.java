package com.framework.automation.steps;

import com.framework.automation.pageobject.DynamicFormPage;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class DynamicFormSteps {
    DynamicFormPage dynamicFormPage;

    public DynamicFormSteps() {
        dynamicFormPage = new DynamicFormPage();
    }

    @When("^I enter value as \"([^\"]*)\" into \"([^\"]*)\" field at dynamic forms layout$")
    public void enterValueIntoFieldAtDynamicFormsLayout(String enterValue, String fieldName) {
        dynamicFormPage.enterValueIntoFieldAtDynamicForms(enterValue, fieldName);
    }

    @Then("^I see for \"([^\"]*)\" field value is \"([^\"]*)\" inside dynamic form$")
    public void fieldValueInsideDynamicForm(String fieldName, String fieldValue) {
        dynamicFormPage.assertFieldValueInsideDynamicForm(fieldName, fieldValue);
    }
}
