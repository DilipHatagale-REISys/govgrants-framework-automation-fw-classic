package com.framework.automation.pageobject;

import com.framework.automation.projectmanager.GovGrantsManager;
import com.testingblaze.register.I;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

public class DynamicFormPage extends GovGrantsManager {

private final By formInstructionText;

    public DynamicFormPage() {
        formInstructionText = By.cssSelector("div.article>div");
    }
    /******* "Key Methods with complete functionality - public" *****************/

    /**
     * enter values in the fields at dynamic form layout
     *
     * @param enterValue
     * @param fieldName
     * @param fieldType
     */
    public void enterValueIntoAllFieldTypeAtDynamicForms(String enterValue, String fieldName, String fieldType) {
        switch (fieldType.toUpperCase()) {
            case "TEXT":
                By getField = By.xpath("//div[@class='formUIWrap']//span[text()='" + fieldName + "']/../following-sibling::dd//textarea");
                I.amPerforming().textInput().toClear(getField);
                I.amPerforming().textInput().in(getField, enterValue);
                break;

            case "INTEGER":
                By getIntegerField = By.xpath("//div[@class='formUIWrap']//span[text()='" + fieldName + "']/../following-sibling::dd//input");
                I.amPerforming().textInput().toClear(getIntegerField);
                I.amPerforming().textInput().in(getIntegerField, enterValue);
                break;

            case "CHECKBOX":
                WebElement getCheckboxField = I.amPerforming().getElementReference().of(By.xpath("//div[@class='formUIWrap']//span[text()='" + fieldName + "']/../following-sibling::dd//input"));
                if (enterValue.equalsIgnoreCase("checked") && !getCheckboxField.isSelected()
                        || enterValue.equalsIgnoreCase("unchecked") && getCheckboxField.isSelected()) {
                    I.amPerforming().click().on(getCheckboxField);
                }
                break;

            case "RADIO":
                By getRadioButton = By.xpath("//div[@class='formUIWrap']//span[text()='" + fieldName + "']/../following-sibling::dd//input[@value='" + enterValue + "']");
                I.amPerforming().click().on(getRadioButton);
                break;

            case "PICKLIST":
                By getPicklist = By.xpath("//div[@class='formUIWrap']//span[text()='" + fieldName + "']/../following-sibling::dd//select");
                I.amPerforming().dropDownSelection().from(I.amPerforming().getElementReference().of(getPicklist)).selectByVisibleText(enterValue);
                break;

            case "RICH TEXT AREA":
                By getRichTextArea = By.xpath("//html/body");
                WebElement getIFrame = I.amPerforming().getElementReference().of(By.xpath("//div[@class='formUIWrap']//span[text()='" + fieldName + "']/../following-sibling::dd//iframe"));
                I.amPerforming().switchTo().frame(getIFrame);
                I.amPerforming().textInput().toClear(getRichTextArea);
                I.amPerforming().textInput().in(getRichTextArea, enterValue);
                break;
        }
    }

    /**
     * click on view more/view less button at page instruction section inside dynamic form layout
     *
     * @param buttonName
     */
    public void clickOnButtonAtPageInstruction(String buttonName) {
        By getButton = By.xpath("//div[@class='panel-body']//*[text()='view more']");
        I.amPerforming().click().on(getButton);
    }

    /**
     * assert true if expected value is displayed in respective field at dynamic form layout
     *
     * @param fieldName
     * @param fieldValue
     */
    public void assertFieldValueInsideDynamicForm(String fieldName, String fieldValue) {
        Assert.assertTrue(isFieldValueDisplayedInsideDynamicForm(fieldName, fieldValue));
    }

    /**
     * assert true if field is displayed in expected section at dynamic form layout
     *
     * @param fieldName
     * @param sectionName
     */
    public void assertFieldsDisplayedInExpectedSectionAtDynamicForm(String fieldName, String sectionName) {
        Assert.assertTrue(isFieldDisplayedInExpectedSectionAtDynamicForm(fieldName, sectionName));
    }

    /**
     * assert true if expected section displayed inside dynamic form layout
     *
     * @param sectionName
     */
    public void assertSectionDisplayedInsideDynamicFormLayout(String sectionName) {
        Assert.assertTrue(isSectionDisplayedInsideDynamicFormLayout(sectionName));
    }

    /**
     * assert true if expected instruction text is displayed
     *
     * @param expectedInstructionText
     */
    public void assertTextMatches(String expectedInstructionText) {
        I.amPerforming().assertionsTo().assertThat(I.amPerforming().actionToGet().text(formInstructionText))
                .isEqualToNormalizingWhitespace(expectedInstructionText);
    }

    /*********
     * "Local Methods with complete functionality - private"
     *****************/

    /**
     * assert true if expected value is displayed in respective field at dynamic form layout
     *
     * @param fieldName
     * @param fieldValue
     */
    private boolean isFieldValueDisplayedInsideDynamicForm(String fieldName, String fieldValue) {
        boolean flag = false;
        By getFieldValue = By.xpath("//span[text()='" + fieldName + "']/../following-sibling::dd//span[text()='" + fieldValue + "']" +
                " | //span[text()='" + fieldName + "']/../following-sibling::dd//span//img[@alt='" + fieldValue + "']");
        if (I.amPerforming().checkToSee().isDisplayed(getFieldValue)) {
            return true;
        }
        return flag;
    }

    /**
     * assert true if field is displayed in expected section at dynamic form layout
     *
     * @param fieldName
     * @param sectionName
     */
    private boolean isFieldDisplayedInExpectedSectionAtDynamicForm(String fieldName, String sectionName) {
        boolean flag = false;
        By getFieldValue = By.xpath("//a[@title='Section: " + sectionName + "']/../../../following-sibling::div//span[text()='" + fieldName + "']");
        if (I.amPerforming().checkToSee().isDisplayed(getFieldValue)) {
            return true;
        }
        return flag;
    }


    /**
     * assert true if expected section is displayed at dynamic form layout
     *
     * @param sectionName
     */
    private boolean isSectionDisplayedInsideDynamicFormLayout(String sectionName) {
        boolean flag = false;
        By getSection = By.xpath("//a[@title='Section: " + sectionName + "']");
        if (I.amPerforming().checkToSee().isDisplayed(getSection)) {
            return true;
        }
        return flag;
    }
}
