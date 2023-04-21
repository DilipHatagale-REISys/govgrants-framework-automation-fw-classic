package com.framework.automation.pageobject;

import com.framework.automation.projectmanager.GovGrantsManager;
import com.testingblaze.controller.TestingBlazeGlobal;
import com.testingblaze.objects.Elements;
import com.testingblaze.register.I;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.util.List;

public class DynamicFormPage extends GovGrantsManager {

    private final By formInstructionText;

    public DynamicFormPage() {
        formInstructionText = By.cssSelector("div.article>div[style='display: inline;']");
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
     * click on any button on right footer inside dynamic form etc.
     *
     * @param footerButtonName
     * @author - ashwini.mahore
     */
    public void getButtonsOnDynamicform(String footerButtonName) {
        By getAnyBottomRightButton = By.xpath("//*[contains(@class,'panel-footer')]//*[(local-name()='a' or local-name()='button' or local-name()='input') and not(contains(@class,'hidden')) and (@title='" + footerButtonName + "' or text()='" + footerButtonName + "' or @value='" + footerButtonName + "')]");
        I.amPerforming().click().on(getAnyBottomRightButton);
    }

    /**
     * click on any button on right header inside modal window with overview header at dynamic form etc.
     *
     * @param actionName
     * @param modalOverviewHeader
     * @author - ashwini.mahore
     */
    public void performClickOnModalActionButtonAtDynamicForm(String actionName, String modalOverviewHeader) {
        By getToRightButtonAtModalWithOverviewHeader = By.xpath("//b[text()='" + modalOverviewHeader + "']/ancestor::div//*[@title='" + actionName + "']");
        I.amPerforming().click().on(getToRightButtonAtModalWithOverviewHeader);
    }

    /**
     * assert true if field is displayed in expected section at dynamic form layout
     *
     * @param fieldName
     * @param sectionName
     */
    public void assertFieldsDisplayedInExpectedSectionAtDynamicForm(String usage, String fieldName, String sectionName) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isFieldDisplayedInExpectedSectionAtDynamicForm(fieldName, sectionName,false));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isFieldDisplayedInExpectedSectionAtDynamicForm(fieldName, sectionName,true));
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isFieldDisplayedInExpectedSectionAtDynamicForm(fieldName, sectionName,false)).isTrue();
        } else if (usage.equalsIgnoreCase("softly do not see")) {
            I.amPerforming().assertionsTo().assertThat(isFieldDisplayedInExpectedSectionAtDynamicForm(fieldName, sectionName,true)).isFalse();
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

    public void assertElementIsDisplayedInsideDynamicFormLayout(String usage, String linkName) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isElementDisplayedInsideDynamicFormLayout(linkName));
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isElementDisplayedInsideDynamicFormLayout(linkName)).isTrue();
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
            I.amPerforming().assertionsTo().assertThat(isFieldInsideDynamicFormDisplayed(fieldName, sectionName, isHidden)).isTrue();
        }
    }

    /**
     * assert true if field displayed with blank value inside dynamic form layout
     *
     * @param fieldName
     */
    public void assertFieldDisplayedWithBlankValueAtDynamicForm(String fieldName) {
        Assert.assertTrue(isFieldDisplayedWithBlankValue(fieldName));
    }

    /**
     * assert true if field displayed at expected position inside dynamic form layout
     *
     * @param fieldName
     * @param fieldPosition
     * @param sectionName
     */
    public void assertSortOrderOfFieldAtDynamicFormLayout(String fieldName, int fieldPosition, String sectionName) {
        Assert.assertTrue(isFieldDisplayedAtExpectedPositionInFormLayout(fieldName, fieldPosition, sectionName));
    }

    /**
     * assert true if radio button options displayed at expected field inside dynamic form layout
     *
     * @param fieldName
     * @param radioButtonName
     * @author - ashwini.mahore
     */
    public void assertRadioButtonInFormLayout(String usage, String radioButtonName, String fieldName) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isRadioButtonDisplayedInFormLayout(radioButtonName, fieldName));
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isRadioButtonDisplayedInFormLayout(radioButtonName, fieldName)).isTrue();
        }
    }

    /**
     * get list of fields inside section at dynamic form layout like Section 1 etc
     *
     * @param sectionName
     */
    public List<Elements> getListOfFieldsInsideDynamicFormLayout(String sectionName) {
        return I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//h3//a[contains(@title,'"+sectionName+"')]/ancestor::div[2]/following-sibling::div//*[contains(@class,'textFieldWrap')]//dt//span"));
    }

    /**
     * assert true if action button with overview header is not displayed inside dynamic form modal like Menu
     *
     * @param actionName
     * @param modalOverviewHeader
     * @author - ashwini.mahore
     */
    public void assertTopRightActionsAtModalWindowWithOverviewHeader(String actionName, String modalOverviewHeader) {
        Assert.assertTrue(isTopRightActionsDisplayedAtModalWindowWithOverviewHeader(actionName, modalOverviewHeader));
    }

    /*********
     * "Local Methods with complete functionality - private"
     *****************/

    /**
     * assert true if field is displayed in expected section at dynamic form layout
     *
     * @param fieldName
     * @param sectionName
     */
    private boolean isFieldDisplayedInExpectedSectionAtDynamicForm(String fieldName, String sectionName, boolean isDoNotSee) {
        TestingBlazeGlobal.setVariable("highlightElements", "off");
        boolean flag = false;
        try {
            if (isDoNotSee){
                if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//a[@title='Section: " + sectionName + "']/../../../following-sibling::div//span[text()='" + fieldName + "']"),false)) {
                    return true;
                }
            } else {

                if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//a[@title='Section: " + sectionName + "']/../../../following-sibling::div//span[text()='" + fieldName + "']"))) {
                    return true;
                }
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
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
     * assert true if expected section is displayed at dynamic form layout
     *
     * @param linkName
     */
    private boolean isElementDisplayedInsideDynamicFormLayout(String linkName) {
        boolean flag = false;
        By getSection = By.xpath("//*[text()='" + linkName + "']");
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
                && I.amPerforming().checkToSee().isDisplayed(By.xpath("//div[@class='formUIWrap']//div[contains(@class,'col-md-6')]"))) {
            return true;
        } else if (columnAlignment.equalsIgnoreCase("horizontally")
                && I.amPerforming().checkToSee().isDisplayed(By.xpath("//div[@class='formUIWrap']//div[contains(@class,'col-md-4')] | //div[@class='formUIWrap']//div[contains(@class,'row flexWrap formRowWrap')]"))) {
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
            if (commentBoxType.equalsIgnoreCase("Long Text Area") && I.amPerforming().checkToSee().isEnabled(By.xpath("//textarea[contains(@id,'LongTextArea')]"))) {
                return true;
            } else if (commentBoxType.equalsIgnoreCase("Rich Text Area") && I.amPerforming().checkToSee().isEnabled(By.xpath("//textarea[contains(@id,'RichTextArea')]"))) {
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
        TestingBlazeGlobal.setVariable("highlightElements", "off");
        WebElement getDynamicFormFields = I.amPerforming().getElementReference().of(By.xpath("//a[@title='Section: " + sectionName + "']/ancestor::div[@class='panel-heading']/following-sibling::div//span[text()='" + fieldName + "']/ancestor::div[contains(@class,'formRowWrap')]"));
        if (isHidden && getDynamicFormFields.getAttribute("style").equalsIgnoreCase("display: none;")) {
            return true;
        } else if (getDynamicFormFields.getAttribute("class").contains("disabledbutton")) {
            return true;
        }
        return flag;
    }

    /**
     * assert true if field displayed with blank value inside dynamic form layout
     *
     * @param fieldName
     */
    private boolean isFieldDisplayedWithBlankValue(String fieldName) {
        boolean flag = false;
        if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//span[text()='" + fieldName + "']/../following-sibling::dd[not(descendant::span)] |" +
                "//span[text()='" + fieldName + "']/../following-sibling::dd//textarea[not(text())]"))) {
            return true;
        }
        return flag;
    }

    /**
     * assert true if field displayed at expected position inside dynamic form layout
     *
     * @param fieldName
     * @param fieldPosition
     * @param sectionName
     */
    private boolean isFieldDisplayedAtExpectedPositionInFormLayout(String fieldName, int fieldPosition, String sectionName) {
        boolean flag = false;
        if (getListOfFieldsInsideDynamicFormLayout(sectionName).get(fieldPosition).getText().contains(fieldName)) {
            return true;
        }
        return flag;
    }

    /**
     * assert true if radio button options displayed at expected field inside dynamic form layout
     *
     * @param fieldName
     * @param radioButtonName
     * @author - ashwini.mahore
     */
    private boolean isRadioButtonDisplayedInFormLayout(String radioButtonName, String fieldName) {
        boolean flag = false;
        WebElement getRadioButtonsAtFields = I.amPerforming().getElementReference().of(By.xpath("//span[text()='Radio']/../following-sibling::dd//td//label[" + I.amPerforming().sanityOfXpathTo().equals("text()", radioButtonName) + "]"));
        if (getRadioButtonsAtFields.isDisplayed()) {
            return true;
        }
        return flag;
    }

    /**
     * assert true if action button with overview header is not displayed inside dynamic form modal like Menu
     *
     * @param actionName
     * @param modalOverviewHeader
     * @author - ashwini.mahore
     */
    private boolean isTopRightActionsDisplayedAtModalWindowWithOverviewHeader(String actionName, String modalOverviewHeader) {
        TestingBlazeGlobal.setVariable("highlightElements", "off");
        boolean flag = false;
        WebElement getTopRightActions = I.amPerforming().getElementReference().of(By.xpath("//b[text()='" + modalOverviewHeader + "']/ancestor::div//*[@title='" + actionName + "']/ancestor::div[@class='dropdown']"));
        if (getTopRightActions.getAttribute("style").contains("display: none")) {
            return true;
        }
        return flag;
    }

    public boolean assertModalWindowOpenOrNot(String usage, String modalTitle) {
        boolean flag = false;
        try {
            if (usage.equalsIgnoreCase("do not see") && I.amPerforming().checkToSee().isDisplayed(By.xpath("//p[text()='" + modalTitle + "']/ancestor::div[@class='modal-content']"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }
}
