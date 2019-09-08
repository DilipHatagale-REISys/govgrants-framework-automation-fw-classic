package com.framework.automation.pageobject;

import com.framework.automation.projectmanager.GovGrantsManager;
import eyethink.automation.bots.Register.EyeThink;
import eyethink.automation.bots.exception.EyeThinkBotsCustomException;
import eyethink.automation.bots.objects.Elements;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.util.List;

public class ApprovalProcessPage extends GovGrantsManager {
    /******* "Variables and Locators" *****************/

    private final By approvalDecisionPannel, approvalCommentTextBox, submitButton, saveButton;

    /**
     * Constructor to handle dependency injection and framework library
     */
    public ApprovalProcessPage() {
        approvalDecisionPannel = By.cssSelector("div>span>input[name='myRadio']");
        approvalCommentTextBox = By.xpath("//div[@id='ApprovalDecisionComponent']//textarea");
        submitButton = By.xpath("//input[@type='button' and @value='Submit']");
        saveButton = By.xpath("//div/span//input[@type='submit' and @value ='Save']");
    }

    /**
     * click Submit
     */
    public void clickSubmitButton() {
        EyeThink.core().click().onWeb(submitButton);
        EyeThink.core().WaitFor().makeThreadSleep(9000);
    }

    /**
     * click approval start play button
     *
     * @param programSubject
     * @throws EyeThinkBotsCustomException
     */
    public void clickStartApprovalButton(String programSubject) throws EyeThinkBotsCustomException {
        EyeThink.saas().flexTable().clickTableActionIcons("Start", programSubject);
    }

    /**
     * selects radio option from approval decision panel
     *
     * @param radioName
     */
    public void selectApproveDecisionOption(String radioName) {
        EyeThink.core().click().onWeb(getApprovalDecisionPannel(radioName));
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
        Assert.assertTrue(EyeThink.core().elementReference().onWeb(dangerAlert).getText().equalsIgnoreCase(error)
                || EyeThink.core().elementReference().onWeb(dangerAlert).getText().contains(error));
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
        EyeThink.core().elementReference().onWeb(approvalCommentTextBox);
        EyeThink.core().enterText().onWeb().enter(approvalCommentTextBox, defaultComment);
    }

    /**
     * assert if message is displayed on confirmation box pop up on approve radio
     * button
     *
     * @param message
     */
    public void assertMessageOfConfirmationBoxPopUp(String message) {
        Assert.assertTrue(EyeThink.core().get().attribute(confirmationBoxMessage, "innerText").equalsIgnoreCase(message));
    }

    /**
     * assert if user is displayed inside select dropdown list
     *
     * @param dropDownValue
     */
    public void assertUserInsideDropdown(String dropDownValue) {
        Assert.assertTrue(isSpecificUserDisplayed(dropDownValue));
    }

    /**
     * assert true if specific subject is not displayed for approval
     *
     * @param subject
     */
    public void assertSpecificApprovalNotDisplayed(String subject) {
        Assert.assertEquals(0, isSpecificApprovalTask(subject, "Start").size());
    }

    /**
     * Assert success message text inside success email of admin portal
     *
     * @param templateName
     */
    public void assertSuccessForEmailToProgramOwner(String templateName) {
        Assert.assertTrue(isSuccessForEmailToProgramOwner(templateName));
    }

    /**
     * assert true if specified comment is displayed inside history tab table
     */
    public void assertCommentTextInsideHistoryTab(String commentText, String User) {
        Assert.assertTrue(isCommentTextDisplayed(commentText, User));
    }

    /**
     * click on Select dropdown inside Approval decision box
     */
    public void clickOnSelectDropdown() {
        EyeThink.core().click().onWeb(selectDropdown);
    }

    /**
     * click on specific user from approval decision action inside approval decision
     * panel
     *
     * @param dropDownValue
     */
    public void selectUserFromApproveDecisionOptionDropdown(String dropDownValue) {
        EyeThink.core().click().onWeb(getuserFromApprovalDecisionAction(dropDownValue));
    }

    /**
     * get item from Approval Decision action item
     *
     * @param dropDownValue
     * @return
     */
    public WebElement getuserFromApprovalDecisionAction(String dropDownValue) {
        return EyeThink.core().elementReference().onWeb(By.xpath("//div[@id='select2-drop']//ul//li/div[contains(text(),'" + dropDownValue + "')]"));
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
        return EyeThink.core().elementReference().onWeb(By.xpath("//div/span/input[@name='myRadio' and @value='" + radioButtonName + "']"));
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
            if (EyeThink.core().is().onWeb().isDisplayed(getApprovalDecisionPannel(radioButtonName))) {
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
        if (EyeThink.core().elementReference().listOfElements().onWeb(approvalDecisionPannel).get(sequenceNumber).getAttributes("value")
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
        return EyeThink.core().elementReference().onWeb(By.xpath(
                "//div/span/input[@name='myRadio' and @value='Approve']//ancestor::span[@class='approval-actions ng-scope ng-binding']"));
    }

    /**
     * get exact start button for pending tasks assigned to me
     */
    private List<Elements> isSpecificApprovalTask(String programSubject, String titleInLocator) {
        int whileHandler = 0;
        By startButton = By.xpath("//div/table/tbody/tr/td/span/span/span[text()='" + programSubject
                + "']//following::td/div/span/span/span/span/a[@title='" + titleInLocator + "']");
        List<Elements> approvalStartButtonTable = EyeThink.core().elementReference().listOfElements().onWeb(startButton);
        int approvalStartButtonTableSize = approvalStartButtonTable.size();
        while (approvalStartButtonTableSize == 0) {
            whileHandler++;
            if (whileHandler == 2) {
                break;
            }
            EyeThink.core().get().refresh();
            EyeThink.core().elementReference().onWeb(pendingTasksTableRef);
            approvalStartButtonTable = EyeThink.core().elementReference().listOfElements().onWeb(startButton);
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
        EyeThink.core().WaitFor().makeThreadSleep(3000);
        try {
            if (validateQueueEmail().getAttribute("title").equalsIgnoreCase("Queued")) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        if (flag == false) {
            try {
                clickAndSelectOptionFromLeftDoubleArrowDropDown("Success Emails");
                EyeThink.core().WaitFor().makeThreadSleep(2500);
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
     * @return
     */
    private WebElement validateQueueEmail() {
        EyeThink.core().WaitFor().makeThreadSleep(200);
        return EyeThink.core().elementReference().onWeb(By.xpath("//td//span[@title='Queued']"));
    }

    /**
     * validate success message
     *
     * @param templateName
     * @return
     */
    private List<Elements> validateSuccessEmail(String templateName) {
        return EyeThink.core().elementReference().listOfElements().onWeb(By.xpath(
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
        return EyeThink.core().elementReference().onWeb(By.xpath("//td/span[contains(text(),'" + User
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
        EyeThink.core().scroll().onWeb().pageDocument("PageDown", 0, 0);
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