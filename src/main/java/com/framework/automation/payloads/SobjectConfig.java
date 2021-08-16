package com.framework.automation.payloads;

public class SobjectConfig {
    private String payloadForStringValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":\\\"%s\\\"}\"}";
    private String payloadForIntValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":%s}\"}";
    private ApiUtilities apiUtilities;

    public SobjectConfig() {
        apiUtilities = new ApiUtilities();
    }

    /**
     * Set pay load for Auto snapshot
     *
     * @param fieldLabel
     * @param value
     * @param filterClause
     * @return
     */
    public String setSobjectAutoSnapshotConfig(String fieldLabel, String value, String filterClause) {
        String finalPayload = null;
        switch (fieldLabel.toUpperCase()) {
            case "IS ACTIVE":
                finalPayload = String
                        .format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__SObjectAutoSnapshot__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__SObjectAutoSnapshot__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__isActive__c), value);
                break;
            case "EXPRESSION JSON":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__SObjectAutoSnapshot__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__SObjectAutoSnapshot__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__ExpressionJSON__c), value);
                break;
            case "SNAPSHOT FILE NAME":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__SObjectAutoSnapshot__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__SObjectAutoSnapshot__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__SnapShotFileName__c), value);
                break;
        }
        System.out.println(finalPayload);
        return finalPayload;
    }

    /**
     * Set pay load for Auto snapshot on Approval
     *
     * @param fieldLabel
     * @param value
     * @param filterClause
     * @return
     */
    public String setApprovalDecisionAutoSnapshotConfig(String fieldLabel, String value, String filterClause) {
        String finalPayload = null;
        switch (fieldLabel.toUpperCase()) {
            case "CAPTURE SNAPSHOT ON APPROVAL?":
                finalPayload = String
                        .format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__SobjectConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__SobjectConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__CaptureSnapshotonApproval__c), value);
                break;
            case "APPROVAL SNAPSHOT FILE NAME":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__SobjectConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__SobjectConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__ApprovalSnapshotFileName__c), value);
                break;
        }
        System.out.println(finalPayload);
        return finalPayload;
    }

    /**
     * Set pay load for Notes and Attachment action config
     *
     * @param fieldLabel
     * @param value
     * @param filterClause
     * @return
     */
    public String setSobjectNotesAttachmentActionConfig(String fieldLabel, String value, String filterClause) {
        String finalPayload = null;
        switch (fieldLabel.toUpperCase()) {
            case "ATTACHMENT ADD HIDE EXPRESSION JSON":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__SobjectConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__SobjectConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__AttachmentAddHideExpressionJSON__c), value);
                break;
            case "NOTE ADD HIDE EXPRESSION JSON":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__SobjectConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__SobjectConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__NoteAddHideExpressionJSON__c), value);
                break;
            case "HISTORY OBJECTS":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__SobjectConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__SobjectConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__HistoryObjects__c), value);
                break;
        }
        System.out.println(finalPayload);
        return finalPayload;
    }

}