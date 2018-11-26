package com.framework.automation.pageobject;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.testng.Assert;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.CoreHandlers;
import com.automation.rei.handlers.GovGrantsHandler;
import com.framework.automation.projectmanager.GovGrantsManager;

public class FormPage extends GovGrantsManager {

    /******* "Variables and Locators" *****************/

    private final By businessFormSection;

    public FormPage(Controller controller, CoreHandlers reiDriver, GovGrantsHandler govgrants) {
        super(controller, reiDriver, govgrants);

        businessFormSection = By.xpath(
                "//a//span[contains(text(),'Business Forms')]/ancestor::div[contains(@class,'panel panel-default ng-scope')]");
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
			reiDriver.WaitFor()
					.WaitForElementToBePresent(By.xpath(
							"//td//span[@title='" + programSubject + "']/../../../td//a[@title='" + iconName + "']//i"))
					.click();

		} catch (Exception e) {
			reiDriver.WaitFor().makeThreadSleep(1000);
			reiDriver.JavaScript().clickByJS(By
					.xpath("//td//span[@title='" + programSubject + "']/../../../td//a[@title='" + iconName + "']//i"));
		}
	}

	/**
	 * assert if changed label of button is displayed
	 * 
	 * @param phaseName
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

	/*********
	 * "Local Methods with complete functionality - private"
	 *****************/
	public void assertTextNotDisplayedInPDF(String text, int pageNumber, String fileName) {
		Assert.assertTrue(isTextNotDisplayedInFile(text, pageNumber, fileName));
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
			if (reiDriver.findMyElement().getElement(businessFormSection).isDisplayed()) {
				flag = false;
			}
		} catch (Exception e) {
			flag = true;
		}
		return flag;
	}

	/**
	 * 
	 * @param actionButtonName
	 * @return true if changed button label is displayed
	 */
	private boolean isChangedButtonNameDisplayed(String actionButtonName) {
		boolean flag = false;
		try {
			if (getAllActionItemInsideFormDetalPage(actionButtonName).isDisplayed()) {
				flag = true;
			}
		} catch (Exception e) {

		}
		return flag;
	}

	/**
	 * 
	 * @param actionButtonName
	 * @return true if Edit button is not displayed
	 */
	private boolean isEditButtonDisplayed(String actionButtonName) {
		boolean flag = false;
		try {
			if (getAllActionItemInsideFormDetalPage(actionButtonName).isDisplayed()) {
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
			if (getAllActionItemInsideBusinessForm(Item).isDisplayed()) {
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
	 * @param item
	 * @return
	 */
	private WebElement getAllActionItemInsideBusinessForm(String Item) {
		return reiDriver.WaitFor().WaitForElementToBePresent(
				By.xpath(("//div[@id='FormComponent']//div/table/tbody/tr//td//a[@title='" + Item + "']")));
	}

	private boolean isTextNotDisplayedInFile(String text, int pageNumber, String fileName) {
		boolean flag = true;
		if (readPDF(pageNumber, fileName).contains(text)) {
			flag = false;
		}
		return flag;
	}

	/**
	 * check all page layout action item inside form detail page
	 * 
	 * @param actionButtonName
	 * @return
	 */
	private WebElement getAllActionItemInsideFormDetalPage(String actionButtonName) {
		return reiDriver.WaitFor().WaitForElementToBePresent(
				By.xpath(("//div[@id='headerButtonsPanel']//*[@title='" + actionButtonName + "']")));
	}

}
