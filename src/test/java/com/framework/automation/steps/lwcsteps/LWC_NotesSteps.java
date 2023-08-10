package com.framework.automation.steps.lwcsteps;

import com.automation.rei.handlers.govgrants;
import com.framework.automation.pageobject.LWCPage.LWC_ApprovalHistoryComponentPage;
import com.framework.automation.pageobject.LWCPage.LWC_NotesPage;
import com.framework.automation.projectmanager.GovGrantsManager;
import com.testingblaze.actionsfactory.api.ByUsing;
import com.testingblaze.controller.DeviceBucket;
import com.testingblaze.objects.InstanceRecording;
import com.testingblaze.register.I;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.*;

public class LWC_NotesSteps extends GovGrantsManager {

    LWC_NotesPage lwc_NotesPage;

    public LWC_NotesSteps() {
        lwc_NotesPage = new LWC_NotesPage();
    }

    @Then("^I (see|do not see) \"([^\"]*)\" table gets Expand with column \"([^\"]*)\"$")
    public void iSeeTableGetsExpandWithColumn(String usage, String tableName, String columnName) {
        lwc_NotesPage.columnNameIsDisplayedOrNot(usage, tableName, columnName);
    }

    @Then("^I (see|do not see) error massage \"([^\"]*)\"in LWC$")
    public void iSeeErrorMassageInLWC(String usage, String errorMsg) {
        lwc_NotesPage.assertIfMessageIsDisabled(usage, errorMsg);
    }


    @Then("I enter value {string} inside {string} in LWC modal")
    public void iEnterValueInsideInLWCModal(String value, String field) throws InterruptedException {
        if (field.equals("Description")) {
            By attachmentDescriptionPath = By.xpath("//lightning-input-rich-text//div[@class='slds-rich-text-editor__textarea slds-grid editor ql-container']/div/p  | //div[@class='slds-rich-text-editor__textarea slds-grid']");
            I.amPerforming().click().on(attachmentDescriptionPath);
            for (int i = 0; i <= 10; i++) {
                System.out.println("value of i :" + i);
                Thread.sleep(2000);
                try {
//                    By attachmentDescriptionPath1 = By.xpath("//div[@class='slds-rich-text-editor slds-grid slds-grid_vertical slds-nowrap']//following-sibling::div//div[@role='textbox']");
                    WebElement attachmentDescriptionPath1 = I.amPerforming().getElementReference().of(ByUsing.xpath("//lightning-input-rich-text//div[@class='slds-rich-text-editor__textarea slds-grid editor ql-container']/div/p | //div[@class='slds-rich-text-editor slds-grid slds-grid_vertical slds-nowrap']//following-sibling::div//div[@role='textbox']"));
                    Thread.sleep(5000);
                    I.amPerforming().textInput().in(attachmentDescriptionPath1, value);
                    break;
                } catch (Exception e) {
                }
            }
        } else
            I.amPerforming().textInput().in(ByUsing.xpath("//label[text()='" + field + "']//parent::div//following-sibling::div//input[@class='slds-input'] | //label[text()='" + field + "']//parent::div//following-sibling::div//descendant::div[@aria-label='Compose text']//p"), value);
    }

    @And("hover mouse x button and see {string} text")
    public void hoverMouseXButtonAndSeeText(String value) {
        I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//lightning-button//button[@title='" + value + "']"));
    }

    @Then("I see title")
    public void iSeeTitle() {
        String titleOfPage = (((DeviceBucket) InstanceRecording.getInstance(DeviceBucket.class)).getDriver()).getTitle();
        System.out.println("titleOfPage :" + titleOfPage);
    }

    @Then("I see {string} webpage is loaded")
    public void iSeeWebpageIsLoaded(String expectedTitle) {
        String actualTitle = (((DeviceBucket) InstanceRecording.getInstance(DeviceBucket.class)).getDriver()).getTitle();
        Assert.assertEquals(actualTitle, expectedTitle);
    }

    @Then("I see {string} column contains the value {string}")
    public void iSeeColumnContainsTheValue(String columnName, String value) {
        I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//td[@data-label='" + columnName + "']//*[contains(text(),'" + value + "')]"), true);
    }

    @Then("I click on {string} dropdown and Select {string} value")
    public void iClickOnDropdownAndSelectValue(String dropdown, String arg1) {
        I.amPerforming().click().on(ByUsing.xpath("//button[@data-value='Salesforce Sans']"));
        I.amPerforming().click().on(ByUsing.xpath("//button/span[@class='slds-truncate' and text()='Arial']"));

    }

    @Then("I see the {string} contains {string} have font style is {string} in Notes modul")
    public void iSeeTheContainsHaveFontStyleIsInNotesModul(String columnName, String descriptionText, String fontstyle) {
        if (fontstyle.equals("Arial") || fontstyle.equals("TimesNewRoman")) {
            I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//td[@data-label='" + columnName + "']//span[contains(text(),'" + descriptionText + "') and @style='font-family: sans-serif;'] | //td[@data-label='" + columnName + "']//span[contains(text(),'" + descriptionText + "') and @style='font-family: serif;']"), true);
        } else if (fontstyle.equals("Salesforce Sans")) {
            I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//td[@data-label='Description']//*[text()='Salesforce Sans test']"), true);
        } else {
            I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//td[@data-label='" + columnName + "']//span[contains(text(),'" + descriptionText + "') and @style='font-family: " + fontstyle + ";']"), true);
        }
    }

    @Then("I see the {string} contains {string} have font size is {string} in Notes modul")
    public void iSeeTheContainsHaveFontSizeIsInNotesModul(String columnName, String descriptionText, String fontSize) {
        if (fontSize.equals("12px")) {
            I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//td[@data-label='" + columnName + "']//*[contains(text(),'" + descriptionText + "')]"), true);
        } else {
            I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//td[@data-label='" + columnName + "']//span[contains(text(),'" + descriptionText + "') and @style='font-size: " + fontSize + ";']"), true);
        }
    }

    @Then("I see {string} contains {string} font format {string} get apply")
    public void iSeeContainsFontFormatGetApply(String columnName, String descriptionText, String fontFormat) {
        if (fontFormat.equals("Bold") || fontFormat.equals("Italic")) {
            I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//td[@data-label='" + columnName + "']//strong[contains(text(),'" + descriptionText + "')] | //td[@data-label='" + columnName + "']//em[contains(text(),'" + descriptionText + "')]"), true);
        } else if (fontFormat.equals("Underline") || fontFormat.equals("bulletlist")) {
            I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//td[@data-label='" + columnName + "']//u[contains(text(),'" + descriptionText + "')] | //td[@data-label='" + columnName + "']//li[contains(text(),'" + descriptionText + "')]"), true);
        } else if (fontFormat.equals("Indent") || fontFormat.equals("Salesforce Sans")) {
            I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//td[@data-label='" + columnName + "']//p[@class='ql-indent-1' and contains(text(),'" + descriptionText + "')] | //td[@data-label='" + columnName + "']//*[text()='" + descriptionText + "']"), true);
        } else if (fontFormat.equals("Outdent")) {
            I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//td[@data-label='" + columnName + "']//*[text()='" + descriptionText + "']"), true);
        }
    }

    @Then("I see {string} column contains {string} font format {string} align text get apply")
    public void iSeeColumnContainsFontFormatAlignTextGetApply(String columnName, String descriptionText, String fontFormat) {
        if (fontFormat.equals("left")) {
            I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//td[@data-label='" + columnName + "']//p[contains(text(),'" + descriptionText + "')]"), true);
        } else {
            I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//td[@data-label='" + columnName + "']//p[@style='text-align: " + fontFormat + ";' and contains(text(),'" + descriptionText + "')]"), true);
        }

    }

    @Then("I see title of view modal")
    public void iSeeTitleOfViewModal() {
        I.amPerforming().click().on(ByUsing.xpath("//td[@title='Left align text test']//following-sibling::td/a[@title='View']"));
        String titleOfPage = (((DeviceBucket) InstanceRecording.getInstance(DeviceBucket.class)).getDriver()).getTitle();
        System.out.println("titleOfPage :" + titleOfPage);
    }

    @Then("I see title {string} and click on {string} icon")
    public void iSeeTitleAndClickOnIcon(String title, String button) {
        I.amPerforming().click().on(ByUsing.xpath("//td[@title='" + title + "']//following-sibling::td/a[@title='" + button + "']"));
    }

    @Then("I navigate to {string} modal")
    public void iNavigateToModal(String pageTitle) {
        String titleOfPage = (((DeviceBucket) InstanceRecording.getInstance(DeviceBucket.class)).getDriver()).getTitle();
        Assert.assertEquals(titleOfPage, pageTitle);
    }

    @Then("I see massage {string} displayed in delete modal")
    public void iSeeMassageDisplayedInDeleteModal(String massage) {
        I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//*[text()='" + massage + "']"), true);
    }

    @Then("I see {string} column contains {string}")
    public void iSeeColumnContains(String columnName, String value) {
        I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//td[@data-label='" + columnName + "']//*[contains(text(),'" + value + "')]"), true);
    }

    @When("I upload image {string} in send email LWC modal")
    public void iUploadImageInSendEmailLWCModal(String attachmentName) {
        By attachmentChooseFilePath = By.xpath("//div//button[@data-format='image']");
        String defaultFilePath = System.getProperty("user.dir") + "/src/main/resources/";
        I.amPerforming().textInput().in(attachmentChooseFilePath, defaultFilePath + attachmentName);

        //button[@class='slds-button slds-button_icon-border-filled ql-image' and @data-format='image']
    }

    @Then("I see Title {string} and {string} contains Image")
    public void iSeeTitleAndContainsImage(String columnText, String columnName) {
        I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[contains(text(),'" + columnText + "')]/parent::td//following-sibling::td[@data-label='" + columnName + "']//img"), true);
    }

    @When("I click on {string} inside notes modal")
    public void iClickOnInsideNotesModal(String button) {
        I.amPerforming().click().on(ByUsing.xpath("//div//button[@data-format='" + button + "']"));
    }

    @And("I click on {string} button in LWC")
    public void iClickOnButtonInLWC(String button) {
        I.amPerforming().click().on(ByUsing.xpath("//button[@type='button' and text()='" + button + "'] | //button[@title='" + button + "']"));
    }

    @Then("I can not see {string} inside {string} in Notes lwc modal")
    public void iCanNotSeeInsideInNotesLwcModal(String field, String value) {
        boolean elementPresentOnWebPage = true;
        try {
            I.amPerforming().textInput().in(ByUsing.xpath("//label[text()='" + field + "']//parent::div//following-sibling::div//input[@class='slds-input'] | //label[text()='" + field + "']//parent::div//following-sibling::div//descendant::div[@aria-label='Compose text']//p"), value);
        } catch (NoSuchElementException e) {
            elementPresentOnWebPage = false;
        }
        Assert.assertFalse(elementPresentOnWebPage);
    }

    @And("I click on {string} button inside LWC modal")
    public void iClickOnButtonInsideLWCModal(String button) {
        if (button.equals("Center align text") || button.equals("Right align text") || button.equals("Left align text")) {
            I.amPerforming().click().on(ByUsing.xpath("//button[@title='" + button + "']"));
        } else if (button.equals("Bold")) {
            I.amPerforming().click().on(ByUsing.xpath("//button[@title='" + button + "']"));
        } else if (button.equals("8") || button.equals("9") || button.equals("10") || button.equals("11") || button.equals("12") || button.equals("14") || button.equals("16") || button.equals("18") || button.equals("20") || button.equals("22") || button.equals("24") || button.equals("26") || button.equals("28") || button.equals("36") || button.equals("48") || button.equals("72")) {
            I.amPerforming().click().on(ByUsing.xpath("//div[@class='slds-rich-text-editor slds-grid slds-grid_vertical slds-nowrap']/div/div//div[@class='slds-rich-text-editor__select slds-size_xx-small']"));
            I.amPerforming().click().on(ByUsing.xpath("//span[@class='slds-media__body']/span[@title='" + button + "']"));
        }
    }

    @And("I change font \"([^\"]*)\" inside Description on modal$")
    public void iChangeFontInsideDescriptionOnModal(String iconName) {
        By attachmentDescriptionPath = By.xpath("//lightning-input-rich-text//div[@class='slds-rich-text-editor__textarea slds-grid editor ql-container']/div/p  | //div[@class='slds-rich-text-editor__textarea slds-grid']");
        I.amPerforming().click().on(attachmentDescriptionPath);
        WebElement ele = I.amPerforming().getElementReference().of(ByUsing.xpath("//lightning-input-rich-text//div[@class='slds-rich-text-editor__textarea slds-grid editor ql-container']/div/p"));
        String selectAll = Keys.chord(Keys.CONTROL, "a");
        I.amPerforming().textInput().in(ele, selectAll);
        I.amPerforming().getElementReference().of(ByUsing.xpath("(//div[@class='slds-rich-text-editor__toolbar slds-shrink-none ql-toolbar']/div//button)[1]"));
        I.amPerforming().click().on(ByUsing.xpath("(//div[@class='slds-rich-text-editor__toolbar slds-shrink-none ql-toolbar']/div//button)[1]"));
        WebElement ele1 = I.amPerforming().getElementReference().of(ByUsing.xpath("//*[@title='" + iconName + "']"));
        I.amPerforming().click().on(ele1);
    }

    @And("I change font size {string} inside Description on modal")
    public void iChangeFontSizeInsideDescriptionOnModal(String fontSize) {
        By attachmentDescriptionPath = By.xpath("//lightning-input-rich-text//div[@class='slds-rich-text-editor__textarea slds-grid editor ql-container']/div/p  | //div[@class='slds-rich-text-editor__textarea slds-grid']");
        I.amPerforming().click().on(attachmentDescriptionPath);
        WebElement ele = I.amPerforming().getElementReference().of(ByUsing.xpath("//lightning-input-rich-text//div[@class='slds-rich-text-editor__textarea slds-grid editor ql-container']/div/p"));
        String selectAll = Keys.chord(Keys.CONTROL, "a");
        I.amPerforming().textInput().in(ele, selectAll);
        I.amPerforming().getElementReference().of(ByUsing.xpath("(//div[@class='slds-rich-text-editor__toolbar slds-shrink-none ql-toolbar']/div//button)[2]"));
        I.amPerforming().click().on(ByUsing.xpath("(//div[@class='slds-rich-text-editor__toolbar slds-shrink-none ql-toolbar']/div//button)[2]"));
        WebElement ele1 = I.amPerforming().getElementReference().of(ByUsing.xpath("//*[@title='" + fontSize + "'] | //div[@id='dropdown-element-414']//*[text()='"+fontSize+"']"));
        I.amPerforming().click().on(ele1);
    }
}
