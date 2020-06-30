package com.framework.automation.pageobject;

import com.framework.automation.projectmanager.GovGrantsManager;
import com.testingblaze.register.I;
import org.junit.Assert;
import org.openqa.selenium.By;

public class DynamicFormPage extends GovGrantsManager {


    /******* "Key Methods with complete functionality - public" *****************/

    /**
     * enter values in the fields at dynamic form layout
     *
     * @param enterValue
     * @param fieldName
     */
    public void enterValueIntoFieldAtDynamicForms(String enterValue, String fieldName) {
        By getField = By.xpath("//div[@class='formUIWrap']//span[text()='" + fieldName + "']/../following-sibling::dd//textarea " +
                "| //div[@class='formUIWrap']//span[text()='" + fieldName + "']/../following-sibling::dd//input");
        I.amPerforming().textInput().toClear(getField);
        I.amPerforming().textInput().in(getField, enterValue);
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
        By getFieldValue = By.xpath("//span[text()='" + fieldName + "']/../following-sibling::dd//span[text()='" + fieldValue + "']");
        if (I.amPerforming().checkToSee().isDisplayed(getFieldValue)) {
            return true;
        }
        return flag;
    }
}
