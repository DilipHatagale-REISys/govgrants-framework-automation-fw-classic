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

    /**
     * assert true if alignment of section column displayed as expected
     *
     * @param columnAlignment
     */
    public void assertAlignmentOfSectionColumn(String columnAlignment) {
        I.amPerforming().assertionsTo().assertThat(isAlignmentOfSectionColumnDisplayedAsExpected(columnAlignment));
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
}
