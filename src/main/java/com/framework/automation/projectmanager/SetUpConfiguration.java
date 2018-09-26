package com.framework.automation.projectmanager;

import com.framework.automation.payloads.ApprovalProcess;
import com.framework.automation.payloads.Charts;
import com.framework.automation.payloads.FlexGrid;
import com.framework.automation.payloads.FlexTable;
import com.framework.automation.payloads.Forms;
import com.framework.automation.payloads.PageLayout;
import com.framework.automation.payloads.PhaseConfig;
import com.framework.automation.payloads.Program;

import com.framework.automation.payloads.SideBar;
import com.framework.automation.payloads.StepProgressBar;

public class SetUpConfiguration {
    public static String defaultRetrieveEndPoint = "https://ggptest5-dev-ed.my.salesforce.com/services/apexrest/frameworkAPIRetrieve";

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
            stringPayload = new SideBar().setSideBarFieldConfig(fieldLabel, value, filterClause);
            break;
        case "ACCORDIAN HEADER":
            stringPayload = new SideBar().setAccordianHeaderConfig(fieldLabel, value, filterClause);
            break;
        case "ACCORDIAN CONTENT":
            stringPayload = new SideBar().setAccordianContentFieldConfig(fieldLabel, value, filterClause);
            break;
        case "FLEX TABLE":
            stringPayload = new FlexTable().setFlexTableFieldConfig(fieldLabel, value, filterClause);
            break;
        case "FLEX TABLE LIST":
            stringPayload = new FlexTable().setFlexTableListFieldConfig(fieldLabel, value, filterClause);
            break;
        case "FLEX TABLE ACTION":
            stringPayload = new FlexTable().setFlexTableActionConfig(fieldLabel, value, filterClause);
            break;
        case "PAGE LAYOUT":
            stringPayload = new PageLayout().setPageLayOutConfig(fieldLabel, value, filterClause);
            break;
        case "PAGE LAYOUT ACTION":
            stringPayload = new PageLayout().setPageLayOutActionConfig(fieldLabel, value, filterClause);
            break;
        case "APPROVAL DECISION ACTION":
            stringPayload = new ApprovalProcess().setApprovalDecisionActionConfig(fieldLabel, value, filterClause);
            break;
        case "APPROVAL PROCESS STEPS CACHE":
            stringPayload = new ApprovalProcess().setApprovalProcessStepsCacheConfig(fieldLabel, value, filterClause);
            break;
        case "PROGRAM":
            stringPayload = new Program().setProgramFieldConfig(fieldLabel, value, filterClause);
            break;
        case "FLEX GRID":
            stringPayload = new FlexGrid().setFlexGridParentFlexTableConfig(fieldLabel, value, filterClause);
            break;
        case "TASK CONFIG":
            stringPayload = new ApprovalProcess().setTaskConfig(fieldLabel, value, filterClause);
            break;
        case "FLEX GRID ACTION":
            stringPayload = new FlexGrid().setFlexGridParentFlexTableActionConfig(fieldLabel, value, filterClause);
            break;
        case "STEP PROGRESSBAR HEADER CONFIG":
        	stringPayload = new StepProgressBar().setStepProgressBarHeaderConfig(fieldLabel, value, filterClause);
            break;
        case "PHASE CONFIG":
            stringPayload = new PhaseConfig().setPhaseFieldConfig(fieldLabel, value, filterClause);
            break;
        case "STEP PROGRESSBAR DETAIL CONFIG":
			stringPayload = new StepProgressBar().setStepProgressBarDetailConfig(fieldLabel, value, filterClause);
			break;
        case "CHARTS CONFIG":
            stringPayload = new Charts().setChartsFieldConfig(fieldLabel, value, filterClause);
            break;
        case "CHARTS DETAILS CONFIG":
            stringPayload = new Charts().setChartDetailsConfig(fieldLabel, value, filterClause);
            break;
        case "FORMS":
            stringPayload = new Forms().setFormsFieldConfig(fieldLabel, value, filterClause);
            break;
        }
        System.out.println("final payload is " + stringPayload);
        return stringPayload;
    }
}
