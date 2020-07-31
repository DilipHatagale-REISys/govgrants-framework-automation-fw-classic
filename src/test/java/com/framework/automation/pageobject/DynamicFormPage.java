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
     * click on help text at section 1 inside dynamic form layout
     *
     * @param sectionName
     */
    public void getHelpTextAtSectionInsideDynamicForm(String sectionName) {
        I.amPerforming().scroll().toMoveToElement(By.xpath("//h3//a[@title='Section: " + sectionName + "']/..//span[contains(@class,'fa-info')]"));
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
    public void assertFieldsDisplayedInExpectedSectionAtDynamicForm(String usage, String fieldName, String sectionName) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isFieldDisplayedInExpectedSectionAtDynamicForm(fieldName, sectionName));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isFieldDisplayedInExpectedSectionAtDynamicForm(fieldName, sectionName));
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isFieldDisplayedInExpectedSectionAtDynamicForm(fieldName, sectionName)).isTrue();
        } else if (usage.equalsIgnoreCase("softly do not see")) {
            I.amPerforming().assertionsTo().assertThat(isFieldDisplayedInExpectedSectionAtDynamicForm(fieldName, sectionName)).isFalse();
        }
    }

    /**
     * assert true if expected section displayed inside dynamic form layout
     *
     * @param sectionName
     */
    public void assertSectionDisplayedInsideDynamicFormLayout(String usage, String sectionName) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isSectionDisplayedInsideDynamicFormLayout(sectionName));
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isSectionDisplayedInsideDynamicFormLayout(sectionName)).isTrue();
        }
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

    /**
     * assert true if alignment of section column displayed as expected
     *
     * @param columnAlignment
     */
    public void assertAlignmentOfSectionColumn(String columnAlignment) {
        I.amPerforming().assertionsTo().assertThat(isAlignmentOfSectionColumnDisplayedAsExpected(columnAlignment));
    }

    /**
     * assert true if alert message displayed below fields inside dynamic form layout by entering invalid data
     *
     * @param message
     * @param fieldName
     */
    public void assertFieldErrorMessageInTheFormDetails(String message, String fieldName) {
        I.amPerforming().assertionsTo().assertThat(isFieldErrorMessageDisplayedInsideFormDetails(message, fieldName));
    }

    /**
     * assert true if comment box displayed as per expected type long text / rich text
     *
     * @param commentBoxType
     */
    public void assertCommentBoxDisplayTypeAtDynamicForms(String usage, String commentBoxType) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isCommentBoxDisplayInsideDynamicForms(commentBoxType));
        } else if (usage.equalsIgnoreCase("softly do not see")) {
            I.amPerforming().assertionsTo().assertThat(isCommentBoxDisplayInsideDynamicForms(commentBoxType)).isFalse();
        }
    }

    /**
     * assert true if fields are hidden or disabled inside section on dynamic form layout
     *
     * @param fieldName
     * @param sectionName
     * @param isHidden
     */
    public void assertFieldInsideDynamicForm(String usage, String fieldName, String sectionName, Boolean isHidden) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isFieldInsideDynamicFormDisplayed(fieldName, sectionName, isHidden));
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isFieldInsideDynamicFormDisplayed(fieldName, sectionName, isHidden)).isFalse();
        }
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

    /**
     * assert true if alignment of section column displayed as expected
     *
     * @param columnAlignment
     */
    private boolean isAlignmentOfSectionColumnDisplayedAsExpected(String columnAlignment) {
        boolean flag = false;
        if (columnAlignment.equalsIgnoreCase("vertically")
                && I.amPerforming().checkToSee().isDisplayed(By.xpath("//div[@class='formUIWrap']//div[contains(@class,'col-md-12')]"))) {
            return true;
        } else if (columnAlignment.equalsIgnoreCase("horizontally")
                && I.amPerforming().checkToSee().isDisplayed(By.xpath("//div[@class='formUIWrap']//div[contains(@class,'col-md-4')]"))) {
            return true;
        }
        return flag;
    }

    /**
     * assert true if alert message displayed below fields inside dynamic form layout by entering invalid data
     *
     * @param message
     * @param fieldName
     */
    private boolean isFieldErrorMessageDisplayedInsideFormDetails(String message, String fieldName) {
        boolean flag = false;
        if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//span[contains(text(),'" + fieldName + "')]/ancestor::dl//p[contains(@class,'errorCheck') and text()='" + message + "']"))) {
            return true;
        }
        return flag;
    }


    /**
     * assert true if comment box displayed as per expected type long text / rich text
     *
     * @param commentBoxType
     */
    private boolean isCommentBoxDisplayInsideDynamicForms(String commentBoxType) {
        boolean flag = false;
        try {
            if (commentBoxType.equalsIgnoreCase("Long Text Area") && I.amPerforming().checkToSee().isDisplayed(By.xpath("//textarea[contains(@id,'LongTextArea')]"))) {
                return true;
            } else if (commentBoxType.equalsIgnoreCase("Rich Text Area") && I.amPerforming().checkToSee().isDisplayed(By.xpath("//textarea[contains(@id,'RichTextArea')]"))) {
                return true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * assert true if fields are hidden or disabled inside section on dynamic form layout
     *
     * @param fieldName
     * @param sectionName
     * @param isHidden
     */
    private boolean isFieldInsideDynamicFormDisplayed(String fieldName, String sectionName, boolean isHidden) {
        boolean flag = false;
        WebElement getDynamicFormFields = I.amPerforming().getElementReference().of(By.xpath("//a[@title='Section: " + sectionName + "']/ancestor::div[@class='panel-heading']/following-sibling::div//span[text()='" + fieldName + "']/ancestor::div[contains(@class,'formRowWrap')]"));
        if (isHidden && getDynamicFormFields.getAttribute("Style").equalsIgnoreCase("display: none;")) {
            return true;
        } else if (getDynamicFormFields.getAttribute("class").contains("disabledbutton")) {
            return true;
        }
        return flag;
    }
}
