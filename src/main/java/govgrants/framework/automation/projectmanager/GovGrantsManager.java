package govgrants.framework.automation.projectmanager;

import java.io.IOException;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;

/**
 * for Rei Systems
 * 
 * @author Handles generic/common methods and WebElements of the project.
 * 
 */
public class GovGrantsManager extends ProjectWebServices {
    public Handlers reiDriver;
    public Controller controller;
    public String standardPassword = "Automation@12345";
    public String defaultComment = "Automation testing";
    public final By navigationLogo;

    /**
     * Super Constructor
     * 
     * @param controller
     * @param reiDriver
     */
    public GovGrantsManager(Controller controller, Handlers reiDriver) {
        this.controller = controller;
        this.reiDriver = reiDriver;
        navigationLogo = By.xpath("//div[@id='holdon-overlay']/div/div/div/img[@class='nav-logo']");
    }

    /******* "Key Methods with complete functionality - Public" *****************/

    /**
     * navigate to a url
     * 
     * @param urlName
     * @throws IOException
     */
    public void navigateToURL(String urlName) throws IOException {
        reiDriver.get().navigateToUrl(new UsersAndURL().navigateToAnyUrl(urlName));
    }

    /**
     * click on navigation bar item inside app. e.g; planning,announcements etc
     * 
     * @param menuItem
     */
    public void clickPhasesNaveBar(String tabName) {
        try {
            reiDriver.WaitFor().WaitForElementToBePresent(
                    By.xpath("//div/ul[@class='nav navbar-nav']/li/a[@title='" + tabName + "']")).click();
        } catch (Exception e) {
            reiDriver.JavaScript()
                    .clickByJS(By.xpath("//div/ul[@class='nav navbar-nav']/li/a[@title='" + tabName + "']"));
        }
    }

    /**
     * click on navigation bar item on main admin homepage.
     * 
     * @param tabName
     */
    public void clickAdminNavBar(String tabName) {
        try {
            reiDriver.WaitFor().WaitForElementToBePresent(By.xpath("//nav/ul/li/a[@title='" + tabName + "' +' Tab']"))
                    .click();
        } catch (Exception e) {
            reiDriver.JavaScript().clickByJS(By.xpath("//nav/ul/li/a[@title='" + tabName + "' +' Tab']"));
        }
    }

    /**
     * wait for the EGMS header in Gov Grants
     */
    public void waitForEgmsHeader() {
        reiDriver.WaitFor().WaitForElementToBePresent(
                By.xpath("//div[@class='navbar-header']/span[text()='Enterprise Grants Management System']"));
    }

    /**
     * waits for navigation logo to get disappeared
     */
    public void waitForNavigationLogo() {
        if (reiDriver.is().elementDispalyed(navigationLogo)) {
            reiDriver.WaitFor().WaitForElementToDisapear(navigationLogo);
        }
    }

    /**
     * Access category in left side pane. Also can collapse and Expand side bar item
     * 
     * @param sideBarCategory
     * @return
     */
    public WebElement getSideBarAccordianHeader(String sideBarCategory) {
        return reiDriver.WaitFor().WaitForElementToBePresent(
                By.xpath("//div[@id='sidebar-wrapper']//div/p/span[contains(text(),'" + sideBarCategory + "')]"));
    }

    /**
     * access on side bar sub header
     * 
     * @param sideBarCategory
     * @param accordianSubHeader
     * @return
     */
    public WebElement getSideBarAccordianSubHeader(String sideBarCategory, String accordianSubHeader) {
        return reiDriver.WaitFor().WaitForElementToBePresent(
                By.xpath("//div[@id='sidebar-wrapper']//div/p/span[contains(text(),'" + sideBarCategory
                        + "')]/../../following-sibling::div//div//b[text()='" + accordianSubHeader + "']"));
    }

    /**
     * access side bar sub header detail
     * 
     * @param sideBarCategory
     * @param accordianSubHeaderDetail
     * @return
     */
    public WebElement getSideBarAccordianSubHeaderDetail(String sideBarCategory, String accordianSubHeaderDetail) {
        return reiDriver.WaitFor()
                .WaitForElementToBePresent(By.xpath("//div[@id='sidebar-wrapper']//div/p/span[contains(text(),'"
                        + sideBarCategory + "')]/../../following-sibling::div//div/ul/li/a[text()='"
                        + accordianSubHeaderDetail + "']"));
    }

    /**
     * click on top right drop down. As a grantee etc.
     */
    public void clickTopRightDropDown() {
        reiDriver.WaitFor().WaitForElementToBePresent(By.xpath("//div/ul/li[@class='dropdown appDropdown']")).click();
    }

    /**
     * click on logout menu.
     */
    public void clickLoginDropDown() {
        reiDriver.WaitFor().WaitForElementToBePresent(By.xpath("//div/ul/li[@class='dropdown userDropdown']")).click();
    }

    /**
     * get the top right drop down items
     * 
     * @param dropDownItem
     * @return
     */
    public WebElement getTopRightDropDown(String dropDownItem) {
        return reiDriver.WaitFor().WaitForElementToBePresent(
                By.xpath("//div/ul/li[@class='dropdown appDropdown']/ul/li/a[@title='" + dropDownItem + "']"));
    }

    /**
     * access items in logout menu items
     * 
     * @param loginMenuItem
     * @return
     */
    public WebElement getLoginDropDown(String loginMenuItem) {
        return reiDriver.WaitFor().WaitForElementToBePresent(
                By.xpath("//div/ul/li[@class='dropdown userDropdown']/ul/li/a[@title='" + loginMenuItem + "']"));
    }

    /**
     * click on left panel header
     */
    public void clickLeftPanelHeader() {
        reiDriver.WaitFor().WaitForElementToBePresent(
                By.xpath("//div[contains(@class,'panel-title')]//div[@id='dropdownListView']")).click();
    }

    /**
     * select item from panel header - left
     * 
     * @param leftPanelItem
     */
    public void getLeftPanelHeader(String leftPanelItem) {
        reiDriver.WaitFor().WaitForElementToBePresent(By.xpath(
                "//div[@class='panel-heading']//div[contains(@class,'panel-title')]//div[@id='dropdownListView']/ul/li/a[@title='"
                        + leftPanelItem + "']"));
    }

    /**
     * click on right header bars
     */
    public void clickRightHeaderBars() {
        reiDriver.WaitFor().WaitForElementToBePresent(
                By.xpath("//div[@class='panel-heading']//div[contains(@class,'header-bars')]")).click();
    }

    /**
     * get any button on right header
     * 
     * @param buttonName
     * @return
     */
    public WebElement getRightHeaderButton(String buttonName) {
        return reiDriver.WaitFor().WaitForElementToBePresent(
                By.xpath("//div[@class='panel-heading']//div[contains(@class,'header-buttons')]//button[@title='"
                        + buttonName + "']"));

    }

    /******* "Local Methods with Limited functionality - Private" **********/

    /**
     * get any specific column value in pending tasks (Assigned to me)
     */
    private List<WebElement> getToPendingTasksAssignedToMeDesiredColumn(String mycolumnValue) {
        return reiDriver.findMyElement()
                .getElements(By.xpath("//div/table/tbody/tr/td/span/span/span[text()='" + mycolumnValue + "']"));
    }

}
