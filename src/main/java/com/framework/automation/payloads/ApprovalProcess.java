package com.framework.automation.payloads;

public class ApprovalProcess {
    private String payloadForStringValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":\\\"%s\\\"}\"}";
    private String payloadForIntValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":%s}\"}";

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
                    new ApiUtilities().getComponentCoreFieldId(
                            String.valueOf(SObjectAPIs.GNT__ApprovalDecisionActionConfig__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__HideAction__c), value);
            break;
        case "SEQUENCE":
            finalPayload = String.format(payloadForIntValue,
                    String.valueOf(SObjectAPIs.GNT__ApprovalDecisionActionConfig__c),
                    new ApiUtilities().getComponentCoreFieldId(
                            String.valueOf(SObjectAPIs.GNT__ApprovalDecisionActionConfig__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__Sequence__c), value);
            break;
        case "COMMENTS REQUIRED":
            finalPayload = String.format(payloadForIntValue,
                    String.valueOf(SObjectAPIs.GNT__ApprovalDecisionActionConfig__c),
                    new ApiUtilities().getComponentCoreFieldId(
                            String.valueOf(SObjectAPIs.GNT__ApprovalDecisionActionConfig__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__CommentsRequired__c), value);
            break;
        case "ACTION LABEL OVERRIDE":
            finalPayload = String.format(payloadForStringValue,
                    String.valueOf(SObjectAPIs.GNT__ApprovalDecisionActionConfig__c),
                    new ApiUtilities().getComponentCoreFieldId(
                            String.valueOf(SObjectAPIs.GNT__ApprovalDecisionActionConfig__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__ActionLabelOverride__c), value);
            break;
        case "CONFIRMATION TITLE":
            finalPayload = String.format(payloadForStringValue,
                    String.valueOf(SObjectAPIs.GNT__ApprovalDecisionActionConfig__c),
                    new ApiUtilities().getComponentCoreFieldId(
                            String.valueOf(SObjectAPIs.GNT__ApprovalDecisionActionConfig__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__ConfirmationTitle__c), value);
            break;
        case "CONFIRMATION MESSAGE":
            finalPayload = String.format(payloadForStringValue,
                    String.valueOf(SObjectAPIs.GNT__ApprovalDecisionActionConfig__c),
                    new ApiUtilities().getComponentCoreFieldId(
                            String.valueOf(SObjectAPIs.GNT__ApprovalDecisionActionConfig__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__ConfirmationMessage__c), value);
            break;
        case "FILTER CRITERIA FOR USER REASSIGN":
            finalPayload = String.format(payloadForStringValue,
                    String.valueOf(SObjectAPIs.GNT__ApprovalDecisionActionConfig__c),
                    new ApiUtilities().getComponentCoreFieldId(
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
            finalPayload = String.format(payloadForStringValue,
                    String.valueOf(SObjectAPIs.GNT__ApprovalProcessStepCache__c),
                    new ApiUtilities().getComponentCoreFieldId(
                            String.valueOf(SObjectAPIs.GNT__ApprovalProcessStepCache__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__ApproverFieldAPIName__c), value);
            break;
        }
        System.out.println(finalPayload);
        return finalPayload;
    }
}
