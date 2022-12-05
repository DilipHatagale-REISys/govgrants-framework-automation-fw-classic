package com.lwcframework.automation.lwcpageobject;

import com.testingblaze.register.I;
import org.junit.Assert;
import org.openqa.selenium.By;

public class LWC_SendEmailPage {
    public void uploadAttachmentInSendEmailModal(String attachmentName) {
        By attachmentChooseFilePath = By.xpath("//span[text()='Upload Files']");
        String defaultFilePath = System.getProperty("user.dir") + "/src/main/resources/";
        I.amPerforming().textInput().in(attachmentChooseFilePath, defaultFilePath + attachmentName);
    }

    private Boolean isAttachmentPresentInSendEmailModalLWC(String attachmentName) {
        boolean flag = false;

        if (I.amPerforming().getElementReference().of(By.xpath("//tbody//tr//td//div[contains(text(),'" + attachmentName + "')] | //a[text()='" + attachmentName + "']")).isDisplayed()) {
            flag = true;
        }
        return flag;
    }

    public void assertAttachmentPresentInSendEmailModalLWC(String usage, String attachmentName) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isAttachmentPresentInSendEmailModalLWC(attachmentName));
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isAttachmentPresentInSendEmailModalLWC(attachmentName)).isTrue();
        }
    }

}
