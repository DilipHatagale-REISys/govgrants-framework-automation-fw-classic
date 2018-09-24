package com.framework.automation.payloads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ApprovalProcess {
    private String payloadForStringValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":\\\"%s\\\"}\"}";
    private String payloadForIntValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":%s}\"}";
    private ApiUtilities apiUtilities = new ApiUtilities();

    /**
     * setup configuration for flex table action
     * 
     * @param fieldLabel
     * @param value
     * @param filterClause
     * @return
     */
    public String setApprovalDecisionActionConfig(String fieldLabel, String value, String filterClause) {
        String finalPayload = null;
        switch (fieldLabel.toUpperCase()) {
        case "HIDE ACTION":
            finalPayload = String.format(payloadForIntValue,
                    String.valueOf(SObjectAPIs.GNT__ApprovalDecisionActionConfig__c),
                    apiUtilities.getComponentCoreFieldId(
                            String.valueOf(SObjectAPIs.GNT__ApprovalDecisionActionConfig__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__HideAction__c), value);
            break;
        case "SEQUENCE":
            finalPayload = String.format(payloadForIntValue,
                    String.valueOf(SObjectAPIs.GNT__ApprovalDecisionActionConfig__c),
                    apiUtilities.getComponentCoreFieldId(
                            String.valueOf(SObjectAPIs.GNT__ApprovalDecisionActionConfig__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__Sequence__c), value);
            break;
        case "COMMENTS REQUIRED":
            finalPayload = String.format(payloadForIntValue,
                    String.valueOf(SObjectAPIs.GNT__ApprovalDecisionActionConfig__c),
                    apiUtilities.getComponentCoreFieldId(
                            String.valueOf(SObjectAPIs.GNT__ApprovalDecisionActionConfig__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__CommentsRequired__c), value);
            break;
        case "ACTION LABEL OVERRIDE":
            finalPayload = String.format(payloadForStringValue,
                    String.valueOf(SObjectAPIs.GNT__ApprovalDecisionActionConfig__c),
                    apiUtilities.getComponentCoreFieldId(
                            String.valueOf(SObjectAPIs.GNT__ApprovalDecisionActionConfig__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__ActionLabelOverride__c), value);
            break;
        case "CONFIRMATION TITLE":
            finalPayload = String.format(payloadForStringValue,
                    String.valueOf(SObjectAPIs.GNT__ApprovalDecisionActionConfig__c),
                    apiUtilities.getComponentCoreFieldId(
                            String.valueOf(SObjectAPIs.GNT__ApprovalDecisionActionConfig__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__ConfirmationTitle__c), value);
            break;
        case "CONFIRMATION MESSAGE":
            finalPayload = String.format(payloadForStringValue,
                    String.valueOf(SObjectAPIs.GNT__ApprovalDecisionActionConfig__c),
                    apiUtilities.getComponentCoreFieldId(
                            String.valueOf(SObjectAPIs.GNT__ApprovalDecisionActionConfig__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__ConfirmationMessage__c), value);
            break;
        case "FILTER CRITERIA FOR USER REASSIGN":
            finalPayload = String.format(payloadForStringValue,
                    String.valueOf(SObjectAPIs.GNT__ApprovalDecisionActionConfig__c),
                    apiUtilities.getComponentCoreFieldId(
                            String.valueOf(SObjectAPIs.GNT__ApprovalDecisionActionConfig__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__FilterCriteriaforUserReassign__c), value);
            break;
        }
        System.out.println(finalPayload);
        return finalPayload;
    }

    /**
     * setup configuration for Approval Process
     * 
     * @param fieldLabel
     * @param value
     * @param filterClause
     * @return
     */
    public String setApprovalProcessStepsCacheConfig(String fieldLabel, String value, String filterClause) {
        String finalPayload = null;
        switch (fieldLabel.toUpperCase()) {
        case "FIELD API NAME":
            finalPayload = String
                    .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__ApprovalProcessStepCache__c),
                            apiUtilities.getComponentCoreFieldId(
                                    String.valueOf(SObjectAPIs.GNT__ApprovalProcessStepCache__c), filterClause),
                            String.valueOf(SObjectAPIs.GNT__ApproverFieldAPIName__c), value);
            break;
        case "EMAIL FIELD API NAME":
            finalPayload = String
                    .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__ApprovalProcessStepCache__c),
                            apiUtilities.getComponentCoreFieldId(
                                    String.valueOf(SObjectAPIs.GNT__ApprovalProcessStepCache__c), filterClause),
                            String.valueOf(SObjectAPIs.GNT__EmailFieldAPIName__c), value);
            break;
        case "APPROVE EMAIL TEMPLATE":
            finalPayload = String
                    .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__ApprovalProcessStepCache__c),
                            apiUtilities.getComponentCoreFieldId(
                                    String.valueOf(SObjectAPIs.GNT__ApprovalProcessStepCache__c), filterClause),
                            String.valueOf(SObjectAPIs.GNT__ApproveEmailTemplate__c), value);
            break;
        case "APPROVE CONFIRMATION TITLE":
            finalPayload = String
                    .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__ApprovalProcessStepCache__c),
                            apiUtilities.getComponentCoreFieldId(
                                    String.valueOf(SObjectAPIs.GNT__ApprovalProcessStepCache__c), filterClause),
                            String.valueOf(SObjectAPIs.GNT__ApproveConfirmationTitle__c), value);
            break;
        case "APPROVE CONFIRMATION MESSAGE":
            finalPayload = String
                    .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__ApprovalProcessStepCache__c),
                            apiUtilities.getComponentCoreFieldId(
                                    String.valueOf(SObjectAPIs.GNT__ApprovalProcessStepCache__c), filterClause),
                            String.valueOf(SObjectAPIs.GNT__ApprovalConfirmationMessage__c), value);
            break;
        }
        System.out.println(finalPayload);
        return finalPayload;
    }

    /**
     * setup configuration for Approval Process
     * 
     * @param fieldLabel
     * @param value
     * @param filterClause
     * @return
     */
    public String setTaskConfig(String fieldLabel, String value, String filterClause) {
        String finalPayload = null;
        Pattern p = Pattern.compile("([0-9])");
        Matcher m = p.matcher(value);
        switch (fieldLabel.toUpperCase()) {
        case "SEND TASK ASSIGNMENT NOTIFICATION?":
            if (m.find() || (value.contains("true")) || (value.contains("false"))) {
                finalPayload = String.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__TaskConfig__c),
                        apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__TaskConfig__c),
                                filterClause),
                        String.valueOf(SObjectAPIs.GNT__SendTaskAssignmentNotification__c), value);
            } else {
                finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__TaskConfig__c),
                        apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__TaskConfig__c),
                                filterClause),
                        String.valueOf(SObjectAPIs.GNT__SendTaskAssignmentNotification__c), value);
            }
            break;
        case "COMPLETE ON VIEW?":
            if (m.find() || (value.contains("true")) || (value.contains("false"))) {
                finalPayload = String.format(
                        payloadForIntValue, String.valueOf(SObjectAPIs.GNT__TaskConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__TaskConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__CompleteOnView__c), value);
            } else {
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__TaskConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__TaskConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__CompleteOnView__c), value);
            }
            break;
        }
        System.out.println(finalPayload);
        return finalPayload;
    }
}
