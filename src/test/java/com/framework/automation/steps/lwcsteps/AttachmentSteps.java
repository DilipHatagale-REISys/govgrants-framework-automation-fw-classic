package com.framework.automation.steps.lwcsteps;

//import com.framework.automation.pageobject.LWCPage.AttachmentsPage;

import com.testingblaze.actionsfactory.api.ByUsing;
import com.testingblaze.controller.DeviceBucket;
import com.testingblaze.objects.Elements;
import com.testingblaze.objects.InstanceRecording;
import com.testingblaze.register.I;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

import java.util.List;

public class AttachmentSteps {
    //private AttachmentsPage attachmentsPage;

    @And("I enter value {string} into description box")
    public void iEnterValueIntoDescriptionBox(String description) {
        I.amPerforming().textInput().in(ByUsing.xpath("//lightning-textarea//div//textarea[@name='attDescription']"), description);
    }

    @And("I click on {string} on LWC modal")
    public void iClickOnOnLWCModal(String button) {
        I.amPerforming().click().on(ByUsing.xpath("//footer//button[@title='" + button + "'] | //li[@title='" + button + "'] | //button[@type='button' and text()='" + button + "']"));
    }

    @When("I upload attachment {string} in attachments LWC modal")
    public void iUploadAttachmentInAttachmentsLWCModal(String attachment) {
        By attachmentChooseFilePath = By.xpath("//div[@class='custom-upload']//input[@type='file'] | //div[@class='slds-file-selector slds-file-selector_files']//lightning-primitive-file-droppable-zone//slot//input[@type='file']");
        String defaultFilePath = System.getProperty("user.dir") + "/src/main/resources/";
        I.amPerforming().textInput().in(attachmentChooseFilePath, defaultFilePath + attachment);
    }

    @When("I click on {string} icon for {string} inside table name {string}")
    public void iClickOnIconForInsideTableName(String actionButton, String fileName, String tableName) {
        By button = ByUsing.xpath("//*[text()='" + tableName + "']/ancestor::div[@class='slds-text-color_inverse slds-p-around_x-small header panel-heading']/following-sibling::div/descendant::a[text()='" + fileName + "']/ancestor::td/following-sibling::td/a[@title='" + actionButton + "']");
        I.amPerforming().click().on(button);
    }

    @And("I expand table with tablename {string}")
    public void iExpandTableWithTablename(String tableName) {
        By arrow = ByUsing.xpath("//lightning-icon[@title='" + tableName + "']//lightning-primitive-icon");
        I.amPerforming().click().on(arrow);
    }

    @When("I close LWC modal by clicking the top right x button")
    public void iCloseLWCModalByClickingTheTopRightXButton() {
        By closeButtonlwc = By.xpath("//lightning-button//button[@title='Close']");
        I.amPerforming().click().on(closeButtonlwc);
    }

    @And("I select {string} from dropdown of filetype")
    public void iSelectFromDropdownOfFiletype(String value) {
        I.amPerforming().click().on(ByUsing.xpath("//button[@aria-label='Select Progress']"));
        List<Elements> options = I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//div//lightning-base-combobox-item//span//span[@class='slds-truncate']"));
        for (Elements opt : options) {
            if (opt.getText().equals(value)) {
                opt.isDisplayed();
                opt.click();
            }
        }
    }

    @And("I click on top right button {string} in tableName {string} for LWC")
    public void iClickOnTopRightButtonInTableNameForLWC(String tableName, String button) {
//        if (tableName.contains("Attachments")) {
//            I.amPerforming().click().withJavaScript(ByUsing.xpath("//*[text()='" + tableName + "']/parent::div/following-sibling::lightning-button//button[@title='" + button + "']"));
//        }
        I.amPerforming().click().on(ByUsing.xpath("//*[text()='" + tableName + "']/parent::div/following-sibling::lightning-button//button[@title='" + button + "']"));
        I.amPerforming().waitFor().makeThreadSleep(3000);
    }

    @Then("I see {string} is in LWC modal window")
    public void iSeeIsInLWCModalWindow(String header) {
        Assert.assertTrue(I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@class='slds-modal__container']/descendant::h2[text()='" + header + "']")));
    }

    @And("I click {string} on confirmation modal window")
    public void iClickOnConfirmationModalWindow(String action) {
        By button = (ByUsing.xpath("//div[@class=\"slds-modal__container\"]/descendant::button[text()='" + action + "']"));
        I.amPerforming().click().on(button);
    }

    @Then("I see asterisk mark at {string} field in LWC")
    public void iSeeAsteriskMarkAtFieldInLWC(String field) {
        I.amPerforming().assertionsTo().assertThat(isdisplayedAsteriskMarkAtFieldInLWC(field)).isTrue();

    }

    private boolean isdisplayedAsteriskMarkAtFieldInLWC(String field) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//h2[text()='Add Attachments']/ancestor::div[@class=\"slds-modal__container\"]/descendant::*[text()='" + field + "']"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    @Then("I see text {string} shown on cross button")
    public void iSeeTextShownOnCrossButton(String text, String usage) {
        {
            Assert.assertTrue(isHovertextDisplayed(text));
        }
    }

    private boolean isHovertextDisplayed(String text) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//lightning-button//button[@title='" + text + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    @When("I click on {string} icon at {string} LWC modal")
    public void iClickOnIconAtLWCModal(String actionIcon, String Name) {
        if (Name.equalsIgnoreCase("Send Email LWC")) {
            I.amPerforming().click().withJavaScript(ByUsing.xpath("//button[@id='CommunicationHistorymodalDivCloseIcon' and text()='" + actionIcon + "']"));
        } else if (Name.equalsIgnoreCase("Attachments")) {
            I.amPerforming().click().withJavaScript(ByUsing.xpath("//button[@class='slds-button' and text()='" + actionIcon + "']"));
        }
    }

    //mouse hovering implementation
    @And("I hover mouse on {string} icon for LWC")
    public void iHoverMouseOnIconForLWC(String actionIcon) {
        I.amPerforming().waitFor().makeThreadSleep(1000);
        I.amPerforming().scroll().toMoveToElement(By.xpath("//button[@class='slds-button' and text()='" + actionIcon + "']"));

    }

    @When("I hovering mouse on arrow at table name {string}")
    public void iHoveringMouseOnArrowAtTableName(String tableName) {
        I.amPerforming().waitFor().makeThreadSleep(1000);
        I.amPerforming().scroll().toMoveToElement(By.xpath("//span[@class='slds-assistive-text' and text()='" + tableName + "']"));

    }

    @Then("I softly see text {string} shown in arrow")
    public void iSoftlySeeTextShownInArrow(String text) {
        Assert.assertTrue(isHovertextDisplayed(text));
    }

    @And("I hover mouse on {string} icon for file name {string}")
    public void iHoverMouseOnIconForFileName(String icon, String fileName) {
        I.amPerforming().waitFor().makeThreadSleep(1000);
        //   I.amPerforming().scroll().toMoveToElement(By.xpath("//*[text()='Attachments']/ancestor::div[@class='slds-text-color_inverse slds-p-around_x-small header panel-heading']/following-sibling::div/descendant::a[text()='NewGlobalErrorAtSPIuser.png']/ancestor::td/following-sibling::td/a[@title='Download']"));
        I.amPerforming().scroll().toMoveToElement(I.amPerforming().getElementReference().of(ByUsing.xpath("//td//a[@title='" + icon + "' and @class='actionIcons']//i[contains(@class,'fa fa-cloud-download')]")));

        //       WebElement hovermsg = I.amPerforming().getElementReference().of(ByUsing.xpath("//*[text()='Attachments']/ancestor::div[@class='slds-text-color_inverse slds-p-around_x-small header panel-heading']/following-sibling::div/descendant::a[text()='NewGlobalErrorAtSPIuser.png']/ancestor::td[@data-label='Account Name']/following-sibling::td/a/i/*[text()='Download']"));
//      String msg =  hovermsg.getText();
//        System.out.println("aaaaaaaaaaaaaaa"+msg);
    }

    //    @Then("I see the hover text {string} for file name {string}")
//    public void iSeeTheHoverTextForFileName(String text, String fileName) {
//        Assert.assertTrue(isHovertextDisplayedForFile(text));
//    }
    //mouse hovering text
    @Then("I see the hover text {string} for file name")
    public void iSeeTheHoverTextForFileName(String text) {
        Assert.assertTrue(isHovertextDisplayedForFile(text));
    }

    private boolean isHovertextDisplayedForFile(String text) {
        boolean flag = false;
        try {
            By element = By.xpath("//lightning-button//button[@title='" + text + "']");
            if (
                //I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//lightning-button//button[@title='"+text+"']"))) {
                    I.amPerforming().actionToGet().attribute(element, "title").equalsIgnoreCase(text))
                flag = true;
        } catch (Exception e) {
        }
        return flag;
    }

    //sample step
    @And("I do hover")
    public void iDoHover() {
        I.amPerforming().waitFor().makeThreadSleep(1000);
        I.amPerforming().scroll().toMoveToElement(By.xpath("//*[text()='Attachments']/ancestor::div[@class='slds-text-color_inverse slds-p-around_x-small header panel-heading']/following-sibling::div/descendant::a[text()='NewGlobalErrorAtSPIuser.png']/ancestor::td[@data-label='Account Name']/following-sibling::td/a"));
        WebElement hovermsg = I.amPerforming().getElementReference().of(ByUsing.xpath("//*[text()='Attachments']/ancestor::div[@class='slds-text-color_inverse slds-p-around_x-small header panel-heading']/following-sibling::div/descendant::a[text()='NewGlobalErrorAtSPIuser.png']/ancestor::td[@data-label='Account Name']/following-sibling::td/a/i/div[@class='slds-popover__body']"));
        String msg = hovermsg.getText();
        System.out.println("aaaaaaaaaaaaaaa" + msg);
    }

    //click on expand arrow
    @And("I click on shrink or expand arrow for {string}")
    public void iClickOnShrinkOrExpandArrowFor(String tableName) {
        By button = (ByUsing.xpath("//lightning-icon[@title='" + tableName + "']//lightning-primitive-icon"));
        I.amPerforming().click().on(button);
    }

    //validate message in page displayed
    @Then("I see the following message in the LWC page details :")
    public void iSeeTheFollowingMessageInTheLWCPageDetails(String message) {
        MessageInTheLWCPageDetails(message);
        //            I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//h2[contains(text(),'The document')text()=' The document you are attempting to upload exists in the Workspace']"))

    }

    private void MessageInTheLWCPageDetails(String message) {
        I.amPerforming().assertionsTo().assertThat(isValidateMessageDisplayedInsideFormDetails(message));

    }

    private boolean isValidateMessageDisplayedInsideFormDetails(String message) {
        boolean flag = false;
        if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//h2[text()='" + message + "']"))) {
            return true;
        } else if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//h2[contains(text(),'The document')]"))) {
            return true;
        }
        return flag;
    }

    //navigate to tab on modal
    @And("I navigate to {string} tab on modal")
    public void iNavigateToTabOnModal(String text) {
        By button = (ByUsing.xpath("//li[@title='" + text + "']"));
        I.amPerforming().click().on(button);
    }

    @Then("I see {string} from dropdown of filetype is displayed and enabled")
    public void iSeeFromDropdownOfFiletypeIsDisplayedAndEnabled(String value) {
        I.amPerforming().click().on(ByUsing.xpath("//button[@aria-label='Select Progress']"));
        List<Elements> options = I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//div//lightning-base-combobox-item//span//span[@class='slds-truncate']"));
        for (Elements opt : options) {
            if (opt.getText().equals(value)) {
                opt.isDisplayed();
                opt.isEnabled();
            }
        }
    }

    @Then("I can see Upload Files in {string} field is displayed and enabled")
    public void iCanSeeUploadFilesInFieldIsDisplayedAndEnabled(String file) {
        WebElement uploadfiles = I.amPerforming().getElementReference().of(ByUsing.xpath("//div[@class='slds-file-selector slds-file-selector_files']//lightning-primitive-file-droppable-zone//slot//input[@type='" + file + "']"));
        uploadfiles.isDisplayed();
        uploadfiles.isEnabled();
    }

    //row level action step
    @When("I click on {string} icon for file {string} inside table name {string} for LWC")
    public void iClickOnIconForFileInsideTableNameForLWC(String icon, String fileName, String tableName) {
        if (tableName.contains("Attachments")) {
            I.amPerforming().click().on(ByUsing.xpath("//*[text()='" + tableName + "']/ancestor::div[@class='slds-text-color_inverse slds-p-around_xx-small header']/following-sibling::div/descendant::a[text()='" + fileName + "']/ancestor::td/following-sibling::td/a[@title='" + icon + "']"));
        }
    }

    @And("I click on {string} on confirmation modal")
    public void iClickOnOnConfirmationModal(String value) {
        I.amPerforming().click().withJavaScript(ByUsing.xpath("//div[@class=\"slds-modal__container\"]/descendant::button[text()='" + value + "']"));
    }

    //step for shrink and expand block
    @And("I click on {string} arrow in {string} table")
    public void iClickOnArrowInTable(String arrow, String tableTitle) {
//        if (arrow.equals("up")) {
//            I.amPerforming().click().on(ByUsing.xpath("//lightning-icon[@title='" + tableTitle + "']/lightning-primitive-icon//*[@data-key='" + arrow + "']"));
//        } else if (arrow.equals("down")) {
//            I.amPerforming().click().on(ByUsing.xpath("//lightning-icon[@title='" + tableTitle + "']/lightning-primitive-icon//*[@data-key='" + arrow + "']"));
//        } else
        I.amPerforming().click().withJavaScript(ByUsing.xpath("//lightning-icon[@title='" + tableTitle + "']//lightning-primitive-icon//*[@class='slds-icon']"));
        //  I.amPerforming().click().on(ByUsing.xpath("//lightning-icon[@title='"+tableTitle+"']"));

    }

    @Then("I do not see {string} table")
    public void iDoNotSeeTable(String columnName) {
        if (columnName.equals("Attachments")) {
            String locator = "//*[@data-aura-rendered-by='9:0']/descendant::th[@scope='col']";
            List<Elements> allOptions = I.amPerforming().getElementReference().forListOfElements().of(ByUsing.xpath(locator));
            for (Elements opt : allOptions) {
                if (opt.getText().equals(columnName)) {
                    opt.isDisplayed();
                }
            }
        } else if (columnName.equals("Notes")) {
            String locator = "//th//a[@class='slds-text-link_reset']";
            List<Elements> allOptions = I.amPerforming().getElementReference().forListOfElements().of(ByUsing.xpath(locator));
            if (allOptions.size() <= 0) {
                int sizeOfList = 0;
                Assert.assertEquals(sizeOfList, 0);
            }
        } else {
            String locator = "//tr[@class='slds-line-height_reset']//th//div[@class='slds-truncate']";
            List<Elements> allOptions = I.amPerforming().getElementReference().forListOfElements().of(ByUsing.xpath(locator));
            if (allOptions.size() <= 0) {
                int sizeOfList = 0;
                Assert.assertEquals(sizeOfList, 0);
            }
        }

    }

    @Then("I softly see column {string} in table name {string}")
    public void iSoftlySeeColumnInTableName(String columnName, String arg1) {
        I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//tr[@class='slds-line-height_reset']//th//span[@title='" + columnName + "']"));
    }

    @Then("I can see {string} into column {string} against value {string}")
    public void iCanSeeIntoColumnAgainstValue(String value, String field, String fileName) {
        String locator = "//tr//td[@data-label='" + field + "']//div[@title='" + value + "']";
        List<Elements> allOptions = I.amPerforming().getElementReference().forListOfElements().of(ByUsing.xpath(locator));
        for (Elements opt : allOptions) {
            if (opt.getText().equals(fileName)) {
                opt.isDisplayed();
            }
        }
    }

    @Then("I softly (can see|cannot see) row level action button \"([^\"]*)\" against \"([^\"]*)\" in table name \"([^\"]*)\"$")
    public void iSoftlyCanSeeRowLevelActionButtonAgainstInTableName(String icon, String fileName, String tableName) {
        // String locator = "//*[text()='" + tableName + "']/ancestor::div[@class='slds-text-color_inverse slds-p-around_x-small header panel-heading']/following-sibling::div/descendant::a[text()='" + fileName + "']/ancestor::td/following-sibling::td/a[@title='" + icon + "']";
        I.amPerforming().assertionsTo().assertThat(iSoftlyCanSeeRowLevelActionButtonTableName(icon, fileName, tableName)).isTrue();
    }

    private boolean iSoftlyCanSeeRowLevelActionButtonTableName(String icon, String fileName, String tableName) {
        boolean flag = false;
        if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//*[text()='" + tableName + "']/ancestor::div/following-sibling::div/descendant::a[text()='" + fileName + "']/ancestor::td/following-sibling::td/a[@title='" + icon + "']"))) {
            return true;
        }
        return flag;
    }

    @Then("I see recently added snapshot in table name {string} with current date")
    public void iSeeRecentlyAddedSnapshotInTableNameWithCurrentDate(String arg0) {

    }

    @And("I click on saved snap shot {string}")
    public void iClickOnSavedSnapShot(String fileName) {
        // I.amPerforming().click().withJavaScript(ByUsing.xpath("//a[contains(text(),'"+fileName+"')]"));
        I.amPerforming().click().on(ByUsing.xpath("//a[contains(text(),'" + fileName + "')]"));
    }

    @Then("I see generated snapshot {string} is displayed with {string}")
    public void iSeeGeneratedSnapshotIsDisplayedWith(String fileName, String columnName) {
        I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//span[text()='" + columnName + "']//ancestor::thead//following-sibling::tbody//descendant::a[contains(text(),'" + fileName + "')] | //span[@title='" + columnName + "']//ancestor::thead//following-sibling::tbody//tr//td[@data-label='Attachment Owner']//div[text()='" + fileName + "']"));
    }

    @Then("I see total records count in {string} table equals to Total record displayed on UI")
    public void iSeeTotalRecordsCountInTableEqualsToTotalRecordDisplayedOnUI(String tableName) {
        List<Elements> option = I.amPerforming().getElementReference().forListOfElements().of(ByUsing.xpath("//td[@data-label='Attachment Name']//div//a"));
        int size = option.size();
        if (tableName.equals("Snapshot History")) {
            String totalRecords = I.amPerforming().getElementReference().of(ByUsing.xpath("//span[text()='Snapshot History']//ancestor::gnt-snapshot-history//descendant::span[contains(text(),'Total Records :')]")).getText();
            Assert.assertTrue(totalRecords.contains(Integer.toString(size)));
        }
    }

    @And("I click on {string} in modal")
    public void iClickOnInModal(String workspace) {
        I.amPerforming().click().on(ByUsing.xpath("//li/a[@data-tab-value='" + workspace + "']"));
    }

    @And("I click on {string} in {string} tab")
    public void iClickOnIn(String checkbox, String tabName) {
        if (checkbox.equals("select all checkbox")) {
            I.amPerforming().click().on(ByUsing.xpath("(//lightning-tab[@aria-labelledby='Upload file from workspace__item']//input[@class='datatable-select-all']//following-sibling::label/span)[1]"));
        }
    }

    @And("I get {string} of program")
    public void iGetOfProgram(String arg0) {
        String egmsID = I.amPerforming().getElementReference().of(ByUsing.xpath("//span[text()='EGMS ID']//parent::dt/following-sibling::dd/span[@class='wordPre field-value']")).getText();
        System.out.println("EGMS ID " + egmsID);
    }

    @Then("I see all files get selected {string} tab")
    public void iSeeAllFilesGetSelectedTab(String tab) {
        I.amPerforming().checkToSee().isSelected(ByUsing.xpath("(//lightning-tab[@aria-labelledby='" + tab + "']//input[@class='datatable-select-all']//following-sibling::label/span)[1]"), true);
    }

    @And("I click on {string} checkbox inside {string}")
    public void iClickOnCheckboxInside(String number, String arg1) {
        I.amPerforming().click().on(ByUsing.xpath("//*[text()='DuplicateFile.txt']//ancestor::th//preceding-sibling::td/child::lightning-primitive-cell-checkbox"));
    }

    @And("I click on {string} button on {string} modal")
    public void iClickOnButtonOn(String button, String modal) {
        if (modal.equals("Add Attachments")) {
            I.amPerforming().click().on(ByUsing.xpath("//div/lightning-button/button[@title='Attach']"));
        }
    }

    @Then("I see only one file should get attached")
    public void iSeeOnlyOneFileShouldGetAttached() {
        List<Elements> options = I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//td[@data-label='Account Name']"));
        int sizeOfFile = options.size();
        Assert.assertEquals(options.size(), 1);
    }

    @And("I see row level action {string} file against {string} in table name {string}")
    public void iSeeRowLevelActionFileAgainstInTableName(String icon, String fileName, String tableName) {
        I.amPerforming().click().on(ByUsing.xpath("//*[text()='" + tableName + "']/ancestor::div/following-sibling::div/descendant::a[text()='" + fileName + "']/ancestor::td/following-sibling::td/a[@title='" + icon + "']"));
    }

    @Then("I see inside {string} no any space")
    public void iSeeInsideNoAnySpace(String field) {
        if (field.equals("Test Description Field")) {
            List<Elements> options = I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//span[text()='" + field + "']/parent::dt/following-sibling::dd/span/span/div"));
            Assert.assertEquals(options.size(), 2);
        }
    }


    @And("I enter value inside {string} is {string} and click on Enter and enter value {string}")
    public void iEnterValueInsideIsAndClickOnEnterAndEnterValue(String ckEditor, String text1, String text2) {
        if (ckEditor.equals("Test Description Field")) {
            I.amPerforming().textInput().in(ByUsing.xpath("//body[@class='cke_editable cke_editable_themed cke_contents_ltr cke_show_borders']"), "" + text1 + " \n" + text2 + "");
        }
    }

    @And("I click on {string} inside description field")
    public void iClickOnInsideDescriptionField(String allignment) {
        I.amPerforming().click().on(ByUsing.xpath("(//a[@title='"+ allignment +"'])[1]"));
    }

    @And("I click on {string} format and Select paragraph format {string} from dropdown")
    public void iClickOnFormatAndSelectParagraphFormatFromDropdown(String field, String format) throws InterruptedException {
        if (field.equals("Normal")) {
            I.amPerforming().click().on(ByUsing.xpath("(//span[@class='cke_combo cke_combo__format cke_combo_off'])[1]"));
            I.amPerforming().click().on(ByUsing.xpath("//a[@title='"+ format +"']"));
        }
    }

    @And("I enter value inside {string} is {string}")
    public void iEnterValueInsideIs(String ckEditor, String textValue) {
        if (ckEditor.equals("Description")) {
            I.amPerforming().textInput().in(ByUsing.xpath("//body[@class='cke_editable cke_editable_themed cke_contents_ltr cke_show_borders']"), textValue);
        }
    }

    @Then("I see inside {string} no any space after format change")
    public void iSeeInsideNoAnySpaceAfterFormatChange(String field) {
        if (field.equals("Test Description Field")){
            List<Elements> options = I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//span[text()='" + field + "']/parent::dt/following-sibling::dd/span/span/div"));
            Assert.assertEquals(options.size(), 0);
        }

    }
///////////////Responsibility Peer Reviewers#############
    @And("I click on {string} action button respective {string} Description")
    public void iClickOnActionButtonRespectiveDescription(String button, String DescriptionText) {
        I.amPerforming().click().on(ByUsing.xpath("//tbody[@id='tableBody']//td//span[text()='"+ DescriptionText+"']/ancestor::td//following-sibling::td/div//a[@title='"+ button+"']"));
    }

    @Then("I do not see {string} Description inside {string} table")
    public void iDoNotSeeDescriptionInsideTable(String descriptionText, String tableName) {
        if (tableName.equals("Peer Reviewers")) {
            boolean elementPresentOnWebPage = true;
            try {
                I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//tbody[@id='tableBody']//td//span[text()='" + descriptionText + "']"));
            } catch (NoSuchElementException e) {
                elementPresentOnWebPage = false;
            }
            Assert.assertFalse(elementPresentOnWebPage);
        }
    }

    @Then("I see {string} action button respective {string} Description and Enabled")
    public void iSeeActionButtonRespectiveDescriptionAndEnabled(String button, String DescriptionText) {
        I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//tbody[@id='tableBody']//td//span[text()='" + DescriptionText+ "']/ancestor::td//following-sibling::td/div//a[@title='"+ button + "']"),true);
    }

    @Then("I see newly added record with Description {string} in row")
    public void iSeeNewlyAddedRecordWithDescriptionInRow(String DescriptionText) {
        I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//tbody[@id='tableBody']//td//span[text()='" + DescriptionText+ "']"),true);

    }
}
