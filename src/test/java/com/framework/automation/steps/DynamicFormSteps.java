package com.framework.automation.steps;
import com.framework.automation.pageobject.DynamicFormPage;
import com.testingblaze.actionsfactory.api.ByUsing;
import com.testingblaze.register.I;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class DynamicFormSteps {
    DynamicFormPage dynamicFormPage;

    public DynamicFormSteps() {
        dynamicFormPage = new DynamicFormPage();
    }

    @When("^I hovering mouse on help text icon at \"([^\"]*)\" inside dynamic form$")
    public void hoveringMouseOnHelpTextIconInsideDynamicForm(String sectionName) {
        dynamicFormPage.getHelpTextAtSectionInsideDynamicForm(sectionName);
    }

    @When("I click on {string} button in right footer")
    public void clickButtonOnRightFooter(String footerButtonName) {
        dynamicFormPage.getButtonsOnDynamicform(footerButtonName);
    }

    @When("I click on {string} action at the {string} modal")
    public void iClickOnActionAtTheDynamicFormModal(String actionName, String modalOverviewHeader) {
        dynamicFormPage.performClickOnModalActionButtonAtDynamicForm(actionName, modalOverviewHeader);
    }

    @Then("^I (see|do not see|softly see|softly do not see) \"([^\"]*)\" inside \"([^\"]*)\" at dynamic form$")
    public void iSeeInsideAtDynamicForm(String usage, String fieldName, String sectionName) {
        dynamicFormPage.assertFieldsDisplayedInExpectedSectionAtDynamicForm(usage, fieldName, sectionName);
    }

    @Then("^I (see|softly see) section as \"([^\"]*)\" inside dynamic form layout$")
    public void assertSectionDisplayedAInsideDynamicForm(String usage, String sectionName) {
        dynamicFormPage.assertSectionDisplayedInsideDynamicFormLayout(usage, sectionName);
    }

    @Then("I see the instruction text is as follows :")
    public void verifyCompleteInstructionText(String expectedInstructionText) {
        dynamicFormPage.assertTextMatches(expectedInstructionText);
    }

    @Then("^I see section column is \"([^\"]*)\" aligned$")
    public void iSeeSectionColumnIsAligned(String columnAlignment) {
        dynamicFormPage.assertAlignmentOfSectionColumn(columnAlignment);
    }

    @Then("^I see message \"([^\"]*)\" below \"([^\"]*)\" field in form detail$")
    public void iSeeTheMessageInTheFormDetails(String message, String fieldName) {
        dynamicFormPage.assertFieldErrorMessageInTheFormDetails(message, fieldName);
    }

    @Then("^I (see|softly do not see) comment box displayed as \"([^\"]*)\"$")
    public void iSeeCommentBoxDisplayedAs(String usage, String commentBoxType) {
        dynamicFormPage.assertCommentBoxDisplayTypeAtDynamicForms(usage, commentBoxType);
    }

    @Then("^I (see|softly see) \"([^\"]*)\" field inside \"([^\"]*)\" is (hidden|disabled)$")
    public void iSeeFieldInsideIs(String usage,String fieldName, String sectionName, String displayType) {
        dynamicFormPage.assertFieldInsideDynamicForm(usage, fieldName, sectionName, displayType.equalsIgnoreCase("hidden"));
    }

    @Then("^I see \"([^\"]*)\" field displayed with blank value at dynamic form$")
    public void iSeeFieldDisplayedWithBlankValueAtDynamicForm(String fieldName) {
        dynamicFormPage.assertFieldDisplayedWithBlankValueAtDynamicForm(fieldName);
    }

    @Then("I see {string} field is shown at position {string} in {string}")
    public void iSeeFieldIsShownAtPositionIn(String fieldName, String fieldPosition, String sectionName) {
        dynamicFormPage.assertSortOrderOfFieldAtDynamicFormLayout(fieldName,Integer.parseInt(fieldPosition), sectionName );
    }

    @Then("^I (see|softly see) radio button as \"([^\"]*)\" at \"([^\"]*)\" field in form layout$")
    public void iSeeRadioButtonAsAtFieldOnFormLayout(String usage, String radioButtonName, String fieldName) {
        dynamicFormPage.assertRadioButtonInFormLayout(usage, radioButtonName, fieldName);
    }

    @Then("^I see \"([^\"]*)\" action is not displayed at the \"([^\"]*)\" modal$")
    public void iSeeActionIsNotDisplayedAtTheModal(String actionName, String modalOverviewHeader) {
        dynamicFormPage.assertTopRightActionsAtModalWindowWithOverviewHeader(actionName,modalOverviewHeader);
    }

    @And("I click on {string} icon in flex table for record number {string}")
    public void iClickOnIconInFlexTableForRecordNumber(String iconButton, String index) {
        if(iconButton.equalsIgnoreCase("View")){
            I.amPerforming().click().on(ByUsing.xpath("(//tr[@ng-repeat='row in tableData']/td/following::td[@class='actionColumn pdf-wrap-td ng-scope']/div/span//i[@class='fa fa-eye'])["+index+"]"));
        }else if (iconButton.equalsIgnoreCase("Edit")){
            I.amPerforming().click().on(ByUsing.xpath("(//tr[@ng-repeat='row in tableData']/td/following::td[@class='actionColumn pdf-wrap-td ng-scope']/div/span//i[@class='fa fa-pencil'])["+index+"]"));
        }
    }

    @Then("I can see the following message in table :")
    public void iCanSeeTheFollowingMessageInTable(String text) {
        I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@class='panel-title custom-title ng-scope']/following::div/span[@class='sessionClass' and contains(text(),'" +text+ "')] | //div[@class='container-fluid ng-scope']//span[text()='"+ text +"']"));
       // I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@class='container-fluid ng-scope']//span[text()='Table has been reset.']"));

    }
}
