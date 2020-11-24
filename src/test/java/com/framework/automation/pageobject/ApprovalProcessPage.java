package com.framework.automation.pageobject;

import com.framework.automation.projectmanager.GovGrantsManager;
import com.testingblaze.objects.Elements;
import com.testingblaze.register.I;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.util.List;

public class ApprovalProcessPage extends GovGrantsManager {
    /******* "Variables and Locators" *****************/

    /**
     * Constructor to handle dependency injection and framework library
     */
    public ApprovalProcessPage() {
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
     * assert true if comment box displayed properly inside approval decision section
     */
    public void assertAlignmentOfCommentBoxIsProper() {
        Assert.assertTrue(isCommentBoxDisplayedProperly());
    }

    /**
     * assert true if reassiged select box displayed properly inside approval decision section
     */
    public void assertReassignedSelectBoxIsAlignedProperly() {
        Assert.assertTrue(isReassignedSelectBoxDisplayedProperly());
    }

    /*********
     * "Local Methods with complete functionality - private"
     *****************/

    /**
     * get exact start button for pending tasks assigned to me
     */
    private List<Elements> isSpecificApprovalTask(String programSubject, String titleInLocator) {
        int whileHandler = 0;
        By startButton = By.xpath("//div/table/tbody/tr/td/span/span/span[text()='" + programSubject
                + "']//following::td/div/span/span/span/span/a[@title='" + titleInLocator + "']");
        List<Elements> approvalStartButtonTable = I.amPerforming().getElementReference().forListOfElements().of(startButton);
        int approvalStartButtonTableSize = approvalStartButtonTable.size();
        while (approvalStartButtonTableSize == 0) {
            whileHandler++;
            if (whileHandler == 2) {
                break;
            }
            I.amPerforming().browserOperationsTo().refreshPage();
            I.amPerforming().getElementReference().of(pendingTasksTableRef);
            approvalStartButtonTable = I.amPerforming().getElementReference().forListOfElements().of(startButton);
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
        I.amPerforming().waitFor().makeThreadSleep(3000);
        try {
            if (validateQueueEmail().getAttribute("title").equalsIgnoreCase("Queued")) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        if (flag == false) {
            try {
                clickAndSelectOptionFromLeftDoubleArrowDropDown("Success Emails");
                I.amPerforming().waitFor().makeThreadSleep(2500);
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
        I.amPerforming().waitFor().makeThreadSleep(200);
        return I.amPerforming().getElementReference().of(By.xpath("//td//span[@title='Queued']"));
    }

    /**
     * validate success message
     *
     * @param templateName
     * @return
     */
    private List<Elements> validateSuccessEmail(String templateName) {
        return I.amPerforming().getElementReference().forListOfElements().of(By.xpath(
                "//td//span[text()='nauman.shahid@reisystems.com']/../../../../following-sibling::td//span[text()='"
                        + templateName + "']/../../../following-sibling::td//span[text()='Processed']"));
    }

    /**
     * check if expected comment text is present inside history tab
     *
     * @param commentText
     * @param User
     * @return
     */
    private WebElement getCommentTextInsideHistoryTab(String commentText, String User) {
        return I.amPerforming().getElementReference().of(By.xpath("//td/span[contains(text(),'" + User
                + "')]/../following-sibling::td/span[contains(text(),'" + commentText + "')]"));
    }

    /**
     * return true if expected comment text is displayed inside history table
     *
     * @param commentText
     * @param User
     * @return
     */
    private boolean isCommentTextDisplayed(String commentText, String User) {
        I.amPerforming().scroll().onPageDocument("PageDown", 0, 0);
        boolean flag = false;
        try {
            if (I.amPerforming().actionToGet().text(getCommentTextInsideHistoryTab(commentText, User)).contains(commentText)) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * return true if comment box displayed properly inside approval decision section
     *
     * @return
     */
    private boolean isCommentBoxDisplayedProperly() {
        boolean flag = false;
        WebElement commentBox = I.amPerforming().getElementReference().of(By.xpath("//div[contains(@class,'approvalDecisionBox') and @ng-if='isCommentsshown']"));

        if (commentBox.getCssValue("display").equalsIgnoreCase("flex")) {
            flag = true;
        }
        return flag;
    }

    /**
     * return true if reassiged select box displayed properly inside approval decision section
     *
     * @return
     */
    private boolean isReassignedSelectBoxDisplayedProperly() {
        boolean flag = false;
        WebElement reassignedSelectionBox = I.amPerforming().getElementReference().of(By.xpath("//div[contains(@class,'approvalDecisionBox') and @ng-if='isReassignSelected']"));
        if (reassignedSelectionBox.getCssValue("display").equalsIgnoreCase("flex")) {
            flag = true;
        }
        return flag;
    }
}