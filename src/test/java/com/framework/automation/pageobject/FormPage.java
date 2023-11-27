package com.framework.automation.pageobject;

import com.framework.automation.projectmanager.GovGrantsManager;
import com.helperPackage.actionsfactory.api.ByUsing;
import com.helperPackage.register.I;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

public class FormPage extends GovGrantsManager {

    /******* "Variables and Locators" *****************/

    private final By businessFormSection, versionNumber;

    public FormPage() {
        businessFormSection = By.xpath(
                "//a//span[contains(text(),'Business Forms')]/ancestor::div[contains(@class,'panel panel-default ng-scope')]");
        versionNumber = By.xpath("//*[@class='editfooterBtnCls']/span[contains(@class,'spacer')]");
    }

    /******* "Key Methods with complete functionality - public" *****************/

    /**
     * assert business form not displayed inside attachment under application view
     * detail page
     */
    public void assertBusinessFormVisibility() {
        Assert.assertTrue(isBusinessFormSectionNotDisplayed());
    }

    /**
     * assert preview action item not displayed inside business form action for
     * internal user
     */
    public void assertPreviewActionVisibility(String Item) {
        Assert.assertTrue(isPreviewActionItemNotDisplayForInternalUser(Item));
    }

    /**
     * click table item inside based on Forms name/subject ,icon name
     *
     * @param programSubject
     * @param iconName
     */
    public void clickFormActionIconsForSpecificSubject(String programSubject, String iconName) {
        try {
            I.amPerforming().click().on(By.xpath("//td//span[@title='" + programSubject + "']/../../../td//a[@title='" + iconName + "']//i"));
        } catch (Exception e) {
            I.amPerforming().waitFor().makeThreadSleep(1000);
            I.amPerforming().click().withJavaScript(By
                    .xpath("//td//span[@title='" + programSubject + "']/../../../td//a[@title='" + iconName + "']//i"));
        }
    }

    /**
     * assert if changed label of button is displayed
     *
     * @param actionButtonName
     */
    public void assertChangedButtonLabelDisplayed(String actionButtonName) {
        Assert.assertTrue(isChangedButtonNameDisplayed(actionButtonName));
    }

    /**
     * assert Edit page layout action item not displayed inside business form action
     * for internal user
     */
    public void assertEditActionButtonVisibility(String Item) {
        Assert.assertTrue(isEditButtonDisplayed(Item));
    }

    /**
     * assert if version no is displayed inside form detail page under application
     *
     * @param versionNo
     */
    public void assertVersionNoInsideForm(String versionNo) {
        Assert.assertTrue(I.amPerforming().actionToGet().attribute(versionNumber, "innerText").trim()
                .equalsIgnoreCase(versionNo));
    }

    /**
     * assert true if radio checkboxes displayed inside fields at form layout
     *
     * @param fieldName
     * @author ashwini.mahore
     */
    public void assertRadioCheckboxesAtFieldsUnderForm(String fieldName) {
        Assert.assertTrue(isRadioCheckboxesDisplayedAtFieldsUnderForm(fieldName));
    }

    /**
     * assert true if dropdown with formname as selected is displayed inside form layout
     *
     * @param formName
     * @author ashwini.mahore
     */
    public void assertFormDisplayedInsideDropdownAtFormLayout(String usage, String formName) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(isFormDisplayedInsideDropdownAtFormLayout(formName)).isTrue();
            Assert.assertTrue(isFormDisplayedInsideDropdownAtFormLayout(formName));
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(isFormDisplayedInsideDropdownAtFormLayout(formName)).isFalse();
        }
    }

    /*********
     * "Local Methods with complete functionality - private"
     *****************/

    /**
     * validate if options are not displayed
     *
     * @return: true if it is not displayed
     */
    private boolean isBusinessFormSectionNotDisplayed() {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(businessFormSection)) {
                flag = false;
            }
        } catch (Exception e) {
            flag = true;
        }
        return flag;
    }

    /**
     * @param actionButtonName
     * @return true if changed button label is displayed
     */
    private boolean isChangedButtonNameDisplayed(String actionButtonName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(getAllActionItemInsideFormDetalPage(actionButtonName))) {
                flag = true;
            }
        } catch (Exception e) {

        }
        return flag;
    }

    /**
     * @param actionButtonName
     * @return true if Edit button is not displayed
     */
    private boolean isEditButtonDisplayed(String actionButtonName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(getAllActionItemInsideFormDetalPage(actionButtonName))) {
                flag = false;
            }
        } catch (Exception e) {
            flag = true;
        }
        return flag;
    }

    /**
     * validate if action item are not displayed
     *
     * @return: true if it is not displayed
     */
    private boolean isPreviewActionItemNotDisplayForInternalUser(String Item) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(getAllActionItemInsideBusinessForm(Item))) {
                flag = false;
            }
        } catch (Exception e) {
            flag = true;
        }
        return flag;
    }

    /**
     * check title of any action item
     *
     * @param Item
     * @return
     */
    private WebElement getAllActionItemInsideBusinessForm(String Item) {
        return I.amPerforming().getElementReference().of(By.xpath(("//div[@id='FormComponent']//div/table/tbody/tr//td//a[@title='" + Item + "']")));
    }

    /**
     * check all page layout action item inside form detail page
     *
     * @param actionButtonName
     * @return
     */
    private WebElement getAllActionItemInsideFormDetalPage(String actionButtonName) {
        return I.amPerforming().getElementReference().of(By.xpath(("//div[@id='headerButtonsPanel']//*[@title='" + actionButtonName + "']")));
    }

    /**
     * assert true if radio checkboxes displayed inside fields at form layout
     *
     * @param fieldName
     * @author ashwini.mahore
     */
    private boolean isRadioCheckboxesDisplayedAtFieldsUnderForm(String fieldName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//span[text()='" + fieldName + "']/ancestor::dt/following-sibling::dd//input[@type='radio' and @checked]"))) {
                flag = true;
            }
        } catch (Exception e) {
            flag = false;
        }
        return flag;
    }

    /**
     * assert true if dropdown with form-name as selected is displayed inside form layout
     *
     * @param formName
     * @author ashwini.mahore
     */
    private boolean isFormDisplayedInsideDropdownAtFormLayout(String formName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//option[text()='" + formName + "']/parent::select"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
            flag = false;
        }
        return flag;
    }

    public void assertFormDisplayed(String usage, String formId) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(isFormDisplayedOrNot(formId)).isTrue();
            Assert.assertTrue(isFormDisplayedOrNot(formId));
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(isFormDisplayedOrNot(formId)).isFalse();
        }
    }

    private boolean isFormDisplayedOrNot(String formId) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@class='textFieldWrapFlex']//div[@id='fieldName']//dd//span[(contains(text(),'" + formId + "'))]"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
            flag = false;
        }
        return flag;
    }

    public void assertConfirmMessageBoxDisplayed(String usage, String message) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(isMessageInBoxDisplayedOrNot(message)).isTrue();
            Assert.assertTrue(isMessageInBoxDisplayedOrNot(message));
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(isMessageInBoxDisplayedOrNot(message)).isFalse();
        }
    }

    private boolean isMessageInBoxDisplayedOrNot(String message) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[contains(@class,'modal-dialog')]//div[contains(@class, 'bootbox-body') and normalize-space(contains(text(),'" + message + "'))]"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
            flag = false;
        }
        return flag;
    }

    public void assertFormNameDisplayed(String usage, String formName) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(isFormNameDisplayedOrNot(formName)).isTrue();
            Assert.assertTrue(isFormNameDisplayedOrNot(formName));
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(isFormNameDisplayedOrNot(formName)).isFalse();
        }
    }

    private boolean isFormNameDisplayedOrNot(String formName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@class='textFieldWrapFlex']//dd//span[(contains(text(),'" + formName + "'))]"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
            flag = false;
        }
        return flag;
    }

    public void assertNameandSubmiteedOn(String usage, String name) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(isFormNameandSubmittedOn(name)).isTrue();
            Assert.assertTrue(isFormNameandSubmittedOn(name));
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(isFormNameandSubmittedOn(name)).isFalse();
        }
    }

    private boolean isFormNameandSubmittedOn(String name) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@class='textFieldWrapFlex']//dd//span[(contains(text(),'" + name + "'))]"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
            flag = false;
        }
        return flag;
    }
}