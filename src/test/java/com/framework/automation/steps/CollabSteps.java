package com.framework.automation.steps;

import com.automation.rei.handlers.govgrants;
import com.framework.automation.pageobject.CollabPage;
import com.framework.automation.pageobject.PageLayoutPage;
import com.framework.automation.projectmanager.GovGrantsManager;
import com.testingblaze.actionsfactory.api.ByUsing;
import com.testingblaze.register.I;
import io.appium.java_client.events.api.general.AlertEventListener;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.apache.commons.lang3.StringUtils;
import org.junit.Assert;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebElement;

import java.awt.*;
import java.awt.datatransfer.Clipboard;
import java.awt.datatransfer.StringSelection;
import java.awt.event.KeyEvent;
import java.io.File;

public class CollabSteps extends GovGrantsManager {
    CollabPage collabPage;

    @When("clicked on view icon if the test is for an {string} application")
    public void clickedOnViewIconIfTheTestIsForAnApplication(String existingApplicationYesorNo) {
        if (existingApplicationYesorNo.equalsIgnoreCase("Yes")) {
            collabPage.clickOnViewButton("1");
        }

    }

    private final By feedSection = ByUsing.xpath("//div/textarea[@class='mention-for-post']");

    public void enterDataInFeedSection(String value) {
        I.amPerforming().click().on(feedSection);
        I.amPerforming().textInput().in(feedSection, value);
        I.amPerforming().waitFor().makeThreadSleep(3000);
    }

    @When("enters {string} in my feed section")
    public void entersInMyFeedSection(String arg0) {
        enterDataInFeedSection(arg0);
    }

    @And("I click on {string} on the {string}")
    public void iClickOnOnThe(String buttonName, String arg1) {
        collabPage.ClickOnInsideMyFeed(buttonName);
    }

    @And("selects {string} from To dropdown")
    public void selectsFromToDropdown(String value) {
        // if (!StringUtils.isEmpty(value))
        //{
        collabPage.selectValueFromDropDown(value);
        // }
    }

    @And("^I navigate to back$")
    public void i_navigate_to_back() throws Throwable {
        I.amPerforming().browserOperationsTo().navigateBack();
    }

    // logic added parse URL and append script
    @And("^I enter this \"([^\"]*)\" script after \"([^\"]*)\"$")
    public void i_enter_this_something_script_after_something(String strArg1, String strArg2) throws Throwable {
        if (strArg2.equalsIgnoreCase("mode parameter")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("mode=pdf")[0];
            String p2 = "mode=pdf";
            String p3 = url.split("mode=pdf")[1];
            String newUrl = p1 + p2 + strArg1 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (strArg2.equalsIgnoreCase("flexTableParam")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("&flexTableName=AppContact")[0];
            String p2 = "&flexTableName=AppContact";
            String p3 = url.split("&flexTableName=AppContact")[1];
            String newUrl = p1 + strArg1 + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (strArg2.equalsIgnoreCase("pageBlockId")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("userType")[0];
            String p2 = "userType";
            String p3 = url.split("userType")[1];
            String newUrl = p1 + strArg1 + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (strArg2.equalsIgnoreCase("Agency Id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("parentOwnerId")[0];
            String p2 = "parentOwnerId";
            String p3 = url.split("parentOwnerId")[1];
            String newUrl = p1 + strArg1 + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (strArg2.equalsIgnoreCase("application Id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("parentid")[0];
            String p2 = "parentid";
            String p3 = url.split("parentid")[1];
            String newUrl = p1 + strArg1 + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (strArg2.equalsIgnoreCase("parentOwner Id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("applicationid")[0];
            String p2 = "applicationid";
            String p3 = url.split("applicationid")[1];
            String newUrl = p1 + strArg1 + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (strArg2.equalsIgnoreCase("User Id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("siteVisitRecordsIdsSet")[0];
            String p2 = "siteVisitRecordsIdsSet";
            String p3 = url.split("siteVisitRecordsIdsSet")[1];
            String newUrl = p1 + strArg1 + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (strArg2.equalsIgnoreCase("Program Id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("announcementId")[0];
            String p2 = "announcementId";
            String p3 = url.split("announcementId")[1];
            String newUrl = p1 + strArg1 + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (strArg2.equalsIgnoreCase("parentRecordIdOfFlexTable")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("RecordId%22%")[0];
            String p2 = "RecordId%22%";
            String p3 = url.split("RecordId%22%")[1];
            String newUrl = p1 + strArg1 + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (strArg2.equalsIgnoreCase("Record Id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("&flexTableName=AppContact")[0];
            String p2 = "&flexTableName=AppContact";
            String p3 = url.split("&flexTableName=AppContact")[1];
            String newUrl = p1 + strArg1 + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (strArg2.equalsIgnoreCase("announcement id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("firstBudId")[0];
            String p2 = "firstBudId";
            String p3 = url.split("firstBudId")[1];
            String newUrl = p1 + strArg1 + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (strArg2.equalsIgnoreCase("flexTableName")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("&flexGridType")[0];
            String p2 = "&flexGridType";
            String p3 = url.split("&flexGridType")[1];
            String newUrl = p1 + strArg1 + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        }
    }

    @And("^I enter this \"([^\"]*)\" script after \"([^\"]*)\" for SPI User$")
    public void i_enter_this_something_script_after_something_for_spi_user(String strArg1, String strArg2) throws Throwable {
        if (strArg2.equalsIgnoreCase("flexTableParam")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("&listParm=")[0];
            String p2 = "&listParm=";
            String p3 = url.split("&listParm=")[1];
            String newUrl = p1 + strArg1 + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        }
        if (strArg2.equalsIgnoreCase("mode parameter")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("mode=pdf")[0];
            String p2 = "mode=pdf";
            String p3 = url.split("mode=pdf")[1];
            String newUrl = p1 + p2 + strArg1 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (strArg2.equalsIgnoreCase("pageBlockId")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("&listParm=")[0];
            String p2 = "&listParm=";
            String p3 = url.split("&listParm=")[1];
            String newUrl = p1 + strArg1 + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (strArg2.equalsIgnoreCase("Agency Id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split(",%22currentNegotiationRequestId")[0];
            String p2 = ",%22currentNegotiationRequestId";
            String p3 = url.split(",%22currentNegotiationRequestId")[1];
            String newUrl = p1 + strArg1 + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (strArg2.equalsIgnoreCase("application Id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split(",%22parentOwnerId")[0];
            String p2 = ",%22parentOwnerId";
            String p3 = url.split(",%22parentOwnerId")[1];
            String newUrl = p1 + strArg1 + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (strArg2.equalsIgnoreCase("parentOwner Id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split(",%22agencyId")[0];
            String p2 = ",%22agencyId";
            String p3 = url.split(",%22agencyId")[1];
            String newUrl = p1 + strArg1 + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (strArg2.equalsIgnoreCase("User Id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split(",%22siteVisitRecordsIdsSet")[0];
            String p2 = ",%22siteVisitRecordsIdsSet";
            String p3 = url.split(",%22siteVisitRecordsIdsSet")[1];
            String newUrl = p1 + strArg1 + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (strArg2.equalsIgnoreCase("Program Id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split(",%22bpStartDate")[0];
            String p2 = ",%22bpStartDate";
            String p3 = url.split(",%22bpStartDate")[1];
            String newUrl = p1 + strArg1 + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (strArg2.equalsIgnoreCase("parentRecordIdOfFlexTable")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split(",%22parentid%22")[0];
            String p2 = ",%22parentid%22";
            String p3 = url.split(",%22parentid%22")[1];
            String newUrl = p1 + strArg1 + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (strArg2.equalsIgnoreCase("Record Id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split(",%22parentRecordIdOfFlexTable")[0];
            String p2 = ",%22parentRecordIdOfFlexTable";
            String p3 = url.split(",%22parentRecordIdOfFlexTable")[1];
            String newUrl = p1 + strArg1 + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (strArg2.equalsIgnoreCase("announcement id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split(",%22programId")[0];
            String p2 = ",%22programId";
            String p3 = url.split(",%22programId")[1];
            String newUrl = p1 + strArg1 + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (strArg2.equalsIgnoreCase("flexTableName")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("&flexGridType")[0];
            String p2 = "&flexGridType";
            String p3 = url.split("&flexGridType")[1];
            String newUrl = p1 + strArg1 + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        }
    }

    @And("I enter this {string} script after {string} and navigate to new URL")
    public void iEnterThisScriptAfterAndNavigateToNewURL(String script, String parameter) {
        if (parameter.equalsIgnoreCase("form id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("&recordId")[0];
            String p2 = "&recordId";
            String p3 = url.split("&recordId")[1];
            String newUrl = p1 + script + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (parameter.equals("Record id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String newUrl = url + script;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (parameter.equals("parentowner id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("OrganizationId")[0];
            String p2 = "OrganizationId";
            String p3 = url.split("OrganizationId")[1];
            String newUrl = p1 + script + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (parameter.equals("Organization id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("22recordId")[0];
            String p2 = "22recordId";
            String p3 = url.split("22recordId")[1];
            String newUrl = p1 + script + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (parameter.equals("record id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("parentId")[0];
            String p2 = "parentId";
            String p3 = url.split("parentId")[1];
            String newUrl = p1 + script + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (parameter.equals("Application Id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("&viewTemplateName")[0];
            String p2 = "&viewTemplateName";
            String p3 = url.split("&viewTemplateName")[1];
            String newUrl = p1 + script + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (parameter.equals("parent id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("template%")[0];
            String p2 = "template%";
            String p3 = url.split("template%")[1];
            String newUrl = p1 + script + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (parameter.equals("template")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("Program")[0];
            String p2 = "Program";
            String p3 = url.split("Program")[1];
            String newUrl = p1 + script + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (parameter.equals("Package id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("&listParm")[0];
            String p2 = "&listParm";
            String p3 = url.split("&listParm")[1];
            String newUrl = p1 + script + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (parameter.equals("url id value")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String newUrl = url + script;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (parameter.equals("templateName")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("Application%20form")[0];
            String p2 = "Application%20form";
            String p3 = url.split("Application%20form")[1];
            String newUrl = p1 + script + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        }

    }

    @And("I click on {string} button inside Dynamic form")
    public void iClickOnButtonInsideDynamicForm(String button) {
        I.amPerforming().click().on(ByUsing.xpath("//input[@title='" + button + "']"));
    }

    @And("I enter this {string} script after {string} and navigate to new URL in All Forms")
    public void iEnterThisScriptAfterAndNavigateToNewURLInAllForms(String script, String parameter) {
        if (parameter.equals("form id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("&id=a2")[0];
            String p2 = "&id=a2";
            String p3 = url.split("&id=a2")[1];
            String newUrl = p1 + script + p2 + p3;
        }
    }

    @When("I click on {string} inside My Feed")
    public void iClickOnInsideMyFeed(String buttonName) {
        I.amPerforming().click().on(ByUsing.xpath("//ul[@class='collabItemChoices']/li/a[text()='" + buttonName + "']"));
    }


    @And("I enter value {string} inside {string} in My Feed")
    public void iEnterValueInsideInMyFeed(String textInput, String tabName) {
        if (tabName.equals("Link URL")) {
            I.amPerforming().getElementReference().of(ByUsing.xpath("//label[text()='Link URL']/following-sibling::input[@type='text']")).clear();
            I.amPerforming().textInput().in(ByUsing.xpath("//label[text()='Link URL']/following-sibling::input[@type='text']"), textInput);
        } else if (tabName.equals("Link Name")) {
            I.amPerforming().textInput().in(ByUsing.xpath("//label[text()=' Link Name ']/following-sibling::input[@type='text']"), textInput);
        } else if (tabName.equals("Post")) {
            I.amPerforming().textInput().in(ByUsing.xpath("//div/div/textarea[@id='TextPublisherEditableArea']"), textInput);
        }
    }

    @And("I select {string} from dropdown in My Feed and Share Post")
    public void iSelectFromDropdownInMyFeedAndSharePost(String dropDownValue) {
        if (dropDownValue.equals("My Followers")) {
//            I.amPerforming().click().on(ByUsing.xpath("//div[@id='CollabPostBottomBar']//a/span[text()='My Followers']"));
            I.amPerforming().click().on(ByUsing.xpath("//input[@value='Share' and @id='PostToFeedButton']"));
        } else if (dropDownValue.equals("A Group")) {
            I.amPerforming().click().on(ByUsing.xpath("//div[@id='CollabPostBottomBar']//a/span[text()='My Followers']"));
            I.amPerforming().click().on(ByUsing.xpath("//a[@title='Post this file to a group']"));
            I.amPerforming().click().on(ByUsing.xpath("//input[@value='Share' and @id='PostToFeedButton']"));
        }
    }

    @And("I click on {string} button inside collab tab")
    public void iClickOnButtonInsideCollabTab(String button) {
        I.amPerforming().click().on(ByUsing.xpath("//a[@title='" + button + "']"));
    }
}