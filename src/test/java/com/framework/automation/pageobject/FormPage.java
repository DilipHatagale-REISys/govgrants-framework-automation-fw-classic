package com.framework.automation.pageobject;

import com.framework.automation.projectmanager.GovGrantsManager;
import com.testingblaze.register.I;
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
     * perform click on dropdown at top right corner at form layout
      *
      * @param options
     */
    public void selectValueFromDropdownAtFormLayout(String options) {
        I.amPerforming().click().on(By.xpath("//select[contains(@aria-label,'Select Form')]//option[text()='"+options+"']"));
    }

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
}