package com.framework.automation.steps;

import com.framework.automation.pageobject.CollabPage;
import com.framework.automation.pageobject.PageLayoutPage;
import com.framework.automation.projectmanager.GovGrantsManager;
import com.testingblaze.actionsfactory.api.ByUsing;
import com.testingblaze.register.I;
import io.cucumber.java.en.And;
import io.cucumber.java.en.When;
import org.apache.commons.lang3.StringUtils;
import org.openqa.selenium.By;

public class CollabSteps extends GovGrantsManager{
    CollabPage collabPage;

    @When("clicked on view icon if the test is for an {string} application")
    public void clickedOnViewIconIfTheTestIsForAnApplication(String existingApplicationYesorNo) {
        if(existingApplicationYesorNo.equalsIgnoreCase("Yes"))
        {
            collabPage.clickOnViewButton("1");
        }

    }
    private final By feedSection = ByUsing.xpath("//div/textarea[@class='mention-for-post']");

    public void enterDataInFeedSection(String value)
    {
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

    // logic added parse URL and append script
    @And("^I enter this \"([^\"]*)\" script after \"([^\"]*)\"$")
    public void i_enter_this_something_script_after_something(String strArg1, String strArg2) throws Throwable {
        if(strArg2.equalsIgnoreCase("mode parameter")){
            String url =I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("mode=pdf")[0];
            String p2 ="mode=pdf";
            String p3 = url.split("mode=pdf")[1];
            String newUrl = p1+p2+strArg1+p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        }
        else if (strArg2.equalsIgnoreCase("flexTableParam"))
        {
            String url =I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("&flexTableName=AppContact")[0];
            String p2 ="&flexTableName=AppContact";
            String p3 = url.split("&flexTableName=AppContact")[1];
            String newUrl = p1+strArg1+p2+p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
            I.amPerforming().browserOperationsTo().navigateBack();
            
        } else if (strArg2.equalsIgnoreCase("pageBlockId"))
        {
            String url =I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("userType")[0];
            String p2 ="userType";
            String p3 = url.split("userType")[1];
            String newUrl = p1+strArg1+p2+p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
            I.amPerforming().browserOperationsTo().navigateBack();
        } else if (strArg2.equalsIgnoreCase("Agency Id"))
        {
            String url =I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("parentOwnerId")[0];
            String p2 ="parentOwnerId";
            String p3 = url.split("parentOwnerId")[1];
            String newUrl = p1+strArg1+p2+p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
            I.amPerforming().browserOperationsTo().navigateBack();
        }
        else if (strArg2.equalsIgnoreCase("application Id"))
        {
            String url =I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("parentid")[0];
            String p2 ="parentid";
            String p3 = url.split("parentid")[1];
            String newUrl = p1+strArg1+p2+p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
            I.amPerforming().browserOperationsTo().navigateBack();
        }
        else if (strArg2.equalsIgnoreCase("parentOwner Id"))
        {
            String url =I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("applicationid")[0];
            String p2 ="applicationid";
            String p3 = url.split("applicationid")[1];
            String newUrl = p1+strArg1+p2+p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
            I.amPerforming().browserOperationsTo().navigateBack();
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
           I.amPerforming().browserOperationsTo().navigateBack();
       }
       else if (strArg2.equalsIgnoreCase("pageBlockId"))
       {
           String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
           String p1 = url.split("&listParm=")[0];
           String p2 = "&listParm=";
           String p3 = url.split("&listParm=")[1];
           String newUrl = p1 + strArg1 + p2 + p3;
           I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
           I.amPerforming().browserOperationsTo().navigateBack();
       }
       else if (strArg2.equalsIgnoreCase("Agency Id"))
       {
           String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
           String p1 = url.split(",%22currentNegotiationRequestId")[0];
           String p2 = ",%22currentNegotiationRequestId";
           String p3 = url.split(",%22currentNegotiationRequestId")[1];
           String newUrl = p1 + strArg1 + p2 + p3;
           I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
           I.amPerforming().browserOperationsTo().navigateBack();
       }
       else if (strArg2.equalsIgnoreCase("application Id"))
       {
           String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
           String p1 = url.split(",%22parentOwnerId")[0];
           String p2 = ",%22parentOwnerId";
           String p3 = url.split(",%22parentOwnerId")[1];
           String newUrl = p1 + strArg1 + p2 + p3;
           I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
           I.amPerforming().browserOperationsTo().navigateBack();
       }
    }
}
