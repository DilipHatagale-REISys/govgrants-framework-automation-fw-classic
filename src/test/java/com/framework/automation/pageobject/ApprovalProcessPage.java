package com.framework.automation.pageobject;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.testng.Assert;

import com.automation.rei.handlers.GovGrantsHandler;
import com.framework.automation.projectmanager.GovGrantsManager;

import eyethink.automation.bots.controller.Controller;
import eyethink.automation.bots.controller.CoreHandlers;
import eyethink.automation.bots.exception.EyeThinkBotsCustomException;

public class ApprovalProcessPage extends GovGrantsManager {
	/******* "Variables and Locators" *****************/

	private final By approvalDecisionPannel, approvalCommentTextBox, submitButton, saveButton;

	/**
	 * Constructor to handle dependency injection and framework library
	 */
	public ApprovalProcessPage(Controller controller, CoreHandlers reiDriver, GovGrantsHandler govgrants) {
		super(controller, reiDriver, govgrants);
		approvalDecisionPannel = By.cssSelector("div>span>input[name='myRadio']");
		approvalCommentTextBox = By.xpath("//div[@id='ApprovalDecisionComponent']//textarea");
		submitButton = By.xpath("//input[@type='button' and @value='Submit']");
		saveButton = By.xpath("//input[@type='submit' and @value ='Save']");
	}

	/**
	 * click Submit
	 */
	public void clickSubmitButton() {
		reiDriver.WaitFor().WaitForElementToBePresent(submitButton).click();
		reiDriver.WaitFor().makeThreadSleep(5000);
	}

	/**
	 * click Save
	 */
	public void clickSaveButton() {
		reiDriver.WaitFor().WaitForElementToBePresent(saveButton).click();
	}

	public void completeSubmitForapproval() {
		clickSaveButton();
		govgrants.pageDetails().clickAnyTopRightButton("Submit For Approval");
		reiDriver.switchTo().acceptAlert();
	}

	/**
	 * click approval start play button
	 * 
	 * @param programSubject
	 * @param programType
	 * @throws ReiFrameworkCustomException
	 */
	public void clickStartApprovalButton(String programSubject) throws EyeThinkBotsCustomException {
		govgrants.flexTable().clickTableActionIcons("Start", programSubject);
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
	 * Assert specific approce radio button is displayed
	 * 
	 * @param radioButtonName
	 */
	public void assertRadioButtonDisplayed(String radioButtonName) {
		Assert.assertFalse(isApprovalDecisionRadioButtonDisplayed(radioButtonName));
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
		Assert.assertTrue(reiDriver.WaitFor().WaitForElementToBePresent(dangerAlert).getText().equalsIgnoreCase(error)
				|| reiDriver.WaitFor().WaitForElementToBePresent(dangerAlert).getText().contains(error));
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
	 * assert if user is displayed inside select dropdown list
	 * 
	 * @param userName
	 */
	public void assertUserInsideDropdown(String dropDownValue) {
		Assert.assertTrue(isSpecificUserDisplayed(dropDownValue));
	}

	/**
	 * assert true if specific subject is not displayed for approval
	 * 
	 * @param approverType
	 * @param subject
	 */
	public void assertSpecificApprovalNotDisplayed(String subject) {
		Assert.assertEquals(0, isSpecificApprovalTask(subject, "Start").size());
	}

	/**
	 * Assert success message text inside success email of admin portal
	 * 
	 * @param status
	 */
	public void assertSuccessForEmailToProgramOwner(String templateName) {
		Assert.assertTrue(isSuccessForEmailToProgramOwner(templateName));
	}

	/**
	 * assert true if specified comment is displayed inside history tab table
	 * 
	 */
	public void assertCommentTextInsideHistoryTab(String commentText, String User) {
		Assert.assertTrue(isCommentTextDisplayed(commentText, User));
	}

	/**
	 * click on Select dropdown inside Approval decision box
	 */
	public void clickOnSelectDropdown() {
		reiDriver.WaitFor().WaitForElementToBePresent(selectDropdown).click();
	}

	/**
	 * click on specific user from approval decision action inside approval decision
	 * panel
	 * 
	 * @param dropDownValue
	 */
	public void selectUserFromApproveDecisionOptionDropdown(String dropDownValue) {
		getuserFromApprovalDecisionAction(dropDownValue).click();
	}

	/**
	 * get item from Approval Decision action item
	 * 
	 * @param dropDownValue
	 * @return
	 */
	public WebElement getuserFromApprovalDecisionAction(String dropDownValue) {
		return reiDriver.findMyElement().getElement(
				By.xpath("//div[@id='select2-drop']//ul//li/div[contains(text(),'" + dropDownValue + "')]"));
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

	/**
	 * get exact start button for pending tasks assigned to me
	 */
	private List<WebElement> isSpecificApprovalTask(String programSubject, String titleInLocator) {
		int whileHandler = 0;
		By startButton = By.xpath("//div/table/tbody/tr/td/span/span/span[text()='" + programSubject
				+ "']//following::td/div/span/span/span/span/a[@title='" + titleInLocator + "']");
		List<WebElement> approvalStartButtonTable = reiDriver.findMyElement().getElements(startButton);
		int approvalStartButtonTableSize = approvalStartButtonTable.size();
		while (approvalStartButtonTableSize == 0) {
			whileHandler++;
			if (whileHandler == 2) {
				break;
			}
			reiDriver.get().getRefresh();
			reiDriver.WaitFor().WaitForElementToBePresent(pendingTasksTableRef);
			approvalStartButtonTable = reiDriver.findMyElement().getElements(startButton);
			approvalStartButtonTableSize = approvalStartButtonTable.size();
		}
		System.out.println("size of pending task " + approvalStartButtonTable.size());
		return approvalStartButtonTable;
	}

	/**
	 * validate if email is successfully generated and is in queue or success in
	 * Admin portal
	 * 
	 * @return
	 */
	private boolean isSuccessForEmailToProgramOwner(String templateName) {
		boolean flag = false;
		reiDriver.WaitFor().makeThreadSleep(3000);
		try {
			if (validateQueueEmail().getAttribute("title").equalsIgnoreCase("Queued")) {
				flag = true;
			}
		} catch (org.openqa.selenium.NoSuchElementException e) {
		}
		if (flag == false) {
			try {
				clickAndSelectOptionFromLeftDoubleArrowDropDown("Success Emails");
				reiDriver.WaitFor().makeThreadSleep(2500);
				if (validateSuccessEmail(templateName).get(0).isDisplayed()) {
					flag = true;
				}
			} catch (Exception ee) {

			}
		}
		return flag;
	}

	/**
	 * get success text inside success email of email logs
	 * 
	 * @param status
	 * @return
	 */
	private WebElement validateQueueEmail() {
		reiDriver.WaitFor().makeThreadSleep(200);
		return reiDriver.findMyElement().getElement(By.xpath("//td//span[@title='Queued']"));
	}

	/**
	 * validate success message
	 * 
	 * @param status
	 * @return
	 */
	private List<WebElement> validateSuccessEmail(String templateName) {
		return reiDriver.findMyElement().getElements(By.xpath(
				"//td//span[text()='nauman.shahid@reisystems.com']/../../../../following-sibling::td//span[text()='"
						+ templateName + "']/../../../following-sibling::td//span[text()='Success']"));
	}

	/**
	 * check if expected comment text is present inside history tab
	 * 
	 * @param commentText
	 * @param User
	 * @return
	 */
	private WebElement getCommentTextInsideHistoryTab(String commentText, String User) {
		return reiDriver.WaitFor().WaitForElementToBePresent(By.xpath("//td/span[contains(text(),'" + User
				+ "')]/../following-sibling::td/span[contains(text(),'" + commentText + "')]"));
	}

	/**
	 * return true if specific user displayed
	 * 
	 * @param dropDownValue
	 * @return
	 */
	private boolean isSpecificUserDisplayed(String dropDownValue) {
		boolean flag = false;
		try {
			if (getuserFromApprovalDecisionAction(dropDownValue).getAttribute("innerText")
					.equalsIgnoreCase(dropDownValue)) {
				flag = true;
			}
		} catch (org.openqa.selenium.NoSuchElementException e) {

		}
		return flag;
	}

	/**
	 * return true if expected comment text is displayed inside history table
	 * 
	 * @param commentText
	 * @param User
	 * @return
	 */
	private boolean isCommentTextDisplayed(String commentText, String User) {
		reiDriver.JavaScript().scrollPageDocumentJS("PageDown", 0, 0);
		boolean flag = false;
		try {
			if (getCommentTextInsideHistoryTab(commentText, User).getText().contains(commentText)) {
				flag = true;
			}
		} catch (Exception e) {
		}
		return flag;
	}
}