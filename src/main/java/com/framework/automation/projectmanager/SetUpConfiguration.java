package com.framework.automation.projectmanager;

import com.framework.automation.payloads.*;
import com.testingblaze.register.EnvironmentFactory;

public class SetUpConfiguration {
    public static String defaultRetrieveEndPoint = EnvironmentFactory.getEnvironmentUrl()+"/services/apexrest/frameworkAPIRetrieve";


    /**
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
            case "FLEX TABLE ACTION SOBJECT":
                stringPayload = new FlexTable().setFlexTableActionConfigSobject(fieldLabel, value, filterClause);
                break;
            case "PAGE LAYOUT":
                stringPayload = new PageLayout().setPageLayOutConfig(fieldLabel, value, filterClause);
                break;
            case "PAGE LAYOUT ACTION":
                stringPayload = new PageLayout().setPageLayOutActionConfig(fieldLabel, value, filterClause);
                break;
            case "PAGE LAYOUT ACTION SOBJECT":
                stringPayload = new PageLayout().setPageLayoutActionConfigSobject(fieldLabel, value, filterClause);
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
            case "STEP PROGRESSBAR DETAIL":
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
            case "PAGE BLOCK":
                stringPayload = new PageBlock().setPageBlockConfig(fieldLabel, value, filterClause);
                break;
            case "PAGE BLOCK RULE":
                stringPayload = new PageBlock().setPageBlockRuleConfig(fieldLabel, value, filterClause);
                break;
            case "PAGE TABS CONFIG":
                stringPayload = new PageLayout().setPageTabConfig(fieldLabel, value, filterClause);
                break;
            case "PAGE BLOCK CONFIG":
                stringPayload = new PageBlock().setPageBlockDetailConfig(fieldLabel, value, filterClause);
                break;
            case "PHASE CONFIG SOBJECT":
                stringPayload = new PhaseConfig().setPhaseSobjectFieldConfig(fieldLabel, value, filterClause);
                break;
            case "CUSTOM APP CONFIG":
                stringPayload = new CustomAppConfig().setCustomAppConfig(fieldLabel, value, filterClause);
                break;
            case "CALENDER CONFIG":
                stringPayload = new CalenderConfig().setCalenderConfig(fieldLabel, value, filterClause);
                break;
            case "UID CONFIG":
                stringPayload = new PageBlock().setUid(fieldLabel, value, filterClause);
                break;
            case "AUTO SNAPSHOT":
                stringPayload = new SnapShot().setSobjectAutoSnapshotConfig(fieldLabel, value, filterClause);
                break;
            case "AUTO SNAPSHOT ON APPROVAL":
                stringPayload = new SnapShot().setApprovalDecisionAutoSnapshotConfig(fieldLabel, value, filterClause);
                break;
            case "CAPTURE FORM":
                stringPayload = new DynamicForm().setDynamicFormCaptureFormConfig(fieldLabel, value, filterClause);
                break;
            case "CAPTURE SECTION":
                stringPayload = new DynamicForm().setDynamicFormCaptureSectionConfig(fieldLabel, value, filterClause);
                break;
        }
        System.out.println("final payload is " + stringPayload);
        return stringPayload;
    }
}
