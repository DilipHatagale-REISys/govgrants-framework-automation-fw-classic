package com.framework.automation.steps;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.CoreHandlers;
import com.automation.rei.handlers.GovGrantsHandler;
import com.framework.automation.pageobject.PageLayoutPage;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class PageLayoutSteps {
	PageLayoutPage pageLayoutPage;

	public PageLayoutSteps(Controller controller, CoreHandlers handler, GovGrantsHandler govgrants) {
		pageLayoutPage = new PageLayoutPage(controller, handler, govgrants);
	}

	@When("^I click on \"([^\"]*)\" button in right header$")
	public void clickbuttonOnRightHeader(String buttonName) {
		pageLayoutPage.getRightHeaderButton(buttonName);
	}

	@When("^I click on \"([^\"]*)\" button inside detail page$")
	public void clickbuttonInsideDetailPage(String button) {
		pageLayoutPage.clickRightHeaderButtonInsideDetailPage(button);
	}

	@When("^I select \"([^\"]*)\" from dropdown$")
	public void selectFromDropdown(String itemName) {
		pageLayoutPage.getItemFromTopRightHeaderBars(itemName).click();
	}

	@When("^I click Add button inside attachments page block$")
	public void clickAddButton() {
		pageLayoutPage.clickAddUnderAttachmentsPageBlock();
	}

	@When("^I click select dropdown inside add attachment iframe$")
	public void clickSelectDropdown() {
		pageLayoutPage.clickOnTypeDropdown();
	}

	@When("^I click search icon for owner organization and swithing to frame \"([^\"]*)\"$")
	public void searchLookUpModal(String frameId) {
		pageLayoutPage.handleLookUpSearchWithFrame(frameId);
	}

	@When("^I click search icon for owner organization$")
	public void clickLookUpSearchOwnerOrganization() {
		pageLayoutPage.clickLookupModalQuickSearch();
	}

	@When("^I click on Manage Attachments inside page block details$")
	public void clickPageBlockDetailElement() {
		pageLayoutPage.clickPageBlockDetailParticularElement();
	}

	@When("^I hovering mouse on help text icon inside \"([^\"]*)\"$")
	public void getHelpTextIconsAtPageBlock(String blockTitle) {
		pageLayoutPage.getHelpTextAtPageBlock(blockTitle);
	}

	@When("^I hovering mouse on help text icon inside page block detail \"([^\"]*)\"$")
	public void getHelpTextIconsAtPageBlockDetail(String pageBlockDetailTitle) {
		pageLayoutPage.getHelpTextAtPageBlockDetail(pageBlockDetailTitle);
	}

	@Then("^I see \"([^\"]*)\" shown as over view title in header \"([^\"]*)\"$")
	public void assertOverViewTitleWithHeader(String overViewTitle, String overViewHeader) {
		pageLayoutPage.assertOverViewTitleWithHeader(overViewTitle, overViewHeader);
	}

	@Then("^I see \"([^\"]*)\" shown as page instruction text$")
	public void assertPageInstructionText(String pageInstructionText) {
		pageLayoutPage.assertPageInstructionText(pageInstructionText);
	}

	@Then("^I see \"([^\"]*)\" shown as over view header$")
	public void assertOverViewHeaderDisplayed(String headerName) {
		pageLayoutPage.assertOverViewHeaderDisplayed(headerName);
	}

	@Then("^I see \"([^\"]*)\" button is not displayed$")
	public void assertTopRightHeaderButtonNotDisplayed(String buttonName) {
		pageLayoutPage.assertTopRightButtonNotDisplayed(buttonName);
	}

	@Then("^I see Download as PDF options disabled$")
	public void assertPDFDownloadOptionsDisabled() {
		pageLayoutPage.assertDownloadPDFDisabled();
	}

	@Then("^I see \"([^\"]*)\" options disabled$")
	public void assertTopRightParallelLinesBarOptionsDisabled(String option) {
		pageLayoutPage.assertTakeSnapshotDisabled(option);
	}

	@Then("^I see prompt For automation is displayed$")
	public void assertPromptBoxDisplayed() {
		pageLayoutPage.assertPromptDialogBoxDisplayed();
	}

	@Then("^I see \"([^\"]*)\" button is not displayed at view detail page$")
	public void assertHeaderButtonsInsideDetailsPageNotDisplayed(String buttonName) {
		pageLayoutPage.assertHeaderButtonsNotDisplayed(buttonName);
	}

	@Then("^I see \"([^\"]*)\" button is displayed at edit detail page$")
	public void assertHeaderButtonsInsideEditDetailsPageDisplayed(String buttonName) {
		pageLayoutPage.assertHeaderButtonsNotDisplayed(buttonName);
	}

	@Then("^I see \"([^\"]*)\" sub tab is not displayed at view detail page$")
	public void assertSubTabInsideDetailsPageNotDisplayed(String subTabName) {
		pageLayoutPage.assertSubTabButtonsNotDisplayed(subTabName);
	}

	@Then("^I see \"([^\"]*)\" shown at number \"([^\"]*)\" inside subtabs$")
	public void assertSequenceOfAccordianContent(String subTabName, String number) {
		pageLayoutPage.assertSortingOfSubTab(subTabName, Integer.parseInt(number));
	}

	@Then("^I see \"([^\"]*)\" shown as header instruction text$")
	public void assertHeaderInstructionText(String headerText) {
		pageLayoutPage.assertHeaderInstructionText(headerText);
	}

	@Then("^I see \"([^\"]*)\" sub tab is displayed at view detail page$")
	public void assertChangedSubTabTitleInsideDetailsPage(String subTabName) {
		pageLayoutPage.assertChangedTitleOfSubTab(subTabName);
	}

	@Then("^I see pencil icon as \"([^\"]*)\" sub tab$")
	public void assertPencilIconAsSubTab(String subTabName) {
		pageLayoutPage.assertSubTabIconDisplayed(subTabName);
	}

	@Then("^I see complete header overview tab is displayed at view detail page$")
	public void assertHeaderOverviewTabInsideDetailsPage() {
		pageLayoutPage.assertHeaderOverviewTabDisplayed();
	}

	@Then("^I see \"([^\"]*)\" page block title$")
	public void asserPageBlockTitleDisplayed(String titleName) {
		pageLayoutPage.assertChangedPageBlockTitleDisplayed(titleName);
	}

	@Then("^I see \"([^\"]*)\" page block is not displayed$")
	public void asserPageBlockIsNotDisplayed(String titleName) {
		pageLayoutPage.assertPageBlockIsNotDisplayed(titleName);
	}

	@Then("^I see \"([^\"]*)\" shown at number \"([^\"]*)\" inside page block$")
	public void assertSequenceOfPageBlock(String pageBlockName, String number) {
		pageLayoutPage.assertSortingOfPageBlock(pageBlockName, Integer.parseInt(number));
	}

	@Then("^I see \"([^\"]*)\" shown as header instruction text for page block$")
	public void assertHeaderInstructionTextAtPageBlock(String headerText) {
		pageLayoutPage.assertHeaderInstructionTextAtPageBlock(headerText);
	}

	@Then("^I see \"([^\"]*)\" page block contains \"([^\"]*)\" elements$")
	public void asserPageBlockRowElement(String titleName, String number) {
		pageLayoutPage.assertNumberOfElementsInsidePageBlock(titleName, Integer.parseInt(number));
	}

	@Then("^I see Roles And Responsibilities flex table inside page block$")
	public void assertChangedFlextableRenderingAtPageBlock() {
		pageLayoutPage.assertCorrectFlexTableDisplayedAtPageBlock();
	}

	@Then("^I see Monitoring Schedule For All Active Grants flex grid inside page block$")
	public void assertChangedFlexGridRenderingAtPageBlock() {
		pageLayoutPage.assertCorrectFlexGridDisplayedAtPageBlock();
	}

	@Then("^I see edit icon is disabled inside \"([^\"]*)\" page block$")
	public void assertActionEditIconIsDisabledForAttachmentPageBlock(String pageBlockName) {
		pageLayoutPage.assertEditActionItemDisabledForAttachment(pageBlockName);
	}

	@Then("^I see edit icon is not visible inside \"([^\"]*)\" page block$")
	public void assertEditActionItemNotVisibleForAttachmentPageBlock(String pageBlockName) {
		pageLayoutPage.assertEditActionItemNotVisibleForAttachment(pageBlockName);
	}

	@Then("^I see \"([^\"]*)\" inside Type selectbox$")
	public void assertValueInsideTypeDropdown(String dropDownValue) {
		pageLayoutPage.assertValueInsideDropdown(dropDownValue);
	}

	@Then("^I see \"([^\"]*)\" inside page block details$")
	public void assertChangedFieldInsidePageBlockDetail(String changedFieldName) {
		pageLayoutPage.assertChangedFieldInsidePageBlockDetailDisplayed(changedFieldName);
	}

	@Then("^I see \"([^\"]*)\" is not displayed inside page block detail$")
	public void assertSpecificFieldAtPageBlockDetailNotDisplayed(String changedFieldName) {
		pageLayoutPage.assertSpecificFieldInsidePageBlockDetailNotDisplayed(changedFieldName);
	}

	@Then("^I see \"([^\"]*)\" shown at number \"([^\"]*)\" inside page block detail$")
	public void assertSequenceOfPageBlockElement(String changedFieldName, String number) {
		pageLayoutPage.assertSortingOfPageBlockDetailElementSubTab(changedFieldName, Integer.parseInt(number));
	}

	@Then("^I see Program Name rendered in view mode only$")
	public void assertViewModeOfPageBlockDetailElement() {
		pageLayoutPage.assertPageBlockDetailElementDisplayedInViewMode();
	}

	@Then("^I see modal box with body \"([^\"]*)\" is displayed$")
	public void assertOwnerOrganizationModalBoxWithMessage(String headerText) {
		pageLayoutPage.assertOwnerOrganizationMOdalTitle(headerText);
	}

	@Then("^I see \"([^\"]*)\" in table header on lookup Modal$")
	public void assertFlexTableHeaderName(String headerColumnName) {
		pageLayoutPage.assertTableHeaderColumnNameForLookupModal(headerColumnName);
	}

	@Then("^I see \"([^\"]*)\" status in lookup modal table$")
	public void assertSpecificStatusCategoryNotDisplayed(String statusCategory) {
		pageLayoutPage.assertTableStatusInsideLookupModal(statusCategory);
	}

	@Then("^I see \"([^\"]*)\" message inside confirmation box is displayed on click \"([^\"]*)\"$")
	public void assertSAConfirmationBoxWithMessageText(String message, String buttonName) {
		pageLayoutPage.assertMessageOfAcceptAlertBox(message, buttonName);
	}

	@Then("^I see Edit opens in overlay window with \"([^\"]*)\" button$")
	public void assertLayoutButtonOpenInOverlayDisplayed(String buttonName) {
		pageLayoutPage.assertActionButtonOfPagrLayoutDisplayed(buttonName);
	}

	@Then("^I see \"([^\"]*)\" button is displayed$")
	public void assertTopRightHeaderButtonDisplayed(String buttonName) {
		pageLayoutPage.assertTopRightButtonDisplayed(buttonName);
	}

	@Then("^I see Edit options inside Menu Dropdown$")
	public void assertEditOptionsInsideMenuBar() {
		pageLayoutPage.assertEditButtonInsideMenuDropDown();
	}

	@Then("^I see \"([^\"]*)\" Button at position \"([^\"]*)\"$")
	public void assertSequenceOfPageLayoutEditButtonAction(String buttonName, String sequenceNumber) {
		pageLayoutPage.assertSequenceOfEditButtonAction(buttonName, Integer.parseInt(sequenceNumber));
	}

	@Then("^I see \"([^\"]*)\" shown as help text$")
	public void assertHelpText(String helpText) {
		pageLayoutPage.assertHelpTextAtPageBlock(helpText);
	}
}