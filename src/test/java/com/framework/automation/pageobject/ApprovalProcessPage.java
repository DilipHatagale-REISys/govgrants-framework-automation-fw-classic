package com.framework.automation.pageobject;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.testng.Assert;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.projectmanager.GovGrantsManager;

public class ApprovalProcessPage extends GovGrantsManager {
	/******* "Variables and Locators" *****************/

	private final By approvalDecisionPannel, approvalCommentTextBox;

	/**
	 * Constructor to handle dependency injection and framework library
	 */
	public ApprovalProcessPage(Controller controller, Handlers reiDriver) {
		super(controller, reiDriver);
		approvalDecisionPannel = By.cssSelector("div>span>input[name='myRadio']");
		approvalCommentTextBox = By.xpath("//div[@id='ApprovalDecisionComponent']//textarea");
	}

	/**
	 * click approval start play button
	 * 
	 * @param programSubject
	 * @param programType
	 */
	public void clickStartApprovalButton(String programSubject, String programType) {
		for (WebElement tasks : getStartButtonInPendingTasks(programSubject, programType, "Start")) {
			tasks.click();
			break;
		}
	}

	/**
	 * selects radio option from approval decision panel
	 * 
	 * @param radioName
	 */
	public void selectApproveDecisionOption(String radioName) {
		getApprovalDecisionPannel(radioName).click();
	}

	/**
	 * Assert specific approce radio button is not displayed
	 * 
	 * @param radioButtonName
	 */
	public void assertRadioButtonNotDisplayed(String radioButtonName) {
		Assert.assertTrue(isApprovalDecisionRadioButtonDisplayed(radioButtonName));
	}

	/**
	 * assert true if sequence is correct as per provided name
	 * 
	 * @param radioName
	 * @param sequenceNumber
	 */
	public void assertApprovalDecisoinRadioSequence(String radioName, int sequenceNumber) {
		Assert.assertTrue(isApprovalDecisionRadioSequence(radioName, sequenceNumber));
	}

	/**
	 * assert if error is displayed on not entering text in decision box
	 * 
	 * @param error
	 */
	public void assertDecisionCommentsMandatory(String error) {
		Assert.assertTrue(reiDriver.WaitFor().WaitForElementToBePresent(dangerAlert).getText().equalsIgnoreCase(error));
	}

	/**
	 * Assert specific approve radio button text
	 * 
	 * @param radioButtonName
	 */
	public void assertApproveRadioButtonText(String radioButtonName) {
		Assert.assertTrue(isApprovalRadioButtonTextChanged(radioButtonName));
	}

	/**
	 * Enter input value to program approval comment box.
	 */
	public void programApprovalTextBox() {
		reiDriver.WaitFor().WaitForElementToBePresent(approvalCommentTextBox);
		reiDriver.textInput().enterText(approvalCommentTextBox, defaultComment);
	}

	/**
	 * assert if message is displayed on confirmation box pop up on approve radio
	 * button
	 * 
	 * @param message
	 */
	public void assertMessageOfConfirmationBoxPopUp(String message) {
		Assert.assertTrue(reiDriver.WaitFor().WaitForElementToBePresent(confirmationBoxMessage)
				.getAttribute("innerText").equalsIgnoreCase(message));
	}

	/**
	 * click on Select dropdown inside Approval decision box
	 */
	public void clickOnSelectDropdown() {
		reiDriver.WaitFor().WaitForElementToBePresent(selectDropdown).click();
	}

	/**
	 * assert if user is displayed inside select dropdown list
	 * 
	 * @param userName
	 */
	public void assertUserInsideDropdown(String dropDownValue) {
		Assert.assertTrue(reiDriver.WaitFor().WaitForElementToBePresent(specificUserInsideDropdown)
				.getAttribute("innerText").equalsIgnoreCase(dropDownValue));
	}

	/*********
	 * "Local Methods with complete functionality - private"
	 *****************/

	/**
	 * get radio button specific to Approval decision
	 * 
	 * @param radioButtonName
	 * @return
	 */
	private WebElement getApprovalDecisionPannel(String radioButtonName) {
		return reiDriver.findMyElement()
				.getElement(By.xpath("//div/span/input[@name='myRadio' and @value='" + radioButtonName + "']"));
	}

	/**
	 * is specific radio button displayed in approval decision
	 * 
	 * @param radioButtonName
	 * @return
	 */
	private boolean isApprovalDecisionRadioButtonDisplayed(String radioButtonName) {
		boolean flag = true;
		try {
			if (getApprovalDecisionPannel(radioButtonName).isDisplayed()) {
				flag = false;
			}
		} catch (org.openqa.selenium.NoSuchElementException e) {

		}
		return flag;
	}

	/**
	 * return true if specific radio name appears at a specific sequence
	 * 
	 * @param radioName
	 * @param sequenceNumber
	 * @return
	 */
	private Boolean isApprovalDecisionRadioSequence(String radioName, int sequenceNumber) {
		if (reiDriver.findMyElement().getElements(approvalDecisionPannel).get(sequenceNumber).getAttribute("value")
				.contains(radioName)) {
			return true;
		} else
			return false;
	}

	/**
	 * validate if radio button text is changed
	 * 
	 * @param radioButtonName
	 * @return
	 */
	private boolean isApprovalRadioButtonTextChanged(String radioButtonName) {
		boolean flag = false;
		try {
			if (getApprovedText(radioButtonName).getAttribute("innerText").equals(radioButtonName)) {
				flag = true;
			}
		} catch (org.openqa.selenium.NoSuchElementException e) {
		}
		return flag;
	}

	/**
	 * get specific Approved text
	 * 
	 * @param radioButtonName
	 * @return
	 */
	private WebElement getApprovedText(String radioButtonName) {
		return reiDriver.findMyElement().getElement(By.xpath(
				"//div/span/input[@name='myRadio' and @value='Approve']//ancestor::span[@class='approval-actions ng-scope ng-binding']"));
	}
}
