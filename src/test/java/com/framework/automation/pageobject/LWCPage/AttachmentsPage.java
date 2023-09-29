package com.framework.automation.pageobject.LWCPage;

import com.framework.automation.projectmanager.GovGrantsManager;
import com.helperPackage.actionsfactory.api.ByUsing;
import com.helperPackage.objects.Elements;
import com.helperPackage.register.I;
import org.junit.Assert;
import org.openqa.selenium.By;

import java.util.List;

public class AttachmentsPage extends GovGrantsManager {
    /******* "Variables and Locators" *****************/
    private final By programOutcomesRowsInlineMode, enableTotalSumValueForTargetColumn;

    /**
     * Constructor to handle dependency injection and framework library
     */
    public AttachmentsPage() {
        programOutcomesRowsInlineMode = By
                .xpath("//div[@id='toggleFGridProgramOutcomes']//table/tbody/tr//*[@mode='edit']");
        enableTotalSumValueForTargetColumn = By.xpath("//div[@id='toggleFGridProgramOutcomes']//b[@class='totalFullDisplayFlex']//span");
    }

    public void iSoftlyCanSeeRowLevelActionButtonTableName(String usage, String icon, String fileName, String tableName) {
        if (usage.equalsIgnoreCase("can see")) {
            Assert.assertTrue(isActionButtonDisplaed(icon, fileName, tableName));
        } else if (usage.equalsIgnoreCase("cannot see")) {
            Assert.assertFalse(isActionButtonDisplaed(icon, fileName, tableName));
        }
    }

    public void valueIsDisplayedOrNot(String usage, String value, String tableName) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isColumnDisplaedOrNot(value, tableName));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isColumnDisplaedOrNot(value, tableName));
        }
    }

    public void messageIsDisplayedOrNotOnModal(String usage, String message) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(messageDisplayedOrNot(message)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(messageDisplayedOrNot(message)).isFalse();
        }
    }


    public void isRecordDisplayedOrNot(String usage, String record, String tableName) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(totalRecordDisplayedOrNot(record, tableName)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(totalRecordDisplayedOrNot(record, tableName)).isFalse();
        }
    }

    private boolean totalRecordDisplayedOrNot(String record, String tableName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//span[text()='" + tableName + "']/ancestor::gnt-attachment//*[contains(text(),'" + record + "')] | //*[@title='" + tableName + "']/ancestor::div[@class='panel-heading']/following-sibling::div//*[contains(text(),'" + record + "')]"))) {
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    private boolean messageDisplayedOrNot(String message) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//div[@role='alert']/*[contains(text(),'" + message + "')] |" +
                    " //h2[contains(text(),'The document')]"))) {
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    public void canSeeIntoColumnAgainstValue(String usage, String value, String field, String fileName) {
        String locator = "//tr//td[@data-label='" + field + "']//div[@title='" + value + "']";
        List<Elements> allOptions = I.amPerforming().getElementReference().forListOfElements().of(ByUsing.xpath(locator));
        for (Elements opt : allOptions) {
            if (opt.getText().equals(fileName)) {
                opt.isDisplayed();
            }
        }
    }

    public void selectFileTypeFromDropDown(String value) {
        I.amPerforming().click().on(ByUsing.xpath("//button[@aria-label='Select Progress']"));
        List<Elements> options = I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//div//lightning-base-combobox-item//span//span[@class='slds-truncate']"));
        for (Elements opt : options) {
            if (opt.getText().equals(value)) {
                opt.isDisplayed();
                opt.click();
            }
        }
    }

    public void uploadFileInAttachmentslwcModal(String attachment) {
        By attachmentChooseFilePath = By.xpath("//div[@class='custom-upload']//input[@type='file'] | //div[@class='slds-file-selector slds-file-selector_files']//lightning-primitive-file-droppable-zone//slot//input[@type='file']");
        String defaultFilePath = System.getProperty("user.dir") + "/src/main/resources/";
        I.amPerforming().textInput().in(attachmentChooseFilePath, defaultFilePath + attachment);
    }

    private boolean isColumnDisplaedOrNot(String value, String tableName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//span[text()='" + tableName + "']/ancestor::gnt-attachment//tbody/tr//a[contains(normalize-space(.),'" + value + "')] | //span[text()='" + tableName + "']/ancestor::gnt-attachment//thead/tr//*[text()='" + value + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    private boolean isActionButtonDisplaed(String icon, String fileName, String tableName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath(" //a[text()='" + fileName + "']/ancestor::td/following-sibling::td/a[@title='" + icon + "'] |//*[text()='" + tableName + "']/ancestor::div/following-sibling::div/descendant::a[text()='" + fileName + "']/ancestor::td/following-sibling::td/a[@title='" + icon + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }
}
