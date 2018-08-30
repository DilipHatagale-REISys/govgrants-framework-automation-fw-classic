package com.framework.automation.payloads;

public class PageLayout {
    private String payloadForStringValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":\\\"%s\\\"}\"}";
    private String payloadForIntValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":%s}\"}";

    /**
     * Set pay load for page layout main page
     * @param fieldLabel
     * @param value
     * @param filterClause
     * @return
     */
    public String setPageLayOutConfig(String fieldLabel, String value, String filterClause) {
        String finalPayload = null;
        switch (fieldLabel.toUpperCase()) {
        case "HEADER":
            finalPayload = String.format(
                    payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageLayoutConfig__c), new ApiUtilities()
                            .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PageLayoutConfig__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__Title__c), value);
            break;
        case "PAGE INSTRUCTION TEXT":
            finalPayload = String.format(
                    payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageLayoutConfig__c), new ApiUtilities()
                            .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PageLayoutConfig__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__HeaderDescription__c), value);
            break;
        case "CREATE HEADER OVERRIDE":
            finalPayload = String.format(
                    payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageLayoutConfig__c), new ApiUtilities()
                            .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PageLayoutConfig__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__HeaderOverride__c), value);
            break;
        }
        System.out.println(finalPayload);
        return finalPayload;
    }
    
    /**
     * setup configuration for page lay out action
     * 
     * @param fieldLabel
     * @param value
     * @param filterClause
     * @return
     */
    public String setPageLayOutActionConfig(String fieldLabel, String value, String filterClause) {
        String finalPayload = null;
        switch (fieldLabel.toUpperCase()) {
        case "HIDE DECISION EXPRESSION":
            finalPayload = String.format(
                    payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageLayoutActionConfig__c), new ApiUtilities()
                            .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PageLayoutActionConfig__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__HideDecisionExpression__c), value);
        }
        System.out.println(finalPayload);
        return finalPayload;
    }
}
