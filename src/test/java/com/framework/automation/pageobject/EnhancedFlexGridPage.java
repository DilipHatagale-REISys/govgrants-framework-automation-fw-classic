package com.framework.automation.pageobject;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.testng.Assert;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.projectmanager.GovGrantsManager;

public class EnhancedFlexGridPage extends GovGrantsManager{
	/******* "Variables and Locators" *****************/
	
	private final By advanceFilterButtonForEnhancedGrid,reachOutToEnhancedGridCollapse;

    /**
     * Constructor to handle dependency injection and framework library
     */
	public EnhancedFlexGridPage(Controller controller, Handlers reiDriver) {
		super(controller, reiDriver);
		advanceFilterButtonForEnhancedGrid = By.xpath("//div[@id='flexGridEnhanced1']//button/span[contains(text(),'Advance Filter')]");
		reachOutToEnhancedGridCollapse = By.id("ProgramBudgetCategoryflexTable");
	}
	
	/******* "Key Methods with complete functionality - public" *****************/
	
	/**
	 * assert if advance filter is disabled from planning enhanced flex grid
	 */
	public void assertDisableAdvanceFilterFromEnhancedGrid() {
		Assert.assertTrue(isAdvanceFilterDisabledFromEnhancedGrid());
	}
	
	/**
     * @param advancefilter
     * @return
     */
    public WebElement getAdvanceFilterItemFromEnhancedGrid() {
    	reiDriver.JavaScript().scrollpageToSpecificElement(reachOutToEnhancedGridCollapse);
        return reiDriver.findMyElement().getElement(advanceFilterButtonForEnhancedGrid);
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
}
