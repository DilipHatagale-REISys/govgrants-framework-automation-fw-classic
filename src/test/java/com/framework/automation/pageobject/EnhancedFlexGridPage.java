package com.framework.automation.pageobject;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.testng.Assert;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.GovGrantsUtil;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.projectmanager.GovGrantsManager;

public class EnhancedFlexGridPage extends GovGrantsManager {
	/******* "Variables and Locators" *****************/
	GovGrantsUtil govGrantsUtil;
	private final By advanceFilterButtonForEnhancedGrid, reachOutToEnhancedGridCollapse, menuIconForEnhancedGrid;

	/**
	 * Constructor to handle dependency injection and framework library
	 */
	public EnhancedFlexGridPage(Controller controller, Handlers reiDriver) {
		super(controller, reiDriver);
		advanceFilterButtonForEnhancedGrid = By
				.xpath("//div[@id='flexGridEnhanced1']//span[contains(text(),'Advance Filter')]");
		reachOutToEnhancedGridCollapse = By.id("ProgramBudgetCategoryflexTable");
		menuIconForEnhancedGrid = By
				.xpath("//div[@id='flexGridEnhanced1']//a[@title='Menu']//span[contains(@class,'fa fa-bars')]");
	}

	/******* "Key Methods with complete functionality - public" *****************/

	/**
	 * assert if advance filter is disabled from planning enhanced flex grid
	 */
	public void assertDisableAdvanceFilterFromEnhancedGrid() {
		Assert.assertTrue(isAdvanceFilterDisabledFromEnhancedGrid());
	}

	/**
	 * assert if menu icon is disabled from planning enhanced flex grid
	 */
	public void assertDisableMenuIconFromEnhancedGrid() {
		Assert.assertTrue(isMenuIconDisabledForEnhancedFlexGrid());
	}

	/**
	 * @param advancefilter
	 * @return
	 */
	public WebElement getAdvanceFilterItemFromEnhancedGrid() {
		reiDriver.JavaScript().scrollpageToSpecificElement(reachOutToEnhancedGridCollapse);
		return reiDriver.findMyElement().getElement(advanceFilterButtonForEnhancedGrid);
	}

	/**
	 * @param menuicon
	 * @return
	 */

	public WebElement getMenuIconFromEnhancedGrid() {
		reiDriver.JavaScript().scrollpageToSpecificElement(reachOutToEnhancedGridCollapse);
		return reiDriver.findMyElement().getElement(menuIconForEnhancedGrid);
	}

	/**
	 * assert correct title name of enhanced flex grid is displayed
	 * 
	 * @param titleName
	 */
	public void assertEnhancedFlexGridTitleDisplayed(String titleName) {
		Assert.assertTrue(isTitleDisplayedForEnhancedGrid(titleName));
	}

	/*********
	 * "Local Methods with complete functionality - private"
	 *****************/

	/**
	 * Boolean status of advance filter option from program enhanced flex grid
	 * 
	 * @param status
	 */
	private Boolean isAdvanceFilterDisabledFromEnhancedGrid() {
		boolean flag = false;
		try {
			if (getAdvanceFilterItemFromEnhancedGrid().isDisplayed()) {
				flag = false;
			}
		} catch (org.openqa.selenium.NoSuchElementException e) {
			flag = true;
		}
		return flag;
	}

	/**
	 * Boolean status of menu icon from program enhanced flex grid
	 * 
	 * @param status
	 */
	private Boolean isMenuIconDisabledForEnhancedFlexGrid() {
		boolean flag = false;
		try {
			if (getMenuIconFromEnhancedGrid().isDisplayed()) {
				flag = false;
			}
		} catch (org.openqa.selenium.NoSuchElementException e) {
			flag = true;
		}
		return flag;
	}

	/**
	 * validate if tile is displayed
	 * 
	 * @param titleName
	 * @return
	 */
	private boolean isTitleDisplayedForEnhancedGrid(String titleName) {
		try {
			if (getElementFromEnhancedGridHeader(titleName).isDisplayed()) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			return false;
		}
	}

	/**
	 * select item from enhanced flex grid header
	 * 
	 * @param dropdownoption
	 * @return
	 */
	public WebElement getElementFromEnhancedGridHeader(String titleName) {
		reiDriver.JavaScript().scrollpageToSpecificElement(reachOutToEnhancedGridCollapse);
		return reiDriver.WaitFor().FluentWaitForClick(
				By.xpath("//div[@id='flexGridEnhanced1']//span[contains(text(),'" + titleName + "')]"));
	}
}
