package com.framework.automation.projectmanager;

import com.framework.automation.payloads.*;

import eyethink.automation.bots.controller.CoreHandlers;

public class SetUpConfiguration {
	CoreHandlers reiDriver;
	public static String defaultRetrieveEndPoint = "https://ggptest5-dev-ed.my.salesforce.com/services/apexrest/frameworkAPIRetrieve";

	public SetUpConfiguration(CoreHandlers reiDriver) {
		this.reiDriver=reiDriver;
	}

	/**
	 * 
	 * @param componentName
	 * @param fieldLabel
	 * @param value
	 * @param filterClause
	 * @return
	 */
	public String getConfigJson(String componentName, String fieldLabel, String value, String filterClause) {
		String stringPayload = null;
		switch (componentName.toUpperCase()) {
		case "SIDE BAR HEADER":
			stringPayload = new SideBar(reiDriver).setSideBarFieldConfig(fieldLabel, value, filterClause);
			break;
		case "ACCORDIAN HEADER":
			stringPayload = new SideBar(reiDriver).setAccordianHeaderConfig(fieldLabel, value, filterClause);
			break;
		case "ACCORDIAN CONTENT":
			stringPayload = new SideBar(reiDriver).setAccordianContentFieldConfig(fieldLabel, value, filterClause);
			break;
		case "FLEX TABLE":
			stringPayload = new FlexTable(reiDriver).setFlexTableFieldConfig(fieldLabel, value, filterClause);
			break;
		case "FLEX TABLE LIST":
			stringPayload = new FlexTable(reiDriver).setFlexTableListFieldConfig(fieldLabel, value, filterClause);
			break;
		case "FLEX TABLE ACTION":
			stringPayload = new FlexTable(reiDriver).setFlexTableActionConfig(fieldLabel, value, filterClause);
			break;
		case "FLEX TABLE ACTION SOBJECT":
			stringPayload = new FlexTable(reiDriver).setFlexTableActionConfigSobject(fieldLabel, value, filterClause);
			break;
		case "PAGE LAYOUT":
			stringPayload = new PageLayout(reiDriver).setPageLayOutConfig(fieldLabel, value, filterClause);
			break;
		case "PAGE LAYOUT ACTION":
			stringPayload = new PageLayout(reiDriver).setPageLayOutActionConfig(fieldLabel, value, filterClause);
			break;
		case "APPROVAL DECISION ACTION":
			stringPayload = new ApprovalProcess(reiDriver).setApprovalDecisionActionConfig(fieldLabel, value, filterClause);
			break;
		case "APPROVAL PROCESS STEPS CACHE":
			stringPayload = new ApprovalProcess(reiDriver).setApprovalProcessStepsCacheConfig(fieldLabel, value, filterClause);
			break;
		case "PROGRAM":
			stringPayload = new Program(reiDriver).setProgramFieldConfig(fieldLabel, value, filterClause);
			break;
		case "FLEX GRID":
			stringPayload = new FlexGrid(reiDriver).setFlexGridParentFlexTableConfig(fieldLabel, value, filterClause);
			break;
		case "TASK CONFIG":
			stringPayload = new ApprovalProcess(reiDriver).setTaskConfig(fieldLabel, value, filterClause);
			break;
		case "FLEX GRID ACTION":
			stringPayload = new FlexGrid(reiDriver).setFlexGridParentFlexTableActionConfig(fieldLabel, value, filterClause);
			break;
		case "STEP PROGRESSBAR HEADER CONFIG":
			stringPayload = new StepProgressBar(reiDriver).setStepProgressBarHeaderConfig(fieldLabel, value, filterClause);
			break;
		case "PHASE CONFIG":
			stringPayload = new PhaseConfig(reiDriver).setPhaseFieldConfig(fieldLabel, value, filterClause);
			break;
		case "STEP PROGRESSBAR DETAIL":
			stringPayload = new StepProgressBar(reiDriver).setStepProgressBarDetailConfig(fieldLabel, value, filterClause);
			break;
		case "CHARTS CONFIG":
			stringPayload = new Charts(reiDriver).setChartsFieldConfig(fieldLabel, value, filterClause);
			break;
		case "CHARTS DETAILS CONFIG":
			stringPayload = new Charts(reiDriver).setChartDetailsConfig(fieldLabel, value, filterClause);
			break;
		case "FORMS":
			stringPayload = new Forms(reiDriver).setFormsFieldConfig(fieldLabel, value, filterClause);
			break;
		case "PAGE BLOCK":
			stringPayload = new PageBlock(reiDriver).setPageBlockConfig(fieldLabel, value, filterClause);
			break;
		case "PAGE BLOCK RULE":
			stringPayload = new PageBlock(reiDriver).setPageBlockRuleConfig(fieldLabel, value, filterClause);
			break;
		case "PAGE TABS CONFIG":
			stringPayload = new PageLayout(reiDriver).setPageTabConfig(fieldLabel, value, filterClause);
			break;
		case "PAGE BLOCK CONFIG":
			stringPayload = new PageBlock(reiDriver).setPageBlockDetailConfig(fieldLabel, value, filterClause);
			break;
		case "PHASE CONFIG SOBJECT":
			stringPayload = new PhaseConfig(reiDriver).setPhaseSobjectFieldConfig(fieldLabel, value, filterClause);
			break;
		case "CUSTOM APP CONFIG":
			stringPayload = new CustomAppConfig(reiDriver).setCustomAppConfig(fieldLabel, value, filterClause);
			break;
		case "CALENDER CONFIG":
			stringPayload = new CalenderConfig(reiDriver).setCalenderConfig(fieldLabel, value, filterClause);
			break;
		case "UID CONFIG":
			stringPayload = new PageBlock(reiDriver).setUid(fieldLabel, value, filterClause);
			break;
		}
		System.out.println("final payload is " + stringPayload);
		return stringPayload;
	}
}
